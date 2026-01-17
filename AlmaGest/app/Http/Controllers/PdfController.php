<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade\Pdf;

use App\Models\DeliveryTerm;
use App\Models\Transport;
use App\Models\PaymentTerm;
use App\Models\BankEntity;
use App\Models\Discount;
use App\Models\User;
use App\Models\Product;
use App\Models\Company;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Auth;

class PdfController extends Controller
{
    public function company(Request $request)
    {
        $data = $request->all();

        // Persona de contacto
        $contact = User::where('company_id', $request->id)
                        ->where('iscontact', 1)
                        ->first();

        $contactName = $contact
            ? $contact->firstname . ' ' . $contact->secondname
            : '';

        $deliveryTerm = DeliveryTerm::find($request->del_term_id);
        $transport = Transport::find($request->transport_id);
        $paymentTerm = PaymentTerm::find($request->payment_term_id);
        $bankEntity = BankEntity::find($request->bank_entity_id);
        $discount = Discount::find($request->discount_id);

        $pdf = Pdf::loadView('pdf.company', compact(
            'data',
            'contactName',
            'deliveryTerm',
            'transport',
            'paymentTerm',
            'bankEntity',
            'discount'
        ));

        return $pdf->download('ficha_empresa.pdf');
    }

    public function catalog(Request $request)
    {
        $companyId = $request->id;

        $products = Product::with(['article.family'])
            ->where('company_id', $companyId)
            ->orderBy('family_id')
            ->get();

        $companyName = $request->name;

        $pdf = Pdf::loadView('pdf.catalog', compact('products', 'companyName'));

        return $pdf->download('catalogo_productos.pdf');
    }

    protected function generateCompanyPdf($companyId)
    {
        $company = Company::findOrFail($companyId);

        $contact = User::where('company_id', $companyId)
                        ->where('iscontact', 1)
                        ->first();
        $contactName = $contact ? $contact->firstname . ' ' . $contact->secondname : '';

        $deliveryTerm = DeliveryTerm::find($company->del_term_id);
        $transport = Transport::find($company->transport_id);
        $paymentTerm = PaymentTerm::find($company->payment_term_id);
        $bankEntity = BankEntity::find($company->bank_entity_id);
        $discount = Discount::find($company->discount_id);

        return Pdf::loadView('pdf.company_email', compact(
            'company',
            'contactName',
            'deliveryTerm',
            'transport',
            'paymentTerm',
            'bankEntity',
            'discount'
        ));
    }

    protected function generateCatalogPdf($companyId)
    {
        $company = Company::findOrFail($companyId);

        $products = Product::with(['article.family'])
                    ->where('company_id', $companyId)
                    ->orderBy('family_id')
                    ->get();

        return Pdf::loadView('pdf.catalog', [
            'products' => $products,
            'companyName' => $company->name
        ]);
    }

    public function sendEmail()
    {
        $company = auth()->user()->company;
        if (!$company) {
            return redirect()->back()->with('error', 'No se ha encontrado la empresa del usuario.');
        }

        $contacts = User::where('iscontact', 1)->get();
        if ($contacts->isEmpty()) {
            return redirect()->back()->with('error', 'No se ha encontrado ningún contacto.');
        }

        $pdfCompany = $this->generateCompanyPdf($company->id)->output();
        $pdfCatalog = $this->generateCatalogPdf($company->id)->output();

        foreach ($contacts as $contact) {
            \Mail::send([], [], function($message) use ($contact, $pdfCompany, $pdfCatalog) {
                $message->to($contact->email)
                        ->subject('Ficha de empresa y catálogo')
                        ->attachData($pdfCompany, 'ficha_empresa.pdf')
                        ->attachData($pdfCatalog, 'catalogo_productos.pdf');
            });
        }

        return redirect()->route('home')->with('success', 'PDFs enviados correctamente a todos los contactos.');
    }

}

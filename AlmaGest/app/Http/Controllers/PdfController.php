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

class PdfController extends Controller
{
    public function company(Request $request)
    {
            $data = $request->all(); // datos del formulario

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
        $companyId = $request->id; // del formulario

        $products = Product::with(['article.family'])
            ->where('company_id', $companyId)
            ->orderBy('family_id')
            ->get();

        $companyName = $request->name;

        $pdf = Pdf::loadView('pdf.catalog', compact('products', 'companyName'));

        return $pdf->download('catalogo_productos.pdf');
    }
}

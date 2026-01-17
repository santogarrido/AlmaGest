<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\DeliveryTerm;
use App\Models\Transport;
use App\Models\PaymentTerm;
use App\Models\BankEntity;
use App\Models\Discount;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
      //
    }


    /**
     * Get all the users that have isContact in true
     */

    public function getIsContactUsers(){
        $users = \App\Models\User::where('iscontact', 1)->get();

        return view('formEmail', compact('users'));
    }

    /**
     * Get the company of the user
     */

    public function getCompany(){

        $user = Auth::user();
        $company = $user->company;
        $userIsContact = \App\Models\User::where('iscontact', 1)
        ->where('company_id', $user->company->id)->first();

        $contactName = $userIsContact
        ? $userIsContact->firstname . ' ' . $userIsContact->secondname
        : '';

        return view('datesCompany', [
            'company' => $company,
            'deliveryTerms' => DeliveryTerm::all(),
            'transports' => Transport::all(),
            'paymentTerms' => PaymentTerm::all(),
            'bankEntities' => BankEntity::all(),
            'discounts' => Discount::all(),
            'userIsContact' => $contactName
        ]);

    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {

    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}

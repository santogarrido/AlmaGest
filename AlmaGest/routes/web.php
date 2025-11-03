<?php

use App\Http\Controllers\BankEntityController;
use App\Http\Controllers\DeliveryTermController;
use App\Http\Controllers\InvoiceController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\PaymentTermController;
use App\Http\Controllers\TransportController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::resource('users', UserController::class);
Route::resource('orders', OrderController::class);
Route::resource('invoices', InvoiceController::class);
Route::resource('payment_terms', PaymentTermController::class);
Route::resource('delivery_terms', DeliveryTermController::class);
Route::resource('transports', TransportController::class);
Route::resource('bank_entities', BankEntityController::class);

Auth::routes();
Auth::routes(['verify' => true]);

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->middleware(['auth', 'verified'])->name('home');

<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\BankEntityController;
use App\Http\Controllers\DeliveryTermController;
use App\Http\Controllers\InvoiceController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\PaymentTermController;
use App\Http\Controllers\TransportController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Auth;
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

Route::get('/admin', function(){
    if(Auth::check() && Auth::user()->type === 'A'){
        return app(AdminController::class)->index();
    }
    return redirect('/')->with('error', 'Acceso no autorizado');
})->middleware('auth');


Route::get('/admin', [AdminController::class, 'index'])
    ->middleware('auth')
    ->name('admin.index');

Route::post('/admin/user/{id}/activate', [AdminController::class, 'activate'])
    ->middleware('auth')
    ->name('admin.user.activate');

Route::post('/admin/user/{id}/deactivate', [AdminController::class, 'deactivate'])
    ->middleware('auth')
    ->name('admin.user.deactivate');

Route::post('/admin/user/{id}/delete', [AdminController::class, 'delete'])
    ->middleware('auth')
    ->name('admin.user.delete');

Route::get('/admin/user/{id}/edit', [AdminController::class, 'edit'])
    ->middleware('auth')
    ->name('admin.user.edit');

Route::post('/admin/user/{id}/update', [AdminController::class, 'update'])
    ->middleware('auth')
    ->name('admin.user.update');

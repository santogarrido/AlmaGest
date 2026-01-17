<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\BankEntityController;
use App\Http\Controllers\DeliveryTermController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\InvoiceController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\PaymentTermController;
use App\Http\Controllers\TransportController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ArticleController;
use App\Http\Controllers\PdfController;
use Barryvdh\DomPDF\Facade\Pdf;

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

//Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->middleware(['auth', 'verified'])->name('home');

Route::get('/admin', function(){
    if(Auth::check() && Auth::user()->type === 'A'){
        return app(AdminController::class)->index();
    }
    return redirect('/')->with('error', 'Acceso no autorizado');
})->middleware('auth');

Route::get('/home', function(){
    if(Auth::check() && Auth::user()->type === 'A'){
        return app(AdminController::class)->index();
    } else{
        return app(HomeController::class)->index();
    }
})->middleware(['auth', 'verified'])
->name('home');


Route::get('/admin', [AdminController::class, 'index'])
    ->middleware('auth')
    ->name('admin.index');

Route::post('/admin/user/{id}/activate', [AdminController::class, 'activate'])
    ->middleware('auth')
    ->name('admin.user.activate');

Route::post('/admin/user/{id}/desactivate', [AdminController::class, 'desactivate'])
    ->middleware('auth')
    ->name('admin.user.desactivate');

Route::post('/admin/user/{id}/delete', [AdminController::class, 'delete'])
    ->middleware('auth')
    ->name('admin.user.delete');

Route::get('/admin/user/{id}/edit', [AdminController::class, 'edit'])
    ->middleware('auth')
    ->name('admin.user.edit');

Route::post('/admin/user/{id}/update', [AdminController::class, 'update'])
    ->middleware('auth')
    ->name('admin.user.update');



Route::get('/admin/articles', [ArticleController::class, 'index'])
    ->middleware('auth')
    ->name('admin.articles.index');

// Crear artículo
Route::get('/admin/articles/create', [ArticleController::class, 'create'])
    ->middleware('auth')
    ->name('admin.articles.create');

Route::post('/admin/articles/store', [ArticleController::class, 'store'])
    ->middleware('auth')
    ->name('admin.articles.store');

// Editar artículo
Route::get('/admin/articles/{id}/edit', [ArticleController::class, 'edit'])
    ->middleware('auth')
    ->name('admin.articles.edit');

Route::post('/admin/articles/{id}/update', [ArticleController::class, 'update'])
    ->middleware('auth')
    ->name('admin.articles.update');

// Eliminar artículo
Route::post('/admin/articles/{id}/delete', [ArticleController::class, 'delete'])
    ->middleware('auth')
    ->name('admin.articles.delete');


Route::get('/datesCompany', [UserController::class, 'getCompany'])
    ->middleware('auth')
    ->name('datesCompany');

Route::get('/formEmail', [UserController::class, 'getIsContactUsers'])
    ->middleware('auth')
    ->name('formEmail');




//Pdf

Route::post('/pdf/company', [PdfController::class, 'company'])->name('pdf.company');
Route::post('/pdf/catalog', [PdfController::class, 'catalog'])->name('pdf.catalog');

Route::post('/send-email', [PdfController::class, 'sendEmail'])->name('email.send');






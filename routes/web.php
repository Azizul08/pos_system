<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\PostController;

use App\Http\Controllers\ProductController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});


Route::resource('posts', PostController::class);

Route::get('/all-data-excel', [PostController::class, 'AlldataExcel']);
Route::get('/all-data-csv', [PostController::class, 'AlldataCsv']);

Route::post('/custom-data-excel', [PostController::class, 'CustomdataExcel']);


Route::get('/products', [ProductController::class, 'ProductIndex']);
Route::get('/details', [ProductController::class, 'ProductDetails']);
Route::get('/details/{id}', [ProductController::class, 'ProductDetailsSingle']);

// Route::get('/quantity-edit/{id}', [ProductController::class, 'QuantityEdit']);
Route::post('/quantity-edit/{id}', [ProductController::class, 'postQuantityEdit']);

Route::post('/discount-edit/{id}', [ProductController::class, 'postDiscountEdit']);

Route::post('/amountpay-edit/{id}', [ProductController::class, 'postAmountPayEdit']);

Route::post('/invoice/{id}', [ProductController::class, 'postInvoice']);

Route::get('/generate-pdf', [ProductController::class, 'generatePDF']);

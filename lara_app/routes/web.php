<?php

use Illuminate\Support\Facades\Route;

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
    return redirect('login');
});
Route::get('home', function () {
    return redirect('prepaidbalance');
});

Auth::routes();

Route::get('logout', [App\Http\Controllers\Auth\LoginController::class, 'logout']);
Route::get('/prepaidbalance', [App\Http\Controllers\HomeController::class, 'index'])->name('prepaidbalance');
Route::get('/successorder/{param}', [App\Http\Controllers\HomeController::class, 'successOrder'])->name('successOrder');
Route::get('/successTopup/{param}', [App\Http\Controllers\HomeController::class, 'successTopup'])->name('successTopup');
Route::get('/productpage', [App\Http\Controllers\HomeController::class, 'productPage'])->name('productpage');
Route::get('/history', [App\Http\Controllers\HomeController::class, 'history'])->name('history');
Route::post('/prepaidbalance', [App\Http\Controllers\HomeController::class, 'prepaidBalanceForm'])->name('post.prepaidbalance');
Route::post('/productpage', [App\Http\Controllers\HomeController::class, 'productPageForm'])->name('post.productpage');
Route::post('/successorder', [App\Http\Controllers\HomeController::class, 'successOrder'])->name('post.successorder');
Route::post('/payorder', [App\Http\Controllers\HomeController::class, 'payOrder'])->name('post.payorder');
Route::post('/paynow', [App\Http\Controllers\HomeController::class, 'payNow'])->name('post.paynow');
Route::get('/countorder', [App\Http\Controllers\HomeController::class, 'countorder'])->name('countorder');
Route::get('/cekStatus/{param}', [App\Http\Controllers\HomeController::class, 'cekStatus'])->name('cekStatus');
Route::get('/searchHistory', [App\Http\Controllers\HomeController::class, 'searchHistory'])->name('searchHistory');

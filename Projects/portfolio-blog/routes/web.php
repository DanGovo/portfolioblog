<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PortfolioController;
use App\Http\Controllers\AdminController;

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

// Route::get('/', function () {
//     return view('home');
// });

Route::get('/', [PortfolioController::class, 'index'])->name('home');

// Admin Routes
Route::get('/admin/dashboard', [AdminController::class, 'index'])->name('dashboard');

Auth::routes();




























Route::resource('categories', App\Http\Controllers\CategoryController::class);
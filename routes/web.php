<?php

use App\Http\Controllers\CompaniesController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\RegisterController;
use Illuminate\Support\Facades\Auth;
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
/* Companies */
Route::get('/companies', [CompaniesController::class, 'index'])->name('list_companies')->middleware('authenticator');
Route::get('/companies/create', [CompaniesController::class, 'create'])->name('form_create_company')->middleware('authenticator');
Route::post('/companies/create', [CompaniesController::class, 'store'])->middleware('authenticator');
Route::get('/companies/{companyId}/companiesDetails', [CompaniesController::class, 'companiesDetails'])->middleware('authenticator');

/* Login */
Route::get('/login', [LoginController::class, 'index'])->name('login');
Route::post('/login', [LoginController::class, 'toEnter']);

/* Register */
Route::get('/register', [RegisterController::class, 'index']);
Route::post('/register', [RegisterController::class, 'store']);

/* Logout */
Route::get('/logout', function () {
    Auth::logout();
    return redirect('/login');
});
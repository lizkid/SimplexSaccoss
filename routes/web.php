<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\AuthController;
use App\Http\Controllers\Dashboard\DashboardController;
use App\Http\Controllers\Contributions\ContributionsController;
use App\Http\Controllers\Loan\LoanController;
use App\Http\Controllers\Payments\PaymentsController;
use App\Http\Controllers\Members\MembersController;

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

Route::get('/', [AuthController::class, 'index'])->name('login');

Route::post('/login', [AuthController::class, 'login']);


Route::group(['middleware'=>'auth'], function (){

    Route::get('/logout', [AuthController::class, 'logout']);

    Route::get('/dashboard', [DashboardController::class, 'index']);

    Route::group(['prefix'=>'contributions'], function (){
        Route::get('/', [ContributionsController::class, 'index']);
        Route::get('/create', [ContributionsController::class, 'create']);
        Route::get('/social-contributions', [ContributionsController::class, 'socialContributions']);
    });

    Route::group(['prefix'=>'loan'], function (){
       Route::get('/', [LoanController::class, 'index']);
    });

    Route::group(['prefix'=>'payments'], function (){
        Route::get('/', [PaymentsController::class, 'index']);
        Route::get('/paid-transactions', [PaymentsController::class, 'paidTransactions']);
    });

    Route::group(['prefix'=>'members'], function (){
        Route::get('/', [MembersController::class, 'index']);
        Route::get('/create', [MembersController::class, 'create']);
        Route::post('/save', [MembersController::class, 'save']);
        Route::get('/view/{member_id}', [MembersController::class, 'view']);
        Route::get('/terminated-members', [MembersController::class, 'terminatedMembers']);
    });

});

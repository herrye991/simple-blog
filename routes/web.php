<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\GuestController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\ArticlesController;

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

// Guest
Route::get('/', [GuestController::class, 'index'])->name('guest.articles.index');
Route::get('/articles/{id}', [GuestController::class, 'show'])->name('guest.articles.show');

// Grouping Admin
Route::group(['prefix' => 'admin'], function ()
{
    // Auth
    Route::get('login', [AuthController::class, 'login'])->name('login');
    Route::post('login', [AuthController::class, 'loginPost'])->name('login.post');
    Route::get('logout', [AuthController::class, 'logout'])->name('logout');

    Route::group(['middleware' => 'auth'], function ()
    {
        // Auth Required
        Route::get('/', [AdminController::class, 'index'])->name('admin.index');
        Route::get('/articles', [ArticlesController::class, 'index'])->name('admin.articles.index');
    });
});


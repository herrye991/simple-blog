<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\GuestController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\ArticlesController;
use App\Http\Controllers\SettingsController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['prefix' => 'guest'], function ()
{
    Route::get('get_articles', [GuestController::class, 'get_articles'])->name('guest.get_articles');
});

Route::group(['prefix' => 'admin'], function ()
{
    Route::get('get_chart', [AdminController::class, 'get_chart'])->name('admin.get_chart');
    Route::get('get_all_articles', [ArticlesController::class, 'get_all_articles'])->name('admin.get_all_articles');
    Route::post('post_articles', [ArticlesController::class, 'post_articles'])->name('admin.post_articles');
    Route::delete('delete_articles', [ArticlesController::class, 'delete_articles'])->name('admin.delete_articles');
    Route::post('profile', [SettingsController::class, 'profile'])->name('admin.profile');
    Route::post('setting', [SettingsController::class, 'setting'])->name('admin.setting');
    Route::post('config', [SettingsController::class, 'config'])->name('admin.config');
});


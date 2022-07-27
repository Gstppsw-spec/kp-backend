<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/**
 * route "/register"
 * @method "POST"
 */
Route::post('/register', App\Http\Controllers\Api\RegisterController::class)->name('register');

/**
 * route "/login"
 * @method "POST"
 */
Route::post('/login', App\Http\Controllers\Api\LoginController::class)->name('login');

/**
 * route "/user"
 * @method "GET"
 */
Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

/**
 * route "/logout"
 * @method "POST"
 */
Route::post('/logout', App\Http\Controllers\Api\LogoutController::class)->name('logout');

// Route::get('data_kematian', 'DataKematianController@index');
// Route::get('data_kematian/{id}', 'DataKematianController@show');
// Route::post('data_kematian', 'DataKematianController@store');
// Route::put('data_kematian/{id}', 'DataKematianController@update');
// Route::delete('data_kematian/{id}', 'DataKematianController@delete');
Route::resource('data_kematian', App\Http\Controllers\DataKematianController::class);

Route::resource('dana_bantuans', App\Http\Controllers\DanaBantuanController::class);

// Route::get('/data_kematian', 'DataKematianController@all')->name('data_kematian.all');
// Route::post('/data_kematian', 'DataKematianController@store')->name('data_kematian.store');
// Route::get('/data_kematian/{id}', 'DataKematianController@show')->name('data_kematian.show');
// Route::put('/data_kematian/{id}', 'DataKematianController@update')->name('data_kematian.update');
// Route::delete('/data_kematian/{id}', 'DataKematianController@destroy')->name('data_kematian.destroy');
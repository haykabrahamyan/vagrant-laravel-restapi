<?php

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
use Illuminate\Http\Request;
Route::get('/', function () {
    return view('welcome');
});
Route::post('/user/register', 'RegisterController@register');

Route::post('/auth/token', 'Api\DefaultController@authenticate');
Route::post('/auth/refresh', 'Api\DefaultController@refreshToken');

Route::group([
    'prefix' => "v1"
], function () {

    Route::get('/lists', 'GenreController@index');
    Route::post('/genre/vote', 'GenreController@vote')->middleware('auth:api');
    Route::post('/genre/result', 'GenreController@result')->middleware('auth:api');

});
<?php

use Illuminate\Http\Request;

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
Route::post('plogin', 'API\UserController@login');
Route::post('pregister', 'API\UserController@register');
// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });
Route::group(['middleware' => 'auth:api'], function(){
    Route::post('keluhan/all', 'API\ComplainController@laporanall');
    Route::post('keluhan/new', 'API\ComplainController@newcomp');
    Route::post('details', 'API\UserController@details');
    Route::post('keluhan/baru', '\Kordy\Ticketit\Controllers\TicketsController@jsonstore');
    Route::get('showkeluhan/{id}', '\Kordy\Ticketit\Controllers\TicketsController@jsonshow');
    });
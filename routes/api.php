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
    Route::get('keluhan/all', 'API\ComplainController@laporanall');
    Route::get('keluhan/sort/status/{name}', 'API\ComplainController@laporanstatus'); //otw
    Route::post('keluhan/sort/{id}', 'API\ComplainController@laporanbycat'); //otw
    Route::post('details', 'API\UserController@details');
    Route::get('/amialive', function () {
        return ['data' => 'yes you are']; //check if token valid
    });
    Route::post('keluhan/baru', '\Kordy\Ticketit\Controllers\TicketsController@jsonstore');
    Route::get('keluhan/delete/{id}', '\Kordy\Ticketit\Controllers\TicketsController@jsondelete');
    Route::get('showkeluhan/{id}', '\Kordy\Ticketit\Controllers\TicketsController@jsonshow');
    });
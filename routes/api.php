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




Route::get('status', 'API\ComplainController@getStatus');
Route::get('monthly', 'API\ComplainController@getMonthly');
Route::group(['middleware' => 'auth:api'], function(){
    Route::get('kategori', 'API\ComplainController@getCategory');
    //keluhan section
    Route::post('keluhan', '\Kordy\Ticketit\Controllers\TicketsController@jsonstore');
    Route::get('keluhan', 'API\ComplainController@getComplain');
    Route::get('mykeluhan', 'API\ComplainController@getMine');
    Route::get('keluhan/{id}', 'API\ComplainController@showComplain');
    Route::get('keluhan/process/{id}', '\Kordy\Ticketit\Controllers\TicketsController@jsonProses');
    Route::get('keluhan/complete/{id}', '\Kordy\Ticketit\Controllers\TicketsController@jsonComplete');
    Route::get('keluhan/reopen/{id}', '\Kordy\Ticketit\Controllers\TicketsController@jsonReopen');
    //comment section
    Route::post('comments', '\Kordy\Ticketit\Controllers\CommentsController@jsonstore');
    // Route::put('keluhan/{id}', 'API\ComplainController@updateComplain');
    Route::delete('keluhan/{id}', '\Kordy\Ticketit\Controllers\TicketsController@jsondelete');
    // Route::get('keluhan/all', 'API\ComplainController@laporanall');
    Route::get('myaccount', 'API\UserController@details');
    Route::post('updateToken', 'API\UserController@updateToken');
    Route::put('myaccount', 'API\UserController@editUser');
    // Route::get('/amialive', function () {
    //     return ['data' => 'yes you are']; //check if token valid
    // });
    

    });
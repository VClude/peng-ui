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
Route::get('/api/keluhan/all', 'AllpiController@laporanall');
Route::get('/ssologin', 'LoginssoController@index');
Route::get('/api/ssologin', 'LoginssoController@login');
Route::get('/ssologout', 'LoginssoController@logout');
Route::get('image', 'ImageController@index');
Route::post('save', 'ImageController@save');
Route::get('/', function () {
	if(Auth::guest()){
    	return view('welcome');
	}else{
		return redirect('/home');
	}
});




Auth::routes();

Route::get('/home', function(){
	return redirect(action('\Kordy\Ticketit\Controllers\TicketsController@index'));
});

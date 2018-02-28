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

Route::get('/', 'TestController@welcome');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/products/{id}','ProductController@show');



//middleware para auth, admin.

Route::middleware(['auth','admin'])->prefix('admin')->namespace('Admin')->group(function(){
  Route::get('/products','ProductController@index'); //listar
  Route::get('/products/create','ProductController@create'); //formualrio
  Route::post('/products','ProductController@store'); // registrar

  Route::get('/products/{id}/edit','ProductController@edit'); //formualrio de edicion
  Route::post('/products/{id}/edit','ProductController@update'); // actualizar
  Route::post('/products/{id}/delete','ProductController@destroy'); //form elimnar

  Route::get('/products/{id}/images','ImageController@index');//listado
  Route::post('/products/{id}/images','ImageController@store');//register
  Route::delete('/products/{id}/images','ImageController@destroy');//register

  //destacar una Imagen
  Route::get('/products/{id}/images/select/{image}','ImageController@select');



});

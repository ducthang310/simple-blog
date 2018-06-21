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

Auth::routes();

Route::get('/', 'PostController@index')->name('home');
Route::get('/home', 'PostController@index')->name('home');

Route::group(['prefix' => '/posts'], function () {
    Route::get('/pending', 'PostController@pending')->name('posts.pending');
    Route::get('/json/{id}', 'PostController@json')->name('posts.json');
//    Route::match(['post'], '/json/{id}', 'PostController@json')->name('posts.json');
});
Route::resources([
    'posts' => 'PostController'
]);

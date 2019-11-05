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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/assign-admin-ability', 'RoleAbilityController@allowAdminEverything');
Route::get('/assign-user-manager-ability', 'RoleAbilityController@allowUserManagerAbility');
Route::get('/assign-shop-manager-ability', 'RoleAbilityController@allowShopManagerAbility');


Route::group(['middleware'=>'can:manage-users'], function(){
    Route::get('customers', 'CustomerController@index');
    Route::get('customers/getdata', 'CustomerController@getCustomerData');//->name('customers/getdata');
});

Route::group(['middleware'=>'can:manage-shops', 'prefix'=>'products'], function(){
    Route::get('/', 'ProductController@index');
    Route::get('getdata', 'ProductController@getProductData');
});

Route::group(['middleware'=>'can:manage-shops', 'prefix'=>'orders'], function(){
    Route::get('/', 'OrderController@index');
    Route::get('/getdata', 'OrderController@getOrderData');
});


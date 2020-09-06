<?php

use Illuminate\Support\Facades\Route;

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

//frontend

Route::get('/','PageController@mainfun')->name('mainpage');

Route::get('brand','PageController@brandfun')->name('brandpage');

Route::get('itemdetail/{id}','PageController@itemdetailfun')->name('itemdetailpage');

Route::get('loginpage','PageController@loginfun')->name('loginpage');

Route::get('promotion','PageController@promotionfun')->name('promotionpage');

Route::get('registerpage','PageController@registerfun')->name('registerpage');

Route::get('shoppingcart','PageController@shoppingcartfun')->name('shoppingcartpage');

Route::get('subcategory/{id}','PageController@subcategoryfun')->name('subcategory');

Route::get('category','PageController@categoryfun')->name('category');



//backend



Route::resource('orders','OrderController');

Route::middleware('role:Admin')->group(function(){

	Route::get('dashboard','BackendController@dashboardfun')->name('dashboardpage');

	Route::resource('items','ItemController');


	Route::resource('brands','BrandController');

    Route::resource('categories','CategoryController');

    Route::resource('subcategories','SubcategoryController');

     

});


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

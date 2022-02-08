<?php

use Illuminate\Support\Facades\Route;

Route::prefix('admin')->group(function () {
    

    Route::resource('/product-category', 'BackEnd\CategoryController');

    Route::resource('/product', 'BackEnd\ProductController');

    Route::resource('/article', 'BackEnd\ArticleController');
    
    Route::resource('/order', 'BackEnd\OderController');

    Route::resource('/user', 'BackEnd\UserController');

    Route::resource('/contact', 'BackEnd\ContactController');

    Route::get('/home', 'Backend\HomeController@index') ->name('home');

    Route::get('/', 'Backend\Login@login') ->name('login-admin');

    Route::get('/out', 'Backend\Login@out')->name('out');

    Route::POST('/login', 'Backend\Login@post_login')->name('login.post');
    
});


Route::resource('/', 'Frontend\HomeController');
Route::get('/chi-tiet-san-pham/{id}', 'Frontend\ProController@product_detail')->name('product_detail');
Route::get('/san-pham', 'Frontend\ProController@product')->name('product');
Route::get('/bai-viet', 'Frontend\BlogController@blog')->name('blog');
Route::get('/chi-tiet-bai-viet/{id}', 'Frontend\BlogController@blog_detail')->name('blog_detail');
Route::get('/lien-he', 'Frontend\BlogController@contact')->name('contact');
Route::POST('/chi-tiet-bai-viet', 'Frontend\BlogController@store_cmt')->name('blog_detail.store');
Route::POST('/lien-he', 'Frontend\BlogController@store_contact')->name('contact.store');

Route::get('/register', 'Frontend\HomeController@register')->name('register');
Route::POST('/register', 'Frontend\HomeController@post_register');

Route::get('/login', 'Frontend\HomeController@login')->name('login');
Route::get('/logout', 'Frontend\HomeController@logout')->name('logout');
Route::POST('/login', 'Frontend\HomeController@post_login');

Route::get('tim-kiem', 'Frontend\HomeController@search')->name('search');

Route::get('gio-hang', 'Frontend\HomeController@cart')->name('cart');

// thanh toán
Route::POST('cart', 'Frontend\HomeController@cart_store')->name('cart.store');

Route::get('add-to-cart/{id}', 'Frontend\HomeController@addToCart')->name('addToCart');

Route::get('update-cart', 'Frontend\HomeController@updateCart')->name('updateCart');
 
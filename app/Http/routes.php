<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/



Route::get('/', function () {
    return view('welcome');
});

Route::auth();

Route::get('/',array(
    'as' => 'home',
    'uses' => 'HomeController@index'

));


Route::get('/homeVideo', function () {
    return view('home');
});



//Rutas del controlador de Videos

Route::get('/crear-video',array(
    'as' => 'createVideo',
    'middleware' => 'auth',
    'uses' => 'VideosController@createVideo'

));

Route::post('/guardar-video',array(
    'as' => 'saveVideo',
    'middleware' => 'auth',
    'uses' => 'VideosController@saveVideo'

));

Route::get('/miniatura/{filename}', array(
    'as' => 'imageVideo',
    'uses' => 'VideosController@getImage'
));

Route::get('/video/{video_id}', array(
    'as' => 'detailVideo',
    'uses' => 'VideosController@getVideoDetail'
));

Route::get('/video-file/{filename}', array(
    'as' => 'fileVideo',
    'uses' => 'VideosController@getVideo'
));

Route::get('/delete-video/{video_id}',array(
    'as' => 'videoDelete',
    'middleware' => 'auth',
    'uses' => 'VideosController@delete'
));

Route::get('/editar-video/{video_id}',array(
    'as' => 'videoEdit',
    'middleware' => 'auth',
    'uses' => 'VideosController@edit'
));

Route::post('/update-video/{video_id}',array(
    'as' => 'updateVideo',
    'middleware' => 'auth',
    'uses' => 'VideosController@update'

));

Route::get('/buscar/{search?}/{filter?}',array(
    'as' => 'videoSearch',
     'uses' => 'VideosController@search'
));


//Comentarios

Route::post('/comment',array(
    'as' => 'comment',
    'middleware' => 'auth',
    'uses' => 'CommentController@store'
));

Route::get('/delete-comment/{comment_id}',array(
    'as' => 'commentDelete',
    'middleware' => 'auth',
    'uses' => 'CommentController@delete'
));



//Usuarios

Route::get('/canal/{user_id}', array(
    'as' => 'channel',
    'uses' => 'UserController@channel'
)); 


//Caché

Route::get('/clear-cache', function(){
    $code = Artisan::call('cache:clear');
});

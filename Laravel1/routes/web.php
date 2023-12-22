<?php

use App\Http\Controllers\StudentController;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;


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

// Route::get('/', function(){
//     return 'redirected';
// });

// // Route::permanentRedirect('/welcome', '/');
// Route::get('/users/{id}/{group}', function($id, $group){
//     return response($id.'-'.$group, 200);
// });

// Route::get('/request-json', function(){
//     return response()->json([
//         'name' => 'John Doe',
//         'age' => 35
//     ]);
// });

// Route::get('/request-download', function(){

//     $path = public_path().'/sample.txt';
//     $name = 'sample.txt';
//     $header = array(
//         'Content-type : application/text-plain',
//     );

//     return response()->download($path, $name, $header);
// });

// Route::get('/', function(){
//     return view('welcome');
// });

/*
    Common Routing Naming Convention
    Index - Show all data or the students
    Show - Show a single data or student
    Create - Show a form to a new user
    Store  - Store a data
    Edit - Show form to a data
    Update - Update a data
    Destroy - Delete a data
*/


//Group controller for all UserController
Route::controller(UserController::class)->group(function () {
    Route::get('/register', 'register');
    Route::get('/login', 'login')->name('login')->middleware('guest');
    Route::post('/login/process', 'process');
    Route::post('/logout', 'logout');
    Route::post('/store', 'store');
});

//Group controller for all StudentController
Route::controller(StudentController::class)->group(function() {
    Route::get('/','index')->middleware('auth');
    Route::get('/add/student','create');
    Route::post('/add/student','store');
    Route::get('/student/{student}','show');
    Route::put('/student/{student}','update');
    Route::delete('/student/{student}','destroy');
});





<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\RoleContoller;
use App\Http\Controllers\RolePermissionController;
use App\Http\Controllers\ImageController;
use App\Http\Controllers\Auth\RegisterController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
    
});

Route::post('/addrole', [RoleContoller::class,'addrole'])->name('addrole');

Route::post('/register', [RegisterController::class, 'create'])->name('register');
Route::post('/login', [RegisterController::class, 'login'])->name('login');


Route::group(['middleware' => 'auth:sanctum'], function () {
    Route::resource('role-permission',RolePermissionController::class);
});

Route::post('/convert', [ImageController::class, 'convert'])->name('convert');

Route::group(['middleware' => 'auth:sanctum'], function () {
    // Route::post('/logout', [RegisterController::class, 'logout'])->name('logout');
});
Route::get('/getconvert', [ImageController::class, 'getconvert'])->name('getconvert');
Route::get('/checktable', [ImageController::class, 'checktable'])->name('checktable');
Route::middleware('auth:sanctum')->post('/logout', function (Request $request) {
    $request->user()->currentAccessToken()->delete();
    return response()->json(['message' => 'logged out succefully']);
});
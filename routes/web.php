<?php

use Illuminate\Support\Facades\Route;
use App\Http\livewire\Home;
use App\Http\livewire\Dashboard;

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

Route::get('/', Home::class)->name('/');

Route::get('/activiy', function () {
    return view('activity');
})->name('activity');

Route::get('/friend', function () {
    return view('friend');
})->name('friend');



// Route::middleware([
//     'auth:sanctum',
//     config('jetstream.auth_session'),
//     'verified'
// ])->group(function () {
//     Route::get('/dashboard', function () {
//         return view('dashboard');
//     })->name('dashboard');
// });

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->get('/dashboard', Dashboard::class)->name('dashboard');

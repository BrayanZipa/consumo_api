<?php

use App\Http\Controllers\PersonajeController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::resource('personajes', PersonajeController::class)->names('personajes');

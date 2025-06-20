<?php

use App\Http\Controllers\PersonajeController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::resource('personajes', PersonajeController::class)->names('personajes')->only(['index', 'show', 'store', 'edit', 'update']);
Route::get('api-data/personajes', [PersonajeController::class, 'indexApiData'])->name('personajes.api');
Route::get('data/personajes', [PersonajeController::class, 'personajesData'])->name('personajes.data');

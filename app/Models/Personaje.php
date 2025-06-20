<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Personaje extends Model
{
    protected $table = 'personajes';

    protected $fillable = [
        'id',
        'name',
        'status',
        'species',
        'type',
        'gender',
        'origin',
        'image',
    ];
}

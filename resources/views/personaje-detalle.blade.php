@extends('layout')

@section('title', 'Detalle Personaje del API')

@section('content')
    <div class="card mb-3 mt-5">
        <div class="row g-0">
            <div class="col-md-4">
                <img src="{{ $personaje['image'] }}" class="img-fluid rounded-start" alt="{{ $personaje['name'] }}">
            </div>
            <div class="col-md-8">
                <div class="card-body">
                    <h5 class="card-title mb-3">{{ $personaje['name'] }}</h5>
                    <p class="card-text"><strong>Status:</strong> {{ $personaje['status'] }}</p>
                    <p class="card-text"><strong>Especie:</strong> {{ $personaje['species'] }}</p>
                    <p class="card-text"><strong>Tipo:</strong> {{ $personaje['type'] }}</p>
                    <p class="card-text"><strong>Género:</strong> {{ $personaje['gender'] }}</p>
                    <p class="card-text"><strong>Origen name:</strong> {{ $personaje['origin']['name'] }}</p>
                    <p class="card-text"><strong>Origen url:</strong> {{ $personaje['origin']['url'] }}</p>
                </div>
            </div>
        </div>
    </div>
@endsection

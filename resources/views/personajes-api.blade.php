@extends('layout')

@section('title', 'Lista de Personajes del API')

@section('content')
    <div class="row mt-1">
        <div class="col-md-12 text-end">
            <form action="{{ route('personajes.store') }}" method="POST">
                @csrf
                <button type="submit" class="btn btn-primary">
                    Almacenar Personajes
                </button>
            </form>
        </div>
    </div>
    <ul>
        @foreach ($personajes as $personaje)
            <li>{{ $personaje['name'] }} - {{ $personaje['status'] }}</li>
        @endforeach
    </ul>
@endsection

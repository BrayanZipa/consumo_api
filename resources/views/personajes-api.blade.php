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

    <div class="accordion mt-4" id="accordionExample">
        @foreach ($personajes as $personaje)
            <div class="accordion-item">
                <h2 class="accordion-header">
                    <button class="accordion-button {{ !$loop->first ? 'collapsed' : '' }}" type="button" data-bs-toggle="collapse" data-bs-target="#collapse{{ $personaje['id'] }}"
                        aria-expanded="true" aria-controls="collapse{{ $personaje['id'] }}">
                        {{ $personaje['id'] . ' ' . $personaje['name'] }}
                    </button>
                </h2>
                <div id="collapse{{ $personaje['id'] }}" class="accordion-collapse collapse {{ $loop->first ? 'show' : '' }}" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <p><strong>Status:</strong> {{ $personaje['status'] }}</p>
                        <p><strong>Especie:</strong> {{ $personaje['species'] }}</p>
                        <a href="{{ route('personajes.show', $personaje['id']) }}" target="_blank" class="btn btn-primary">Detalle</a>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
@endsection

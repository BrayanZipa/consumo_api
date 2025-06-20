@extends('layout')

@section('title', 'Editar Personaje Almacenado')

@section('content')
    <form id="formulario" action="{{ isset($personaje) ? route('personajes.update', $personaje) : '' }}" method="POST">
        @csrf

        @if(isset($personaje))
            @method('PUT')
        @endif

        <div class="mb-3">
            <label for="name" class="form-label">Nombre</label>
            <input type="text" class="form-control @error('name') is-invalid @enderror" id="name"
                name="name" value="{{ old('name', $personaje->name ?? '') }}" autocomplete="off">
            @error('name')
                <span class="invalid-feedback">
                    {{ $message }}
                </span>
            @enderror
        </div>

        <div class="mb-3">
            <label for="status" class="form-label">Status</label>
            <input type="text" class="form-control @error('status') is-invalid @enderror" id="status"
                name="status" value="{{ old('status', $personaje->status ?? '') }}" autocomplete="off">
            @error('status')
                <span class="invalid-feedback">
                    {{ $message }}
                </span>
            @enderror
        </div>

        <div class="mb-3">
            <label for="species" class="form-label">Especie</label>
            <input type="text" class="form-control @error('species') is-invalid @enderror" id="species"
                name="species" value="{{ old('species', $personaje->species ?? '') }}" autocomplete="off">
            @error('species')
                <span class="invalid-feedback">
                    {{ $message }}
                </span>
            @enderror
        </div>

        <div class="mb-3">
            <label for="type" class="form-label">Tipo</label>
            <input type="text" class="form-control @error('type') is-invalid @enderror" id="type"
                name="type" value="{{ old('type', $personaje->type ?? '') }}" autocomplete="off">
            @error('type')
                <span class="invalid-feedback">
                    {{ $message }}
                </span>
            @enderror
        </div>

        <div class="mb-3">
            <label for="gender" class="form-label">Género</label>
            <input type="text" class="form-control @error('gender') is-invalid @enderror" id="gender"
                name="gender" value="{{ old('gender', $personaje->gender ?? '') }}" autocomplete="off">
            @error('gender')
                <span class="invalid-feedback">
                    {{ $message }}
                </span>
            @enderror
        </div>

        <div class="mb-3">
            <label for="origin" class="form-label">Origen</label>
            <input type="text" class="form-control @error('origin') is-invalid @enderror" id="origin"
                name="origin" value="{{ old('origin', $personaje->origin ?? '') }}" autocomplete="off">
            @error('origin')
                <span class="invalid-feedback">
                    {{ $message }}
                </span>
            @enderror
        </div>

        <div class="mb-3">
            <label for="image" class="form-label">Imagen</label>
            <input type="text" class="form-control @error('image') is-invalid @enderror" id="image"
                name="image" value="{{ old('image', $personaje->image ?? '') }}" autocomplete="off">
            @error('image')
                <span class="invalid-feedback">
                    {{ $message }}
                </span>
            @enderror
        </div>

        <button type="submit" class="btn btn-primary">Guardar</button>
    </form>
@endsection
@extends('layout')

@push('styles')
    <link href="https://cdn.datatables.net/v/bs5/jq-3.7.0/dt-2.3.2/r-3.0.4/datatables.min.css" rel="stylesheet"
        integrity="sha384-f4eoZJJq8gNOK1OSV5LSHZGgb5BmuPcYDXOGzV565hdJoa6L2u9NQgO0Dxr1f2GU" crossorigin="anonymous">
@endpush

@section('title', 'Lista de Personajes Almacenados')

@section('content')
    <table id="personajes-table" class="table">
        <thead>
            <tr>
                <th>ID</th>
                <th>SKU</th>
                <th>Nombre</th>
                <th>Descripción</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Total</th>
                <th>Fecha</th>
                <th>Acciones</th>
            </tr>
        </thead>
    </table>
@endsection

@push('scripts')
    <script src="https://cdn.datatables.net/v/bs5/jq-3.7.0/dt-2.3.2/r-3.0.4/datatables.min.js"
        integrity="sha384-hw3H608pBQC0bs/NkFNMmggoElJm4Vk7hTXlmsQPkBSxT8Nqu8Db40A+OIJAlLu7" crossorigin="anonymous">
    </script>
@endpush

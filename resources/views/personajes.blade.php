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
                <th>Nombre</th>
                <th>Status</th>
                <th>Especie</th>
                <th>Tipo</th>
                <th>Género</th>
                <th>Origen</th>
                <th>Imagen</th>
                <th>Fecha de creación</th>
                <th>Acciones</th>
            </tr>
        </thead>
    </table>
@endsection

@push('scripts')
    <script src="https://cdn.datatables.net/v/bs5/jq-3.7.0/dt-2.3.2/r-3.0.4/datatables.min.js"
        integrity="sha384-hw3H608pBQC0bs/NkFNMmggoElJm4Vk7hTXlmsQPkBSxT8Nqu8Db40A+OIJAlLu7" crossorigin="anonymous">
    </script>

    <script>
        $(function() {
            // Inicialización y configuración de Datatables para mostrar los registros de personajes
            let tabla = $('#personajes-table').DataTable({
                processing: true,
                serverSide: true,
                // searching: false,
                // dom: 'lrtip',
                responsive: true,
                autoWidth: true,
                pageLength: 10,
                // order: [[0, 'desc']], 
                ajax: {
                    url: '{{ route("personajes.data") }}',
                },
                columns: [
                    { data: 'id', name: 'id' },
                    { data: 'name', name: 'name' },
                    { data: 'status', name: 'status' },
                    { data: 'species', name: 'species' },
                    { data: 'type', name: 'type' },
                    { data: 'gender', name: 'gender' },
                    { data: 'origin', name: 'origin' },
                    {
                        data: 'image',
                        name: 'image',
                        orderable: false,
                        searchable: false,
                        render: function(data, type, row) {
                            return `
                                <img src="${data}" class="img-thumbnail rounded-circle mx-auto d-block" width="60" height="50" alt="${row.name}">
                            `;
                        }
                    },
                    { data: 'fecha_formateada', name: 'fecha_formateada' },
                    {
                        orderable: false,
                        data: null,
                        render: function(data, type, row) {
                            return `
                                <div class="d-flex justify-content-center gap-2">
                                    <a href="/personajes/${row.id}/edit" class="btn btn-sm btn-primary">
                                        Editar
                                    </a>
                                </div>
                            `;
                        }
                    }
                ],
                language: {
                    url: 'https://cdn.datatables.net/plug-ins/2.3.2/i18n/es-CO.json'
                }
            });
        });
    </script>
@endpush

<?php

namespace App\Http\Controllers;

use App\Models\Personaje;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;
use Yajra\DataTables\DataTables;

class PersonajeController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('personajes');
    }

    /**
     * Display a listing of the resource.
     */
    public function indexApiData()
    {
        $personajes = $this->getPersonajes();
        return view('personajes-api', compact('personajes'));
    }

    /**
     * Obtener los registros de los personajes almacenados
     */
    public function personajesData(Request $request){
        if($request->ajax()){
            $personajes = Personaje::query()
                ->select([
                    '*',
                    DB::raw("DATE_FORMAT(created_at, '%d/%m/%Y') as fecha_formateada")
                ])->get();

            return DataTables::of($personajes)->make(true);
        }
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store()
    {
        foreach ($this->getPersonajes() as $personaje) {
            Personaje::updateOrCreate(
                ['id' => $personaje['id']],
                [
                    'name' => $personaje['name'],
                    'status' => $personaje['status'] ?? null,
                    'species' => $personaje['species'] ?? null,
                    'type' => $personaje['type'] ?? null,
                    'gender' => $personaje['gender'] ?? null,
                    'origin' => $personaje['origin']['name'] ?? null,
                    'image' => $personaje['image'] ?? null,
                ]
            );
        }

        return redirect()->route('personajes.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Consulta api para traer la data dde los personajes
     */
    public function getPersonajes()
    {
        $personajes = [];
        $url = 'https://rickandmortyapi.com/api/character';
        $limite = 100;

        while ($url && count($personajes) < $limite) {
            $response = Http::get($url);
            if (!$response->successful()) break;

            $data = $response->json();
            $personajes = array_merge($personajes, $data['results']);
            $url = $data['info']['next'] ?? null;
        }

        $personajes = array_slice($personajes, 0, $limite);
        return $personajes;
    }
}

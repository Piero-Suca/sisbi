<?php

namespace App\Http\Controllers;

use App\Models\programa;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Validator;
use Barryvdh\DomPDF\Facade\Pdf;
use App\Exports\ProgramaExport;
use Maatwebsite\Excel\Facades\Excel;
use Maatwebsite\Excel\Excel as Format;

class programaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view("admin.programa.index");
    }
      //crear el método pdf
      public function pdf()
      {
          $programa=programa::all();
          $pdf = Pdf::loadView('admin.programa.pdf', compact('programa'));
          return $pdf->stream();
      }
     
      public function excel()
        {
            // Exporta los datos a un archivo Excel
        return Excel::download(new ProgramaExport, 'programa.xlsx');
          }
    public function csv()
        {
              // Exporta los datos a un archivo CSV
        return Excel::download(new ProgramaExport, 'programa.csv',Format::CSV);
        }      
    public function html()
        {
                  // Exporta los datos a un archivo CSV
        return EXCEL::download(new ProgramaExport, 'programa.html',Format::HTML);
        }        

    public function search(Request $request)
    {
        // recuerar el parametro busqueda
        $busqueda = $request->get('busqueda', '');

        // realizar la busqueda
        // ORM -> ELOQUENT
        // select id, nombre from tipocurso WHERE nombre LIKE '%diplomado%' AND deleted_at IS NULL
        $listado = programa::where('nombre', 'LIKE', '%' . $busqueda . '%')->select('id','cod_programa','nombre','rd_creacion')->get();
        return view("admin.programa.list", [
            "listado" => $listado
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view("admin.programa.create");
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // aplicar validacion de nuestros datos
        $validator = Validator::make($request->all(), [
            'nombre' => 'required|string|min:3|max:150',
            'cod_programa' => 'required|string|min:2|max:50',
            'rd_creacion' => 'required|string|min:3|max:50',
            

        ]);

        if ($validator->fails()) {
            // retornar la lista de errores JSON
            $errors = $validator->errors();

            $data = [
                'message' => 'Error en la validacion de los datos',
                'errors' => $errors
            ];

            return response()->json($data, 422);
        }

        try {
            
            $nombre = $request->get('nombre');
            $cod_programa = $request->get('cod_programa');
            $rd_creacion = $request->get('rd_creacion');
            // crear un nuevo registro en la BD
            // INSERT INTO tipocurso (nombres, activo) VALUES ($nombre, 1)
            $programa = new programa();
            $programa->nombre = $nombre;
            $programa->cod_programa = $cod_programa;
            $programa->rd_creacion = $rd_creacion;
            $programa ->save(); // encargado de aplicar el insert into

            $data = [
                'message' => 'Registrado correctamente'
            ];
            return response()->json($data, 201);
        } catch (\Throwable $error) {
            Log::error($error->getMessage());

            $data = [
                'message' => 'Error al registrar el programa. Contactarse con el area de soporte'
            ];
            return response()->json($data, 500);
        }
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $cod_programa)
    {
        try {
            // select * from tipocurso WHERE id = $id
            $programa = programa::find($cod_programa);
            // $tipocurso = Tipocurso::where('id', '=', $id)->first();
            return view('admin.programa.edit', ["item" => $programa]);
        } catch (\Throwable $th) {
            //throw $th;
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $cod_programa)
    {
        $validator = Validator::make($request->all(), [
            'nombre' => 'required|string|min:3|max:150'
        ]);

        if ($validator->fails()) {
            $errors = $validator->errors();
            $data = [
                'errors' => $errors,
                'message' => 'Error al validar los datos'
            ];

            return response()->json($data, 422);
        }

        try {
            $programa = programa::find($cod_programa);
            $programa->nombre = $request->get('nombre');
            $programa->cod_programa = $request->get('cod_programa');
            $programa->rd_creacion = $request->get('rd_creacion');
            $programa->save(); // aplicando el UPDATE tipocurso SET nombre = $reques WHERE id = $id
            $data = ['message' => 'Actualizado correctamente'];
            return response()->json($data, 200);
        } catch (\Throwable $error) {
            Log::error($error->getMessage());
            $data = [
                'message' => 'Error al actualizar el tipo de curso'
            ];
            return response()->json($data, 500);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $cod_programa)
    {
        try {
            $programa = programa::find($cod_programa);
            $programa->delete(); // DELETE FROM tipocurso WHERE id =$id
            // UPDATE tipocurso SET deleted_at = TIMESTAMP where id = $id

            $data = ['message' => 'Eliminado correctamente'];

            return response()->json($data, 200);
        } catch (\Throwable $error) {
            Log::error($error->getMessage());

            $data = ['message' => 'Error al eliminar programa'];

            return response()->json($data, 500);
        }
    }
    
}

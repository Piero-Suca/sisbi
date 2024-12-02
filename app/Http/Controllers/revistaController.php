<?php

namespace App\Http\Controllers;

use App\Models\revista;
use App\Models\programa;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Validator;
use App\Exports\revistaExport;
use Maatwebsite\Excel\Facades\Excel;
use Maatwebsite\Excel\Excel as Format;
//uso dela libreria dompdf
use Barryvdh\DomPDF\Facade\Pdf;
class revistaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view("admin.revista.index");
    }
    //crear el método pdf
    public function pdf()
    {
        $revista=revista::all();
        $pdf = Pdf::loadView('admin.revista.pdf', compact('revista'));
        return $pdf->stream();
    }
    public function excel()
        {
            // Exporta los datos a un archivo Excel
        return Excel::download(new revistaExport, 'revista.xlsx');
          }
    public function csv()
        {
              // Exporta los datos a un archivo CSV
        return Excel::download(new revistaExport, 'revista.csv',Format::CSV);
        }      
    public function html()
        {
                  // Exporta los datos a un archivo CSV
        return EXCEL::download(new revistaExport, 'revista.html',Format::HTML);
        }        


    public function search(Request $request)
    {
        $busqueda = $request->get('busqueda', '');
        /*
        SELECT curso.id, curso.nombre, curso.tipocurso_id, curso.imagen, tipocurso.nombre AS nombre_tipocurso
        FROM curso INNER JOIN tipocurso ON curso.tipocurso_id = tipocurso.id
        WHERE curso.nombre LIKE '%BUSQUEDA%'
         */
        $listado = revista::join('programa', 'revista.cod_programa', '=', 'programa.cod_programa')
            ->where('revista.titulo','LIKE', '%' . $busqueda . '%')
            ->orwhere('revista.cod_programa','LIKE', '%' . $busqueda . '%')
            ->orwhere('revista.autor','LIKE', '%' . $busqueda . '%')
            ->select('revista.id','revista.titulo','revista.autor','revista.cantidad','revista.cod_programa','revista.estado', 'programa.cod_programa AS cod_programa')
            ->get();
        // CALL listarCurso 'diplomado' SELECT
        // $listado = DB::select("SELECT curso.id, curso.nombre, curso.tipocurso_id, curso.imagen, tipocurso.nombre AS nombre_tipocurso
        //     FROM curso INNER JOIN tipocurso ON curso.tipocurso_id = tipocurso.id
        //     WHERE curso.nombre LIKE ?", ['%' . $busqueda . '%']);
        return view("admin.revista.list", [
            "listado" => $listado
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $programas = programa::orderBy('cod_programa', 'ASC')->select('id', 'cod_programa')->get();
        return view("admin.revista.create", ['programas' => $programas]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [

        ]);

        if ($validator->fails()) {
            $errors = $validator->errors();

            $data = [
                'message' => 'Error en la validacion de los datos',
                'errors' => $errors
            ];

            return response()->json($data, 422);
        }

        try {
            $revista = new revista();
            $revista->titulo = $request->get('titulo');
            $revista->autor = $request->get('autor');
            $revista->cantidad = $request->get('cantidad');
            $revista->cod_programa = $request->get('cod_programa');
            $revista->estado = $request->get('estado');
            $revista->save();
            $data = [
                'message' => 'Registrado correctamente'
            ];
            return response()->json($data, 201);
        } catch (\Throwable $error) {
            Log::error($error->getMessage());
            $data = [
                'message' => 'Error al registrar el revista. Contactarse con el area de soporte'
            ];
            return response()->json($data, 500);
        }
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        try {
            $revista = Revista::find($id);
            $programa_revista = programa::orderBy('cod_programa', 'ASC')->select('id','cod_programa')->get();

            return view('admin.revista.edit',[
                "item" => $revista,
                "programa_revista" => $programa_revista,
            ]);
        }catch (\Throwable $error){
            Log::error($error->getMessage());
            $data = [
                'message' => 'ERROR AL EDITAR EL REVISTA. CONTACTARSE CON EL AREA DE SOPORTE'
            ];
            return response()->json($data, 500);
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $validator = Validator::make($request->all(), [
            'titulo' => 'required|string|min:3|max:150',
            'autor' => 'required|string|min:3|max:150',
            'estado' => 'required|string|min:1|max:150',
            'cantidad' => 'required|string|min:1|max:150',
            'cod_programa' => 'required|string|min:2|max:50',

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
            $revista = Revista::find($id);
            $revista->titulo = $request->get('titulo');
            $revista->autor = $request->get('autor');
            $revista->cantidad = $request->get('cantidad');
            $revista->cod_programa = $request->get('cod_programa');
            $revista->estado = $request->get('estado');
            // subir imagen
            $revista->save();
            $data = ['message' => 'Actualizado correctamente'];
            return response()->json($data, 200);
        } catch (\Throwable $error) {
            Log::error($error->getMessage());
            $data = ['message' => 'Error al actualizar Revista'];
            return response()->json($data, 500);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        try {
            $revista = evista::find($id);
            $revista->delete();
            $data = ['message' => 'Eliminado correctamente'];
            return response()->json($data, 200);
        } catch (\Throwable $error) {
            Log::error($error->getMessage());
            $data = ['message' => 'Error al eliminar curso'];
            return response()->json($data, 500);
        }
    }
}

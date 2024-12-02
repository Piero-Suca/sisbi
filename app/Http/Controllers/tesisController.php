<?php

namespace App\Http\Controllers;

use App\Models\tesis;
use App\Models\programa;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Validator;
use App\Exports\tesisExport;
use Maatwebsite\Excel\Facades\Excel;
use Maatwebsite\Excel\Excel as Format;
//uso dela libreria dompdf
use Barryvdh\DomPDF\Facade\Pdf;
class tesisController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view("admin.tesis.index");
    }
    //crear el método pdf
    public function pdf()
    {
        $tesis=tesis::all();
        $pdf = Pdf::loadView('admin.tesis.pdf', compact('tesis'));
        return $pdf->stream();
    }
    public function excel()
        {
            // Exporta los datos a un archivo Excel
        return Excel::download(new tesisExport, 'tesis.xlsx');
          }
    public function csv()
        {
              // Exporta los datos a un archivo CSV
        return Excel::download(new tesisExport, 'tesis.csv',Format::CSV);
        }      
    public function html()
        {
                  // Exporta los datos a un archivo CSV
        return EXCEL::download(new tesisExport, 'tesis.html',Format::HTML);
        }        


    public function search(Request $request)
    {
        $busqueda = $request->get('busqueda', '');
        /*
        SELECT curso.id, curso.nombre, curso.tipocurso_id, curso.imagen, tipocurso.nombre AS nombre_tipocurso
        FROM curso INNER JOIN tipocurso ON curso.tipocurso_id = tipocurso.id
        WHERE curso.nombre LIKE '%BUSQUEDA%'
         */
        $listado = tesis::join('programa', 'tesis.cod_programa', '=', 'programa.cod_programa')
            ->where('tesis.titulo_tesis','LIKE', '%' . $busqueda . '%')
            ->orwhere('tesis.cod_programa','LIKE', '%' . $busqueda . '%')
            ->orwhere('tesis.autor','LIKE', '%' . $busqueda . '%')
            ->select('tesis.id','tesis.titulo_tesis','tesis.autor','tesis.orden_tesis','tesis.cod_programa','tesis.anio_ingreso', 'programa.cod_programa AS cod_programa')
            ->get();
        // CALL listarCurso 'diplomado' SELECT
        // $listado = DB::select("SELECT curso.id, curso.nombre, curso.tipocurso_id, curso.imagen, tipocurso.nombre AS nombre_tipocurso
        //     FROM curso INNER JOIN tipocurso ON curso.tipocurso_id = tipocurso.id
        //     WHERE curso.nombre LIKE ?", ['%' . $busqueda . '%']);
        return view("admin.tesis.list", [
            "listado" => $listado
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $programas = programa::orderBy('cod_programa', 'ASC')->select('id', 'cod_programa')->get();
        return view("admin.tesis.create", ['programas' => $programas]);
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
            $tesis = new tesis(); 
            $tesis->orden_tesis = $request->get('orden_tesis');
            $tesis->anio_ingreso = $request->get('anio_ingreso');
            $tesis->titulo_tesis = $request->get('titulo_tesis');
            $tesis->autor = $request->get('autor');
            $tesis->cod_programa = $request->get('cod_programa');
            $tesis->save();
            $data = [
                'message' => 'Registrado correctamente'
            ];
            return response()->json($data, 201);
        } catch (\Throwable $error) {
            Log::error($error->getMessage());
            $data = [
                'message' => 'Error al registrar el tesis. Contactarse con el area de soporte'
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
            $tesis = Tesis::find($id);
            $programa_tesis = programa::orderBy('cod_programa', 'ASC')->select('id','cod_programa')->get();

            return view('admin.tesis.edit',[
                "item" => $tesis,
                "programa_tesis" => $programa_tesis,
            ]);
        }catch (\Throwable $error){
            Log::error($error->getMessage());
            $data = [
                'message' => 'ERROR AL EDITAR EL tesis. CONTACTARSE CON EL AREA DE SOPORTE'
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
            'titulo_tesis' => 'required|string|min:3|max:150',
            'autor' => 'required|string|min:3|max:150',

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
            $tesis = Tesis::find($id);
            $tesis->orden_tesis = $request->get('orden_tesis');
            $tesis->anio_ingreso = $request->get('anio_ingreso');
            $tesis->titulo_tesis = $request->get('titulo_tesis');
            $tesis->autor = $request->get('autor');
            $tesis->cod_programa = $request->get('cod_programa');
            // subir imagen
            $tesis->save();
            $data = ['message' => 'Actualizado correctamente'];
            return response()->json($data, 200);
        } catch (\Throwable $error) {
            Log::error($error->getMessage());
            $data = ['message' => 'Error al actualizar tesis'];
            return response()->json($data, 500);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        try {
            $tesis = tesis::find($id);
            $tesis->delete();
            $data = ['message' => 'Eliminado correctamente'];
            return response()->json($data, 200);
        } catch (\Throwable $error) {
            Log::error($error->getMessage());
            $data = ['message' => 'Error al eliminar curso'];
            return response()->json($data, 500);
        }
    }
}

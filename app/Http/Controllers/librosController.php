<?php

namespace App\Http\Controllers;

use App\Models\libros;
use App\Models\programa;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Validator;
use App\Exports\LibrosExport;
use Barryvdh\DomPDF\Facade\Pdf;
use Maatwebsite\Excel\Facades\Excel;
use Maatwebsite\Excel\Excel as Format;
//uso dela libreria dompdf
class librosController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view("admin.libros.index");
    }
    
    //libros
    public function pdf(Request $request)
     {
        $busqueda = $request->get('busqueda', '');

        $libros = libros::join('programa', 'libros.cod_programa', '=', 'programa.cod_programa')
        ->where('libros.titulo','LIKE', '%' . $busqueda . '%')
        ->orwhere('libros.fecha_ingreso','LIKE', '%' . $busqueda . '%')
        ->orwhere('libros.cod_programa','LIKE', '%' . $busqueda . '%')
        ->select('libros.id', 'libros.orden_libro', 'libros.titulo', 'libros.autor','libros.stock', 'libros.fecha_ingreso', 'libros.cod_programa', 'programa.cod_programa AS cod_programa')
        ->get();

        $pdf = Pdf::loadView('admin.libros.pdf', compact('libros'));

    // Descargar el PDF
    return $pdf->download('listado_libros.pdf');
     }
     public function excel(Request $request)
     {
        $busqueda = $request->get('busqueda', '');
        $searchResults = libros::join('programa', 'libros.cod_programa', '=', 'programa.cod_programa')
        ->where('libros.titulo', 'LIKE', '%' . $busqueda . '%')
        ->orWhere('libros.fecha_ingreso', 'LIKE', '%' . $busqueda . '%')
        ->orWhere('libros.cod_programa', 'LIKE', '%' . $busqueda . '%')
         ->select('libros.id', 'libros.orden_libro', 'libros.titulo', 'libros.autor','libros.stock', 'libros.fecha_ingreso', 'libros.cod_programa', 'programa.cod_programa AS cod_programa')
        ->get();
 
        $export = new LibrosExport($searchResults);
 
        // Puedes usar el exportador como lo hacías antes
        return Excel::download($export, 'libros.xlsx');
    }
    public function csv(Request $request)
        {
        $busqueda = $request->get('busqueda', '');
        $searchResults = libros::join('programa', 'libros.cod_programa', '=', 'programa.cod_programa')
        ->where('libros.titulo', 'LIKE', '%' . $busqueda . '%')
        ->orWhere('libros.fecha_ingreso', 'LIKE', '%' . $busqueda . '%')
        ->orWhere('libros.cod_programa', 'LIKE', '%' . $busqueda . '%')
        ->select('libros.id', 'libros.orden_libro', 'libros.titulo', 'libros.autor','libros.stock', 'libros.fecha_ingreso', 'libros.cod_programa', 'programa.cod_programa AS cod_programa')
        ->get();
        $export = new LibrosExport($searchResults);
 
        // Puedes usar el exportador como lo hacías antes
        return Excel::download($export, 'libros.csv',Format::CSV);
    }
    public function html(Request $request)
    {
        $busqueda = $request->get('busqueda', '');
        $searchResults = libros::join('programa', 'libros.cod_programa', '=', 'programa.cod_programa')
        ->where('libros.titulo', 'LIKE', '%' . $busqueda . '%')
        ->orWhere('libros.fecha_ingreso', 'LIKE', '%' . $busqueda . '%')
        ->orWhere('libros.cod_programa', 'LIKE', '%' . $busqueda . '%')
        ->select('libros.id', 'libros.orden_libro', 'libros.titulo', 'libros.autor','libros.stock', 'libros.fecha_ingreso', 'libros.cod_programa', 'programa.cod_programa AS cod_programa')
        ->get();
 
        $export = new LibrosExport($searchResults);
 
        // Puedes usar el exportador como lo hacías antes
        return Excel::download($export, 'libros.html',Format::HTML);
    }         
  
    public function search(Request $request)
    {
        $busqueda = $request->get('busqueda', '');
        /*
        SELECT curso.id, curso.nombre, curso.tipocurso_id, curso.imagen, tipocurso.nombre AS nombre_tipocurso
        FROM curso INNER JOIN tipocurso ON curso.tipocurso_id = tipocurso.id
        WHERE curso.nombre LIKE '%BUSQUEDA%'
         */
        $listado = libros::join('programa', 'libros.cod_programa', '=', 'programa.cod_programa')
            ->where('libros.titulo','LIKE', '%' . $busqueda . '%')
            ->orwhere('libros.fecha_ingreso','LIKE', '%' . $busqueda . '%')
            ->orwhere('libros.cod_programa','LIKE', '%' . $busqueda . '%')
            ->select('libros.id', 'libros.orden_libro', 'libros.titulo', 'libros.autor','libros.stock', 'libros.fecha_ingreso', 'libros.cod_programa', 'programa.cod_programa AS cod_programa')
        ->get();
        // CALL listarCurso 'diplomado' SELECT
        // $listado = DB::select("SELECT curso.id, curso.nombre, curso.tipocurso_id, curso.imagen, tipocurso.nombre AS nombre_tipocurso
        //     FROM curso INNER JOIN tipocurso ON curso.tipocurso_id = tipocurso.id
        //     WHERE curso.nombre LIKE ?", ['%' . $busqueda . '%']);
        return view("admin.libros.list", [
            "listado" => $listado
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $programas = programa::orderBy('cod_programa', 'ASC')->select('id', 'cod_programa')->get();
        return view("admin.libros.create", ['programas' => $programas]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'titulo' => 'required|string|min:3|max:150',
            'orden_libro' => 'required|string|min:3|max:150',
            
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
            $libros = new libros();
            $libros->titulo = $request->get('titulo');
            $libros->orden_libro = $request->get('orden_libro');
            $libros->autor = $request->get('autor');
            $libros->stock = $request->get('stock');
            $libros->fecha_ingreso = $request->get('fecha_ingreso');
            $libros->cod_programa = $request->get('cod_programa');
            // subir imagen
            $libros->save();
            $data = [
                'message' => 'Registrado correctamente'
            ];
            return response()->json($data, 201);
        } catch (\Throwable $error) {
            Log::error($error->getMessage());
            $data = [
                'message' => 'Error al registrar el libro. Contactarse con el area de soporte'
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
            $libros = Libros::find($id);
            $programa_libros = programa::orderBy('cod_programa', 'ASC')->select('id','cod_programa')->get();

            return view('admin.libros.edit',[
                "item" => $libros,
                "programa_libros" => $programa_libros,
            ]);
        }catch (\Throwable $error){
            Log::error($error->getMessage());
            $data = [
                'message' => 'ERROR AL EDITAR EL LIBRO. CONTACTARSE CON EL AREA DE SOPORTE'
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
            'orden_libro' => 'required|string|min:3|max:150',

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
            $libros = Libros::find($id);
            $libros->titulo = $request->get('titulo');
            $libros->orden_libro = $request->get('orden_libro');
            $libros->autor = $request->get('autor');
            $libros->stock = $request->get('stock');
            $libros->fecha_ingreso = $request->get('fecha_ingreso');
            $libros->cod_programa = $request->get('cod_programa');
            // subir imagen
            $libros->save();
            $data = ['message' => 'Actualizado correctamente'];
            return response()->json($data, 200);
        } catch (\Throwable $error) {
            Log::error($error->getMessage());
            $data = ['message' => 'Error al actualizar libro'];
            return response()->json($data, 500);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        try {
            $libros = Libros::find($id);
            $libros->delete();
            $data = ['message' => 'Eliminado correctamente'];
            return response()->json($data, 200);
        } catch (\Throwable $error) {
            Log::error($error->getMessage());
            $data = ['message' => 'Error al eliminar curso'];
            return response()->json($data, 500);
        }
    }
}

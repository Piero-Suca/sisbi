<?php

namespace App\Http\Controllers;

use App\Models\docente;
use App\Models\programa;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Validator;
//uso dela libreria dompdf
use Barryvdh\DomPDF\Facade\Pdf;
use Maatwebsite\Excel\Facades\Excel;
class docenteController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view("admin.docente.index");
    }
     //crear el método pdf
     public function pdf()
     {
         $docente=docente::all();
         $pdf = Pdf::loadView('admin.docente.pdf', compact('docente'));
         return $pdf->stream();
     }
     public function exportExcel()
     {
        
         return Excel::download(new Excel,'docente.xlxs');
     }

    public function search(Request $request)
    {
        $busqueda = $request->get('busqueda', '');
        /*
        SELECT curso.id, curso.nombre, curso.tipocurso_id, curso.imagen, tipocurso.nombre AS nombre_tipocurso
        FROM curso INNER JOIN tipocurso ON curso.tipocurso_id = tipocurso.id
        WHERE curso.nombre LIKE '%BUSQUEDA%'
         */
        $listado = docente::join('programa', 'docente.programa_id', '=', 'programa.id')
            ->where('docente.nombre','LIKE', '%' . $busqueda . '%')
            ->select('docente.id','docente.nombre','docente.apellidos','docente.email','docente.especialidad','docente.dni', 'programa.nombre AS nombre_programa')
            ->get();
        // CALL listarCurso 'diplomado' SELECT
        // $listado = DB::select("SELECT curso.id, curso.nombre, curso.tipocurso_id, curso.imagen, tipocurso.nombre AS nombre_tipocurso
        //     FROM curso INNER JOIN tipocurso ON curso.tipocurso_id = tipocurso.id
        //     WHERE curso.nombre LIKE ?", ['%' . $busqueda . '%']);
        return view("admin.docente.list", [
            "listado" => $listado
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $programas = programa::orderBy('nombre', 'ASC')->select('id', 'nombre')->get();
        return view("admin.docente.create", ['programas' => $programas]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'nombre' => 'required|string|min:3|max:50',
            'apellidos' => 'required|string|min:3|max:50',
            'email' => 'required|string|min:3|max:50',
            'dni' => 'required|int',
            'especialidad' => 'required|string|min:3|max:50',
            
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
            $docente = new docente();
            $docente->nombre = $request->get('nombre');
            $docente->apellidos = $request->get('apellidos');
            $docente->email = $request->get('email');
            $docente->dni = $request->get('dni');

            // subir imagen
            $docente->especialidad = $request->get('especialidad');
        
            $docente->save();
            $data = [
                'message' => 'Registrado correctamente'
            ];
            return response()->json($data, 201);
        } catch (\Throwable $error) {
            Log::error($error->getMessage());
            $data = [
                'message' => 'Error al registrar el docente. Contactarse con el area de soporte'
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
            $docente = Docente::find($id);
            $programa_docente = programa::orderBy('nombre', 'ASC')->select('id','nombre')->get();

            return view('admin.docente.edit',[
                "item" => $docente,
                "programa_docente" => $programa_docente,
            ]);
        }catch (\Throwable $error){
            Log::error($error->getMessage());
            $data = [
                'message' => 'ERROR AL REGISTRAR EL DOCENTE. CONTACTARSE CON EL AREA DE SOPORTE'
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
            'nombre' => 'required|string|min:3|max:50',
            'apellidos' => 'required|string|min:3|max:50',
            'email' => 'required|string|min:3|max:50',
            'dni' => 'required|int',
            'especialidad' => 'required|string|min:3|max:50',
          
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
            $docente = docente::find($id);
            $docente->nombre = $request->get('nombre');
            $docente->apellidos = $request->get('apellidos');
            $docente->email = $request->get('email');
            $docente->dni = $request->get('dni');
            // subir imagen
            $docente->especialidad = $request->get('especialidad');
           
            $docente->save();
            $data = ['message' => 'Actualizado correctamente'];
            return response()->json($data, 200);
        } catch (\Throwable $error) {
            Log::error($error->getMessage());
            $data = ['message' => 'Error al actualizar docente'];
            return response()->json($data, 500);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        try {
            $docente = docente::find($id);
            $docente->delete();
            $data = ['message' => 'Eliminado correctamente'];
            return response()->json($data, 200);
        } catch (\Throwable $error) {
            Log::error($error->getMessage());
            $data = ['message' => 'Error al eliminar curso'];
            return response()->json($data, 500);
        }
    }
}

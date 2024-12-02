<?php

namespace App\Http\Controllers;

use App\Models\estudiante;
use App\Models\programa;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Validator;
use Barryvdh\DomPDF\Facade\Pdf;
Use Maatwebsite\Excel\Excel as Formato;

class estudianteController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view("admin.estudiante.index");
    }
     //crear el método pdf
     public function pdf()
     {
         $estudiante=estudiante::all();
         $pdf = Pdf::loadView('admin.estudiante.pdf', compact('estudiante'));
         return $pdf->stream();
     }
     public function excel()
     {
        $estudiante=estudiante::all();
         return Excel::download(new excel,'estudiante.xlxs');
     }
     public function csv()
     {
        
         //return Excel::download(new UserExport,'user.csv',\Maatwebsite\Excel::csv);
         return Excel::download(new UserExport,'user.csv',Formato::csv);
        }

    public function search(Request $request)
    {
        $busqueda = $request->get('busqueda', '');
        /*
        SELECT curso.id, curso.nombre, curso.tipocurso_id, curso.imagen, tipocurso.nombre AS nombre_tipocurso
        FROM curso INNER JOIN tipocurso ON curso.tipocurso_id = tipocurso.id
        WHERE curso.nombre LIKE '%BUSQUEDA%'
         */
        $listado = estudiante::join('programa', 'estudiante.programa_id', '=', 'programa.id')
            ->where('estudiante.nombre','LIKE', '%' . $busqueda . '%')
            ->select('estudiante.id','estudiante.nombre','estudiante.apellidos','estudiante.email','estudiante.programa_id','estudiante.semestre','estudiante.dni', 'programa.nombre AS nombre_programa')
            ->get();
        // CALL listarCurso 'diplomado' SELECT
        // $listado = DB::select("SELECT curso.id, curso.nombre, curso.tipocurso_id, curso.imagen, tipocurso.nombre AS nombre_tipocurso
        //     FROM curso INNER JOIN tipocurso ON curso.tipocurso_id = tipocurso.id
        //     WHERE curso.nombre LIKE ?", ['%' . $busqueda . '%']);
        return view("admin.estudiante.list", [
            "listado" => $listado
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $programas = programa::orderBy('nombre', 'ASC')->select('id', 'nombre')->get();
        return view("admin.estudiante.create", ['programas' => $programas]);
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
            'programa_id' => 'required|int',
            'semestre' => 'required|string|min:1|max:50',
            
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
            $estudiante = new estudiante();
            $estudiante->nombre = $request->get('nombre');
            $estudiante->apellidos = $request->get('apellidos');
            $estudiante->email = $request->get('email');
            $estudiante->dni = $request->get('dni');
            $estudiante->programa_id = $request->get('programa_id');
            // subir imagen
            $estudiante->semestre = $request->get('semestre');
            $estudiante->save();
            $data = [
                'message' => 'Registrado correctamente'
            ];
            return response()->json($data, 201);
        } catch (\Throwable $error) {
            Log::error($error->getMessage());
            $data = [
                'message' => 'Error al registrar el estudiante. Contactarse con el area de soporte'
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
            $estudiante = Estudiante::find($id);
            $programa_estudiante = programa::orderBy('nombre', 'ASC')->select('id','nombre')->get();

            return view('admin.estudiante.edit',[
                "item" => $estudiante,
                "programa_estudiante" => $programa_estudiante,
            ]);
        }catch (\Throwable $error){
            Log::error($error->getMessage());
            $data = [
                'message' => 'ERROR AL REGISTRAR EL ESTUDIANTE. CONTACTARSE CON EL AREA DE SOPORTE'
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
            'programa_id' => 'required|int',
            'semestre' => 'required|string|min:1|max:50',
        

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
            $estudiante = estudiante::find($id);
            $estudiante->nombre = $request->get('nombre');
            $estudiante->apellidos = $request->get('apellidos');
            $estudiante->email = $request->get('email');
            $estudiante->dni = $request->get('dni');
            $estudiante->programa_id = $request->get('programa_id');
            // subir imagen
            $estudiante->semestre = $request->get('semestre');
            $estudiante->save();
            $data = ['message' => 'Actualizado correctamente'];
            return response()->json($data, 200);
        } catch (\Throwable $error) {
            Log::error($error->getMessage());
            $data = ['message' => 'Error al actualizar estudiante'];
            return response()->json($data, 500);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        try {
            $estudiante = estudiante::find($id);
            $estudiante->delete();
            $data = ['message' => 'Eliminado correctamente'];
            return response()->json($data, 200);
        } catch (\Throwable $error) {
            Log::error($error->getMessage());
            $data = ['message' => 'Error al eliminar curso'];
            return response()->json($data, 500);
        }
    }
}

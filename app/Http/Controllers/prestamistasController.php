<?php

namespace App\Http\Controllers;

use App\Models\prestamistas;
use App\Models\programa;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Validator;
use Barryvdh\DomPDF\Facade\Pdf;
use App\Exports\PrestamistasExport;
use Maatwebsite\Excel\Facades\Excel;
use Maatwebsite\Excel\Excel as Format;

class prestamistasController extends Controller
{
    /**
     * Display a listing of the resource.
     */

    public function index()
    {
        return view("admin.prestamistas.index");
    }
public function obtenerDatosPrestamista(Request $request)
    {
        // Obtener el código del prestamista desde la solicitud
        $codPrestamista = $request->input('cod_prestamista');
    
        // Realizar la lógica para obtener los datos del prestamista
        $datosPrestamista = Prestamista::where('cod_prestamista', $codPrestamista)->first();
    
        // Devolver los datos del prestamista como respuesta en formato JSON
        return response()->json([
            'nombre_completo' => $datosPrestamista->nombre_completo,
            'cod_programa' => $datosPrestamista->cod_programa
        ]);
    }
    
    public function obtenerDetallesPrestamista(Request $request)
{
    $codPrestamista = $request->input('cod_prestamista');
    $prestamistas = Prestamistas::where('cod_prestamista', $codPrestamista)->first();

    if ($prestamistas) {
        return response()->json([
            'nombre_completo' => $prestamistas->nombre_completo,
            'cod_programa' => $prestamistas->cod_programa,
        ]);
    } else {
        return response()->json(['error' => 'Prestamista no encontrado'], 404);
    }
}
     //crear el método pdf
     public function pdf()
     {
         $prestamistas=prestamistas::all();
         $pdf = Pdf::loadView('admin.prestamistas.pdf', compact('prestamistas'));
         return $pdf->stream();
     }
     public function excel()
        {
            // Exporta los datos a un archivo Excel
        return Excel::download(new PrestamistasExport, 'prestamistas.xlsx');
          }
    public function csv()
        {
              // Exporta los datos a un archivo CSV
        return Excel::download(new PrestamistasExport, 'prestamistas.csv',Format::CSV);
        }      
    public function html()
        {
                  // Exporta los datos a un archivo CSV
        return EXCEL::download(new PrestamistasExport, 'prestamistas.html',Format::HTML);
        }          
     //crear el método excel
    //prestamistas
    public function search(Request $request)
    {
        $busqueda = $request->get('busqueda', '');
        /*
        SELECT curso.id, curso.nombre, curso.tipocurso_id, curso.imagen, tipocurso.nombre AS nombre_tipocurso
        FROM curso INNER JOIN tipocurso ON curso.tipocurso_id = tipocurso.id
        WHERE curso.nombre LIKE '%BUSQUEDA%'
         */
        $listado = prestamistas::join('programa', 'prestamistas.cod_programa', '=', 'programa.cod_programa')
            ->where('prestamistas.nombre_completo','LIKE', '%' . $busqueda . '%')
            ->orwhere('prestamistas.cod_prestamista','LIKE', '%' . $busqueda . '%')
            ->orwhere('prestamistas.dni','LIKE', '%' . $busqueda . '%')
            ->orwhere('prestamistas.telefono','LIKE', '%' . $busqueda . '%')
            ->orwhere('prestamistas.cargo','LIKE', '%' . $busqueda . '%')
            ->orwhere('prestamistas.cod_programa','LIKE', '%' . $busqueda . '%')
            ->select('prestamistas.id','prestamistas.cod_prestamista','prestamistas.nombre_completo','prestamistas.email','prestamistas.cod_programa','prestamistas.telefono','prestamistas.cargo','prestamistas.dni', 'programa.cod_programa AS cod_programa')
            ->get();
        // CALL listarCurso 'diplomado' SELECT
        // $listado = DB::select("SELECT curso.id, curso.nombre, curso.tipocurso_id, curso.imagen, tipocurso.nombre AS nombre_tipocurso
        //     FROM curso INNER JOIN tipocurso ON curso.tipocurso_id = tipocurso.id
        //     WHERE curso.nombre LIKE ?", ['%' . $busqueda . '%']);
        return view("admin.prestamistas.list", [
            "listado" => $listado
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $programas = programa::orderBy('cod_programa', 'ASC')->select('id', 'cod_programa')->get();
        return view("admin.prestamistas.create", ['programas' => $programas]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'nombre_completo' => 'required|string|min:3|max:50',
            'email' => 'required|string|min:3|max:50',
            'dni' => 'required|int',
           
           
            
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
            $prestamistas = new prestamistas();
            $prestamistas->cod_prestamista = $request->get('cod_prestamista');
            $prestamistas->nombre_completo = $request->get('nombre_completo');
            $prestamistas->email = $request->get('email');
            $prestamistas->dni = $request->get('dni');
            $prestamistas->cod_programa = $request->get('cod_programa');
            // subir imagen
            $prestamistas->telefono = $request->get('telefono');
            $prestamistas->cargo = $request->get('cargo');
            $prestamistas->save();
            $data = [
                'message' => 'Registrado correctamente'
            ];
            return response()->json($data, 201);
        } catch (\Throwable $error) {
            Log::error($error->getMessage());
            $data = [
                'message' => 'Error al registrar el prestamistas. Contactarse con el area de soporte'
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
            $prestamistas = Prestamistas::find($id);
            $programa_prestamistas = programa::orderBy('cod_programa', 'ASC')->select('id','cod_programa')->get();

            return view('admin.prestamistas.edit',[
                "item" => $prestamistas,
                "programa_prestamistas" => $programa_prestamistas,
            ]);
        }catch (\Throwable $error){
            Log::error($error->getMessage());
            $data = [
                'message' => 'ERROR AL REGISTRAR EL prestamistas. CONTACTARSE CON EL AREA DE SOPORTE'
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
            'nombre_completo' => 'required|string|min:3|max:50',
            'email' => 'required|string|min:3|max:50',
            'dni' => 'required|int',
            
            
        

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
            $prestamistas = Prestamistas::find($id);
            $prestamistas->cod_prestamista = $request->get('cod_prestamista');
            $prestamistas->nombre_completo = $request->get('nombre_completo');
            $prestamistas->email = $request->get('email');
            $prestamistas->dni = $request->get('dni');
            $prestamistas->cod_programa = $request->get('cod_programa');
            // subir imagen
            $prestamistas->telefono = $request->get('telefono');

            $prestamistas->cargo = $request->get('cargo');
            $prestamistas->save();
            $data = ['message' => 'Actualizado correctamente'];
            return response()->json($data, 200);
        } catch (\Throwable $error) {
            Log::error($error->getMessage());
            $data = ['message' => 'Error al actualizar prestamistas'];
            return response()->json($data, 500);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        try {
            $prestamistas = Prestamistas::find($id);
            $prestamistas->delete();
            $data = ['message' => 'Eliminado correctamente'];
            return response()->json($data, 200);
        } catch (\Throwable $error) {
            Log::error($error->getMessage());
            $data = ['message' => 'Error al eliminar curso'];
            return response()->json($data, 500);
        }
    }
}

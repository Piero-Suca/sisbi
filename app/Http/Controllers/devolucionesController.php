<?php

namespace App\Http\Controllers;

use App\Models\devoluciones;
use App\Models\prestamos;
use App\Models\prestamistas;
use App\Models\libros;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Validator;
use App\Exports\PrestamosExport;
use Barryvdh\DomPDF\Facade\Pdf;
use Maatwebsite\Excel\Facades\Excel;
use Maatwebsite\Excel\Excel as Format;
class devolucionesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view("admin.devoluciones.index");
    }
     //crear el método pdf


    public function pdf(Request $request)
    {
    $busqueda = $request->get('busqueda', '');

    $devoluciones = Devoluciones::join('prestamistas', 'devoluciones.nombre_completo', '=', 'prestamistas.id')
        ->join('libros', 'devoluciones.titulo', '=', 'libros.id')
        ->where('devoluciones.nombre_completo', 'LIKE', '%' . $busqueda . '%')
        ->orWhere('devoluciones.titulo', 'LIKE', '%' . $busqueda . '%')
        ->orWhere('devoluciones.fecha_inicio', 'LIKE', '%' . $busqueda . '%')
        ->orWhere('devoluciones.fecha_fin', 'LIKE', '%' . $busqueda . '%')
        ->select('devoluciones.id', 'devoluciones.nombre_completo', 'devoluciones.fecha_inicio', 'devoluciones.fecha_fin', 'prestamistas.nombre_completo AS nombre_completo', 'libros.titulo AS titulo')
        ->get();

    // Generar el PDF
    $pdf = Pdf::loadView('admin.devoluciones.pdf', compact('devoluciones'));

    // Descargar el PDF
    return $pdf->download('listado_prestamos.pdf');
    }
    public function excel(Request $request)
        {
        $busqueda = $request->get('busqueda', '');
        $searchResults = devoluciones::join('prestamistas', 'devoluciones.nombre_completo', '=', 'prestamistas.id')
        ->join('libros', 'devoluciones.titulo', '=', 'libros.id')
        ->where('devoluciones.nombre_completo', 'LIKE', '%' . $busqueda . '%')
        ->orWhere('devoluciones.titulo', 'LIKE', '%' . $busqueda . '%')
        ->orWhere('devoluciones.fecha_inicio', 'LIKE', '%' . $busqueda . '%')
        ->orWhere('devoluciones.fecha_fin', 'LIKE', '%' . $busqueda . '%')
        ->select('devoluciones.id', 'devoluciones.nombre_completo', 'devoluciones.fecha_inicio', 'devoluciones.fecha_fin', 'prestamistas.nombre_completo AS nombre_completo', 'libros.titulo AS titulo')
        ->get();
     
        $export = new PrestamosExport($searchResults);
     
        // Puedes usar el exportador como lo hacías antes
        return Excel::download($export, 'devoluciones.xlsx');
        }
        public function csv(Request $request)
        {
            $busqueda = $request->get('busqueda', '');
            $searchResults = devoluciones::join('prestamistas', 'devoluciones.nombre_completo', '=', 'prestamistas.id')
                ->join('libros', 'devoluciones.titulo', '=', 'libros.id')
                ->where('devoluciones.nombre_completo', 'LIKE', '%' . $busqueda . '%')
                ->orWhere('devoluciones.titulo', 'LIKE', '%' . $busqueda . '%')
                ->orWhere('devoluciones.fecha_inicio', 'LIKE', '%' . $busqueda . '%')
                ->orWhere('devoluciones.fecha_fin', 'LIKE', '%' . $busqueda . '%')
                ->select('devoluciones.id', 'devoluciones.nombre_completo', 'devoluciones.fecha_inicio', 'devoluciones.fecha_fin', 'prestamistas.nombre_completo AS nombre_completo', 'libros.titulo AS titulo')
                ->get();
            
            $export = new PrestamosExport($searchResults);
        
            // Puedes usar el exportador como lo hacías antes
            return Excel::download($export, 'devoluciones.csv', Format::CSV);
        }
  
    public function html()
        {
                  // Exporta los datos a un archivo CSV
        return EXCEL::download(new PrestamosExport, 'devoluciones.html',Format::HTML);
        }          
    public function search(Request $request)
    {
    // Get the 'busqueda' parameter from the request or set it to an empty string if not present
    $busqueda = $request->get('busqueda', '');
    $listado = Devoluciones::join('prestamistas', 'devoluciones.nombre_completo', '=', 'prestamistas.id')
    ->join('libros', 'devoluciones.titulo', '=', 'libros.id')
        ->where('devoluciones.nombre_completo', 'LIKE', '%' . $busqueda . '%')
        ->orWhere('devoluciones.titulo', 'LIKE', '%' . $busqueda . '%')
        ->orWhere('devoluciones.fecha_inicio', 'LIKE', '%' . $busqueda . '%')
        ->orWhere('devoluciones.fecha_fin', 'LIKE', '%' . $busqueda . '%')
        ->select('devoluciones.id', 'devoluciones.nombre_completo','devoluciones.fecha_inicio','devoluciones.fecha_fin','prestamistas.nombre_completo AS nombre_completo', 'libros.titulo AS titulo')
        ->get();
    
    // Pass the retrieved data to a view for rendering
    return view("admin.devoluciones.list", [
        "listado" => $listado
    ]);
}

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $prestamistas = prestamistas::orderBy('nombre_completo', 'ASC')->select('id','nombre_completo')->get();
        $libros = libros::orderBy('titulo', 'ASC')->select('id','titulo')->get();

        return view("admin.devoluciones.create", ['prestamistas' => $prestamistas, 'libros' => $libros]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'nombre_completo' => 'required|string|min:1|max:120',

            
        ]);

         // Resto del código ...

         if ($validator->fails()) {
            // Maneja los errores de validación aquí
            // ...
        }

        try {
            // Verifica si ya existe una devolución para el mismo id_prestamo
            if (Devoluciones::where('nombre_completo', $request->nombre_completo)->exists()) {
                $data = ['message' => 'Ya se ha registrado una devolución para este préstamo'];
                return response()->json($data, 422);
            }

            // Resto del código para registrar la devolución...
        } catch (QueryException $exception) {
            // Maneja la excepción de integridad única
            $data = ['message' => 'Error al intentar registrar la devolución. Ya existe una devolución para este préstamo.'];
            return response()->json($data, 422);
        } catch (\Throwable $error) {
            // Resto del código para manejar otros errores...
        }
    }

    /**
     * Show the form for editing the specified resource.
     */
    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        try {
            $devoluciones = Devoluciones::find($id);
            $prestamistas_prestamos = prestamistas::orderBy('nombre_completo', 'ASC')->select('id', 'nombre_completo')->get();
            $libros_prestamos = libros::orderBy('titulo', 'ASC')->select('id', 'titulo')->get();
            return view('admin.devoluciones.edit', [
                "item" => $devoluciones,
                "prestamistas_prestamos" => $prestamistas_prestamos,
                "libros_prestamos" => $libros_prestamos,

            ]);
        } catch (\Throwable $error) {
            Log::error($error->getMessage());
            $data = [
                'message' => 'ERROR AL EDITAR PRESTAMO. CONTACTARSE CON EL ÁREA DE SOPORTE'
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
            'nombre_completo' => 'required|string|min:1|max:120',
           
        ]);

        if ($validator->fails()) {
            $errors = $validator->errors();
            $data = [
                'errors' => $errors,
                'message' => 'Error al validar tus datos,edite nuevamente'
            ];

            return response()->json($data, 422);
        }

        try {
            $devoluciones = Devoluciones::find($id);
            $devoluciones->nombre_completo = $request->get('nombre_completo');
            $devoluciones->fecha_inicio = $request->get('fecha_inicio');
            $devoluciones->fecha_fin = $request->get('fecha_fin');
            $devoluciones->titulo = $request->get('titulo');
            $devoluciones->save();
            $data = ['message' => 'Actualizado correctamente'];
            return response()->json($data, 200);
        } catch (\Throwable $error) {
            Log::error($error->getMessage());
            $data = [
                'message' => 'Error al actualizar devoluciones,intenta'
            ];
            return response()->json($data, 500);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        try {
            $devoluciones = Devoluciones::find($id);
            $devoluciones->delete();
            $data = ['message' => 'Eliminado correctamente'];
            return response()->json($data, 200);
        } catch (\Throwable $error) {
            Log::error($error->getMessage());
            $data = ['message' => 'Error al eliminar curso'];
            return response()->json($data, 500);
        }
    }
    
}

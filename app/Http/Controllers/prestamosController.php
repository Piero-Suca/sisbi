<?php

namespace App\Http\Controllers;

use App\Models\prestamos;
use App\Models\devoluciones;
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

class prestamosController extends Controller

{
    /**
     * Display a listing of the resource.
     */
public function index()
    {
        return view("admin.prestamos.index");
    }
public function obtenerDetallesPrestamista($codPrestamista)
{
    // Lógica para buscar los detalles del prestamista en la base de datos
    $prestamistas = prestamistas::where('cod_prestamista', $codPrestamista)->first();

    if ($prestamistas) {
        // Devolver los detalles del prestamista en formato JSON
        return response()->json([
            'nombre_completo' => $prestamistas->nombre_completo,
            'cod_programa' => $prestamistas->cod_programa,
        ]);
    } else {
        // Devolver una respuesta vacía si el prestamista no se encuentra
        return response()->json([]);
    }
}
    
    public function pdf(Request $request)
    {
    $busqueda = $request->get('busqueda', '');

    $prestamos = Prestamos::join('prestamistas', 'prestamos.cod_prestamista', '=', 'prestamistas.id')
    ->join('libros', 'prestamos.titulo', '=', 'libros.id')
        ->where('prestamos.cod_prestamista', 'LIKE', '%' . $busqueda . '%')
        ->orWhere('prestamos.titulo', 'LIKE', '%' . $busqueda . '%')
        ->orWhere('prestamos.fecha_prestamo', 'LIKE', '%' . $busqueda . '%')
        ->orWhere('prestamos.fecha_devolucion', 'LIKE', '%' . $busqueda . '%')
        ->orWhere('prestamos.estatus', 'LIKE', '%' . $busqueda . '%')
        ->orWhere('prestamos.descripcion', 'LIKE', '%' . $busqueda . '%')
        ->orWhere('prestamos.identificacion', 'LIKE', '%' . $busqueda . '%')
        ->select('prestamos.id', 'prestamos.cod_prestamista','prestamos.fecha_prestamo','prestamos.fecha_devolucion','prestamos.identificacion','prestamistas.cod_prestamista AS cod_prestamista', 'libros.titulo AS titulo','prestamos.descripcion','prestamos.estatus')
        ->get();

    // Generar el PDF
    $pdf = Pdf::loadView('admin.prestamos.pdf', compact('prestamos'));

    // Descargar el PDF
    return $pdf->download('listado_prestamos.pdf');
    }
    public function excel(Request $request)
        {
        $busqueda = $request->get('busqueda', '');
        $searchResults = Prestamos::join('prestamistas', 'prestamos.cod_prestamista', '=', 'prestamistas.id')
    ->join('libros', 'prestamos.titulo', '=', 'libros.id')
        ->where('prestamos.cod_prestamista', 'LIKE', '%' . $busqueda . '%')
        ->orWhere('prestamos.titulo', 'LIKE', '%' . $busqueda . '%')
        ->orWhere('prestamos.fecha_prestamo', 'LIKE', '%' . $busqueda . '%')
        ->orWhere('prestamos.fecha_devolucion', 'LIKE', '%' . $busqueda . '%')
        ->orWhere('prestamos.estatus', 'LIKE', '%' . $busqueda . '%')
        ->orWhere('prestamos.descripcion', 'LIKE', '%' . $busqueda . '%')
        ->orWhere('prestamos.identificacion', 'LIKE', '%' . $busqueda . '%')
        ->select('prestamos.id', 'prestamos.cod_prestamista','prestamos.fecha_prestamo','prestamos.fecha_devolucion','prestamos.identificacion','prestamistas.cod_prestamista AS cod_prestamista', 'libros.titulo AS titulo','prestamos.descripcion','prestamos.estatus')
        ->get();
     
        $export = new PrestamosExport($searchResults);
     
        // Puedes usar el exportador como lo hacías antes
        return Excel::download($export, 'prestamos.xlsx');
        }
        public function csv(Request $request)
        {
            $busqueda = $request->get('busqueda', '');
            $searchResults = Prestamos::join('prestamistas', 'prestamos.cod_prestamista', '=', 'prestamistas.id')
            ->join('libros', 'prestamos.titulo', '=', 'libros.id')
            ->where('prestamos.cod_prestamista', 'LIKE', '%' . $busqueda . '%')
            ->orWhere('prestamos.titulo', 'LIKE', '%' . $busqueda . '%')
            ->orWhere('prestamos.fecha_prestamo', 'LIKE', '%' . $busqueda . '%')
            ->orWhere('prestamos.fecha_devolucion', 'LIKE', '%' . $busqueda . '%')
            ->orWhere('prestamos.estatus', 'LIKE', '%' . $busqueda . '%')
            ->orWhere('prestamos.descripcion', 'LIKE', '%' . $busqueda . '%')
            ->orWhere('prestamos.identificacion', 'LIKE', '%' . $busqueda . '%')
            ->select('prestamos.id', 'prestamos.cod_prestamista','prestamos.fecha_prestamo','prestamos.fecha_devolucion','prestamos.identificacion','prestamistas.cod_prestamista AS cod_prestamista', 'libros.titulo AS titulo','prestamos.descripcion','prestamos.estatus')
        ->get();
            
            $export = new PrestamosExport($searchResults);
        
            // Puedes usar el exportador como lo hacías antes
            return Excel::download($export, 'prestamos.csv', Format::CSV);
        }
  
    public function html()
        {
                  // Exporta los datos a un archivo CSV
        return EXCEL::download(new PrestamosExport, 'prestamos.html',Format::HTML);
        }          

    /**
 * Función para realizar la búsqueda de préstamos.
 */
public function search(Request $request)
{
    // Obtener los parámetros de búsqueda del formulario
    // Construir la consulta inicial

    $busqueda = $request->input('busqueda', '');
    $fecha_inicio = $request->input('fecha_inicio');
    $fecha_fin = $request->input('fecha_fin');

    // Construir la consulta inicial
    $query = Prestamos::join('prestamistas', 'prestamos.cod_prestamista', '=', 'prestamistas.cod_prestamista')
    ->leftJoin('libros', 'prestamos.titulo', '=', 'libros.id')
    ->select('prestamos.id', 'prestamos.cod_prestamista', 'prestamos.nombre_completo', 'prestamos.cod_programa', 'prestamos.fecha_prestamo', 'prestamos.fecha_devolucion', 'prestamos.identificacion', 'prestamistas.cod_prestamista AS cod_prestamista', 'libros.titulo AS titulo', 'prestamos.descripcion', 'prestamos.estatus');

    // Aplicar filtro por palabra clave
    if (!empty($busqueda)) {
        $query->where(function ($q) use ($busqueda) {
            $q->where('prestamos.cod_prestamista', 'LIKE', '%' . $busqueda . '%')
                ->orWhere('prestamos.nombre_completo', 'LIKE', '%' . $busqueda . '%')
                ->orWhere('prestamos.cod_programa', 'LIKE', '%' . $busqueda . '%')
                ->orWhere('prestamos.titulo', 'LIKE', '%' . $busqueda . '%')
                ->orWhere('prestamos.descripcion', 'LIKE', '%' . $busqueda . '%')
                ->orWhere('prestamos.identificacion', 'LIKE', '%' . $busqueda . '%')
                ->orWhere('prestamos.estatus', 'LIKE', '%' . $busqueda . '%');
       
        });
    }

    // Aplicar filtro por rango de fechas de préstamo si se proporcionan ambas fechas
    if (!empty($fecha_inicio) && !empty($fecha_fin)) {
        $query->whereDate('prestamos.fecha_prestamo', '>=', $fecha_inicio)
            ->whereDate('prestamos.fecha_prestamo', '<=', $fecha_fin);
    }

    // Obtener los resultados de la consulta con paginación
    $listado = $query->paginate(10); // Cambia el número 10 por el número deseado de elementos por página

    // Pasar los resultados a la vista
    return view("admin.prestamos.list", compact('listado'));
}

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $prestamistas = prestamistas::orderBy('cod_prestamista', 'ASC')->select('cod_prestamista','cod_prestamista')->get();
        $libros = libros::orderBy('titulo', 'ASC')->select('id','titulo')->get();

        return view("admin.prestamos.create", ['prestamistas' => $prestamistas, 'libros' => $libros]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'cod_prestamista' => 'required|string|min:1|max:120',
            'fecha_prestamo' => 'required|date',
            'fecha_devolucion' => 'required|date',
            'identificacion' => 'required',
            'titulo' => 'required',
            'descripcion' => 'required',
            'estatus' => 'required',
        ]);
    
        if ($validator->fails()) {
            $errors = $validator->errors();
            return response()->json(['message' => 'Error en la validacion de los datos', 'errors' => $errors], 422);
        }
    
        try {
            // Obtener detalles del prestamista desde la tabla Prestamistas
            $prestamistas = Prestamistas::where('cod_prestamista', $request->cod_prestamista)->first();
    
            if (!$prestamistas) {
                return response()->json(['message' => 'Prestamista no encontrado'], 404);
            }
    
            // Crear un nuevo préstamo
            $prestamos = new Prestamos();
            $prestamos->cod_prestamista = $request->cod_prestamista;
            $prestamos->nombre_completo = $prestamistas->nombre_completo;
            $prestamos->cod_programa = $prestamistas->cod_programa;
            $prestamos->fecha_prestamo = $request->fecha_prestamo;
            $prestamos->fecha_devolucion = $request->fecha_devolucion;
            $prestamos->identificacion = $request->identificacion;
            $prestamos->titulo = $request->titulo;
            $prestamos->descripcion = $request->descripcion;
            $prestamos->estatus = $request->estatus;
            $prestamos->save();
    
            return response()->json(['message' => '¡Registro exitoso! Se ha registrado correctamente.'], 201);
        } catch (\Throwable $error) {
            Log::error($error->getMessage());
            return response()->json(['message' => 'Error al registrar el préstamo. Contactarse con el área de soporte'], 500);
        }
    }
    

    // Función para obtener los detalles del prestamista

    public function edit(string $id)
    {
        try {
            $prestamos = Prestamos::find($id);
            $prestamistas_prestamos = prestamistas::orderBy('cod_prestamista', 'ASC')->select('id', 'cod_prestamista')->get();
            $libros_prestamos = libros::orderBy('titulo', 'ASC')->select('id', 'titulo')->get();
            return view('admin.prestamos.edit', [
                "item" => $prestamos,
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
            'cod_prestamista' => 'required|string|min:1|max:120',
           
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
            $prestamos = Prestamos::find($id);
            $prestamos->cod_prestamista = $request->get('cod_prestamista');
            $prestamos->nombre_completo = $request['nombre_completo']; 
            $prestamos->cod_programa = $request['cod_programa'];
            $prestamos->fecha_prestamo = $request->get('fecha_prestamo');
            $prestamos->fecha_devolucion = $request->get('fecha_devolucion');
            $prestamos->identificacion = $request->get('identificacion');
            $prestamos->titulo = $request->get('titulo');
            $prestamos->descripcion = $request->get('descripcion');
            $prestamos->estatus = $request->get('estatus');
            $prestamos->save();
            $data = ['message' => 'Actualizado correctamente'];
            return response()->json($data, 200);
        } catch (\Throwable $error) {
            Log::error($error->getMessage());
            $data = [
                'message' => 'Error al actualizar prestamos,intenta'
            ];
            return response()->json($data, 500);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    
}


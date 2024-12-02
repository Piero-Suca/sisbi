<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use Maatwebsite\Excel\Facades\Excel;
use App\Http\Controllers\ExportController;
use App\Http\Controllers\programaController;
use App\Http\Controllers\librosController;
use App\Http\Controllers\revistaController;
use App\Http\Controllers\tesisController;
use App\Http\Controllers\prestamistasController;
use App\Http\Controllers\prestamosController;
use App\Http\Controllers\devolucionController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});


Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    
});

require __DIR__ . '/auth.php';


    Route::middleware(['auth', 'verified'])->group(function () {
    Route::get("/admin", [\App\Http\Controllers\AdminController::class, "index"]);

    // va a crear 6 rutas
    Route::get('/libros', [librosController::class, "index"]);
    Route::get('/prestamos', [prestamosController::class, "index"]);
    Route::get('/prestamistas', [prestamistasController::class, "index"]);
    Route::get('/revistas', [revistasController::class, "index"]);
    Route::get('/tesis', [tesisController::class, "index"]);
    Route::get('/programas', [programasController::class, "index"]);
    Route::get('/devoluciones', [devolucionesController::class, "index"]);
    // rutas para prestamistas

    
    Route::get('/admin/prestamistas/search', [\App\Http\Controllers\prestamistasController::class, 'search'])->name('prestamistas.search');
    Route::resource('/admin/prestamistas', \App\Http\Controllers\prestamistasController::class)->except('show');
    Route::get('/admin/prestamistas/pdf', [\App\Http\Controllers\prestamistasController::class, 'pdf'])->name('prestamistas.pdf');
    Route::get('/prestamistas/excel', [prestamistasController::class, 'excel'])->name('prestamistas.excel');
    Route::get('/prestamistas/csv', [prestamistasController::class, 'csv'])->name('prestamistas.csv');
    Route::get('/prestamistas/html', [prestamistasController::class, 'html'])->name('prestamistas.html');
    // rutas para usuario
    Route::get('/admin/usuario/search', [\App\Http\Controllers\UsuarioController::class, 'search'])->name('usuario.search');
    Route::resource('/admin/usuario', \App\Http\Controllers\UsuarioController::class)->except('show');
 // rutas para libros
    Route::get('/admin/libros/search', [\App\Http\Controllers\librosController::class, 'search'])->name('libros.search');
    Route::resource('/admin/libros', \App\Http\Controllers\librosController::class)->except('show');
    //Route::get('/admin/libros/pdf', [\App\Http\Controllers\librosController::class, 'pdf'])->name('libros.pdf');
    Route::get('/libros/excel', [librosController::class, 'excel'])->name('libros.excel');
    Route::get('/libros/pdf', [librosController::class, 'pdf'])->name('libros.pdf');
    Route::get('/libros/csv', [librosController::class, 'csv'])->name('libros.csv');
    Route::get('/libros/html', [librosController::class, 'html'])->name('libros.html');

     // rutas para Revistas

     Route::get('/admin/revista/search', [\App\Http\Controllers\revistaController::class, 'search'])->name('revista.search');
     Route::resource('/admin/revista', \App\Http\Controllers\revistaController::class)->except('show');
     Route::get('/admin/revista/pdf', [\App\Http\Controllers\revistaController::class, 'pdf'])->name('revista.pdf');
    Route::get('/revista/excel', [revistaController::class, 'excel'])->name('revista.excel');
    Route::get('/revista/csv', [revistaController::class, 'csv'])->name('revista.csv');
    Route::get('/revista/html', [revistaController::class, 'html'])->name('revista.html');
    // rutas para programa
    Route::get("/admin/programa/search", [\App\Http\Controllers\programaController::class, "search"])->name("programa.search");
    Route::resource("/admin/programa", \App\Http\Controllers\programaController::class)->except("show");
    Route::get('/admin/programa/pdf', [\App\Http\Controllers\programaController::class, 'pdf'])->name('programa.pdf');
    Route::get('/programa/excel', [programaController::class, 'excel'])->name('programa.excel');
    Route::get('/programa/csv', [programaController::class, 'csv'])->name('programa.csv');
    Route::get('/programa/html', [programaController::class, 'html'])->name('programa.html');
    //rutas para prestamos
    Route::get('/obtener-detalles-prestamista', [prestamistasController::class, 'obtenerDetallesPrestamista']);
    Route::get('/obtener-detalles-prestamista', 'prestamosController@obtenerDetallesPrestamista');
    
// Ruta para obtener los datos del prestamista
    Route::post('/obtenerDatosPrestamista', 'prestamistaController@obtenerDatosPrestamista');
    Route::get('/obtenerDetallesPrestamista/{codPrestamista}', 'prestamosController@obtenerDetallesPrestamista');

    Route::get('/admin/prestamos/search', [\App\Http\Controllers\prestamosController::class, 'search'])->name('prestamos.search');
    Route::resource('/admin/prestamos', \App\Http\Controllers\prestamosController::class)->except('show');
    Route::get('/admin/prestamos/pdf', [\App\Http\Controllers\prestamosController::class, 'pdf'])->name('prestamos.pdf');
    Route::get('/prestamos/excel', [prestamosController::class, 'excel'])->name('prestamos.excel');
    Route::get('/prestamos/csv', [prestamosController::class, 'csv'])->name('prestamos.csv');
    Route::get('/prestamos/html', [prestamosController::class, 'html'])->name('prestamos.html');

//rutas para tesis
    Route::get('/admin/tesis/search', [\App\Http\Controllers\tesisController::class, 'search'])->name('tesis.search');
    Route::resource('/admin/tesis', \App\Http\Controllers\tesisController::class)->except('show');
    Route::get('/admin/tesis/pdf', [\App\Http\Controllers\tesisController::class, 'pdf'])->name('tesis.pdf');
    Route::get('/tesis/excel', [tesisController::class, 'excel'])->name('tesis.excel');
    Route::get('/tesis/csv', [tesisController::class, 'csv'])->name('tesis.csv');
    Route::get('/tesis/html', [tesisController::class, 'html'])->name('tesis.html');
//rutas devoluciones
    Route::get("/admin/devoluciones/search", [\App\Http\Controllers\devolucionesController::class, "search"])->name("devoluciones.search");
    Route::resource("/admin/devoluciones", \App\Http\Controllers\devolucionesController::class)->except("show");
    Route::get('/admin/devoluciones/pdf', [\App\Http\Controllers\devolucionesController::class, 'pdf'])->name('devoluciones.pdf');
    Route::get('/devoluciones/excel', [devolucionesController::class, 'excel'])->name('devoluciones.excel');
    Route::get('/devoluciones/csv', [devolucionesController::class, 'csv'])->name('devoluciones.csv');
    Route::get('/devoluciones/html', [devolucionesController::class, 'html'])->name('devoluciones.html');


    //Route::get('/devoluciones/create', 'devolucionesController@create')->name('devoluciones.create');
    Route::get('/devoluciones', [devolucionesController::class, 'index'])->name('devoluciones.index');
    
});


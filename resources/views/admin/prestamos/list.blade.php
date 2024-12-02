<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<div class="card">
    <div class="card-header">
        <h3 class="card-title">Resultado de búsqueda</h3>
    </div>
    <!-- /.card-header -->
    <div class="card-body">
    <div class="table-responsive">
        <table id="example2" class="table table-striped table-bordered table-hover">
            <thead>
                <tr>
                    <th>Prestamista</th>
                    <th>Nombre</th>
                    <th>Programa</th>
                    <th>Fecha Prestamo</th>
                    <th>Fecha Devolucion</th>
                    <th>Identificacion</th>
                    <th>Libro</th>
                    <th>Descripción</th>
                    <th>Estatus</th>
                    <th>Opciones</th>
                </tr>
            </thead>
            <tbody>
            @foreach ($listado as $item)
                @php
                    $fechaActual = now(); // Obtener la fecha actual
                    $fechaFin = \Carbon\Carbon::createFromFormat('Y-m-d', $item->fecha_devolucion); // Convertir la fecha de fin del préstamo a objeto Carbon
                    $claseColor = ''; // Variable para almacenar la clase de color

                    // Verificar si el préstamo está pendiente y la fecha actual es posterior a la fecha de entrega
                    if ($item->estatus === 'PENDIENTE' && $fechaActual->greaterThan($fechaFin)) {
                        $claseColor = 'table-danger'; // Marcar la fila como roja
                    } else {
                        // Si el préstamo está marcado como devuelto, asignar color verde directamente
                        $claseColor = ($item->estatus === 'DEVUELTO') ? 'table-success' : 'table-warning';
                    }
                @endphp
                <tr class="{{ $claseColor }}">
                    <td>{{ $item->cod_prestamista }}</td>
                    <td>{{ $item->nombre_completo }}</td>
                    <td>{{ $item->cod_programa }}</td>
                    <td>{{ $item->fecha_prestamo }}</td>
                    <td>{{ $item->fecha_devolucion }}</td>
                    <td>{{ $item->identificacion }}</td>
                    <td>{{ $item->titulo }}</td>
                    <td>{{ $item->descripcion }}</td>
                    <td>{{ $item->estatus }}</td>
                    <td class="text-center">
                        <button onclick="modalEditar({{ $item->id }})" class="btn btn-warning btn-block">
                            <i class="fas fa-sync-alt"></i> Actualizar
                        </button>
                        <button class="btn btn-info btn-block" id="btn-imprimir" style="border-radius: 5px; padding: 5px 10px; border: 1px solid #17a2b8;">
                            <i class="fas fa-print"></i> Boleta
                        </button>
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
    </div>
</div>
</div>
    <!-- /.card-body -->
</div>
<!-- /.card -->
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.4.0/jspdf.umd.min.js"></script>
<script>
document.getElementById("btn-imprimir").addEventListener('click', function() {
    // Obtener la fila seleccionada
    var filaSeleccionada = document.querySelector("tr.table-danger") || document.querySelector("tr.table-warning");

    if (!filaSeleccionada) {
        // Si no se ha seleccionado ninguna fila, muestra un mensaje de error
        Swal.fire({
            icon: 'error',
            title: 'Error',
            text: 'Debes seleccionar un préstamo para imprimir la boleta.'
        });
        return;
    }

    // Obtener los valores de las celdas de la fila seleccionada
    var nombre = filaSeleccionada.cells[0].textContent;
    var nombreCompleto = filaSeleccionada.cells[1].textContent; // Obtener el nombre completo
    var codPrograma = filaSeleccionada.cells[2].textContent; // Obtener el código de programa
    var fechaPrestamo = filaSeleccionada.cells[3].textContent;
    var fechaDevolucion = filaSeleccionada.cells[4].textContent;
    var identificacion = filaSeleccionada.cells[5].textContent;
    var titulo = filaSeleccionada.cells[6].textContent;
    var descripcion = filaSeleccionada.cells[7].textContent;
    var estatus = filaSeleccionada.cells[8].textContent;

    // Crear contenido de la boleta con estilos ajustados
    var contenidoBoleta = `
        <html>
        <head>
            <title>Biblioteca la Salle-Urubamba</title>
            <style>
                /* Estilos para la boleta */
                body {
                    font-family: Arial, sans-serif;
                    margin: 0;
                    padding: 0;
                    width: 80mm; /* Ancho del papel */
                }
                p, h2 {
                    font-size: 10px; /* Reducir tamaño del texto */
                    margin: 0; /* Eliminar márgenes */
                    padding: 0; /* Eliminar relleno */
                    line-height: 1.2; /* Espaciado entre líneas */
                }
                h2 {
                    font-size: 12px; /* Tamaño de fuente para encabezados */
                    margin-bottom: 5px; /* Espaciado inferior para encabezados */
                }
            </style>
        </head>
        <body>
            <h2>Boleta de Préstamo</h2>
            <hr>
            <p><strong>Prestamista:</strong> ${nombre}</p>
            <p><strong>Nombre Completo:</strong> ${nombreCompleto}</p> <!-- Agregar el nombre completo -->
            <p><strong>Código de Programa:</strong> ${codPrograma}</p> <!-- Agregar el código de programa -->
            <p><strong>Fecha de Préstamo:</strong> ${fechaPrestamo}</p>
            <p><strong>Fecha de Devolución:</strong> ${fechaDevolucion}</p>
            <p><strong>Identificación:</strong> ${identificacion}</p>
            <p><strong>Libro:</strong> ${titulo}</p>
            <p><strong>Descripción:</strong> ${descripcion}</p>
            <p><strong>Estatus:</strong> ${estatus}</p>
        </body>
        </html>
    `;

    // Abrir una nueva ventana con el contenido de la boleta para impresión
    var ventanaImpresion = window.open('', '_blank');
    ventanaImpresion.document.write(contenidoBoleta);
    ventanaImpresion.document.close();

    // Imprimir el contenido en la nueva ventana
    ventanaImpresion.print();
});
</script>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrar Préstamo</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <!-- Agrega tus estilos CSS personalizados aquí -->
    <style>
        /* Estilos personalizados */
    </style>
</head>
<body>
<div id="contenedor-principal">
    <div style="border: 2px solid #6b1b31; border-radius: 10px; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; width: 800px; margin: 0 auto; background: linear-gradient(rgba(225, 209, 213), #ffffff); color: #333; padding: 20px;">
        <h2 style="margin: 0; padding-bottom: 20px; color: #6b1b31; text-align: center;">REGISTRAR PRÉSTAMO</h2>
        <form action="" id="formulario-crear" autocomplete="off">
        <div class="modal-body">
            <!-- Grupo de Prestamistas, DNI, Programa e Identificación -->
            <div class="form-row justify-content-center text-center">
                <div class="form-group col-md-9"> 
                    <label for="cod_prestamista" style="font-weight: bold;">Préstamista:</label>
                    <input type="text" name="cod_prestamista" id="cod_prestamista" class="form-control" placeholder="Ingrese el código del prestamista">
                </div>
                <div class="form-group col-md-6">
                    <label for="dni" style="font-weight: bold;">Nombre Completo:</label>
                    <input type="text" name="nombre_completo" id="nombre_completo" class="form-control" readonly>
                </div>
                <div class="form-group col-md-6">
                    <label for="cod_prestamista" style="font-weight: bold;">Programa:</label>
                    <input type="text" name="cod_programa" id="cod_programa" class="form-control" readonly>
                </div>
                <div class="form-group col-md-6 text-center"> <!-- Centrado -->
                    <label for="identificacion" style="font-weight: bold;">Identificación:</label>
                    <select class="form-control" name="identificacion" id="identificacion" required>
                        <option value="" disabled selected>Elige una opción</option>
                        <option value="CARNET">CARNET</option>
                        <option value="DNI">DNI</option>
                    </select>
                </div>
            </div>
            <!-- Grupo de Fecha de Préstamo y Fecha de Devolución -->
            <div class="form-row justify-content-center"> 
                <div class="form-group col-md-6"> <!-- Centrado -->
                    <label for="fecha_prestamo" style="font-weight: bold;">Fecha de Préstamo:</label>
                    <input type="date" name="fecha_prestamo" id="fecha_prestamo" class="form-control" value="{{ date('Y-m-d') }}" required>
                </div>
                <div class="form-group col-md-6">  <!-- Centrado -->
                    <label for="fecha_fin" style="font-weight: bold;">Fecha de Devolución:</label>
                    <input type="date" name="fecha_devolucion" id="fecha_devolucion" class="form-control" value="{{ date('Y-m-d') }}" required>
                </div>
            </div>
            
            <!-- Grupo de Libro y Descripción -->
            <div class="form-row justify-content-center">
                <div class="form-group col-md-6"> <!-- Centrado -->
                    <label for="titulo" style="font-weight: bold;">Libro:</label>
                    <select name="titulo" id="titulo" class="form-control">
                        <option value="">[--SELECCIONE--]</option>
                        @foreach ($libros as $libro)
                            <option value="{{ $libro->id }}">{{ $libro->titulo }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group col-md-6">
                    <label for="descripcion" style="font-weight: bold;">Descripción:</label>
                    <select class="form-control" name="descripcion" id="descripcion" required>
                        <option value="" disabled selected>Elige una opción</option>
                        <option value="LIBRO NUEVO">LIBRO NUEVO</option>
                        <option value="LIBRO EN BUEN ESTADO">LIBRO EN BUEN ESTADO</option>
                        <option value="LIBRO MALTRATADO">LIBRO MALTRATADO</option>
                        <option value="LIBRO EN MAL ESTADO">LIBRO EN MAL ESTADO</option>
                        <option value="LIBRO EN BUEN ESTADO">LIBRO EN BUEN ESTADO</option>
                    </select>
                </div>
            </div>
            <!-- Campo de Estatus -->
            <div class="form-row justify-content-center text-center">
                <div class="form-group col-md-6"> <!-- Centrado -->
                    <label for="estatus" style="font-weight: bold;">Estatus:</label>
                    <select class="form-control" name="estatus" id="estatus" required>
                        <option value="PENDIENTE">PENDIENTE</option>
                    </select>
                </div>
            </div>
        </div>
        <!-- Botones del formulario -->
        <div class="modal-footer justify-content-between">
            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fas fa-window-close"></i> Cerrar</button>
            <button id="btn-submit" type="submit" class="btn btn-success"><i class="fas fa-save"></i> Registrar</button>
        </div>
    </form>
</div>
</div>
<!-- Agrega los scripts necesarios aquí -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.4.0/jspdf.umd.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script> 
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    
<script>
     function mostrarAlerta(mensaje, tipo) {
    Swal.fire({
        icon: tipo,
        title: mensaje,
        showConfirmButton: false,
        timer: 1500
    });
}

// Agregar el evento 'submit' al formulario
document.getElementById("formulario-crear").addEventListener('submit', function(evento) {
    evento.preventDefault();
    guardar();

    // Obtener valores del formulario y crear contenido de la boleta
    var codPrestamista = document.getElementById("cod_prestamista").value;
    var nombre = document.getElementById("nombre_completo").value;
    var programa = document.getElementById("cod_programa").value;
    var fechaInicio = document.getElementById("fecha_prestamo").value;
    var fechaFin = document.getElementById("fecha_devolucion").value;
    var identificacion = document.getElementById("identificacion").value;
    var titulo = document.getElementById("titulo").options[document.getElementById("titulo").selectedIndex].text;
    var descripcion = document.getElementById("descripcion").value;
    var estatus = document.getElementById("estatus").value;

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
            <p><strong>Cod_Prestamista:</strong>${codPrestamista}</p>
            <p><strong>Cod_Prestamista:</strong>${nombre}</p>
            <p><strong>Programa:</strong> ${programa}</p>
            <p><strong>Fecha de Préstamo:</strong> ${fechaInicio}</p>
            <p><strong>Fecha de Devolución:</strong> ${fechaFin}</p>
            <p><strong>Identificación:</strong> ${identificacion}</p>
            <p><strong>Libro:</strong> ${titulo}</p>
            <p><strong>Descripción:</strong> ${descripcion}</p>
            <p><strong>Estatus:</strong> ${estatus}</p>
        </body>
        </html>
    `;

    // Imprimir el contenido en la misma ventana
    var ventanaImpresion = window.open('', '_blank');
    ventanaImpresion.document.write(contenidoBoleta);
    ventanaImpresion.document.close();

    // Imprimir el contenido en la nueva ventana
    ventanaImpresion.print();

    // Esperar un tiempo antes de actualizar la página
    setTimeout(function() {
        location.reload();
    }, 4000);
});

// Mostrar el mensaje de registro exitoso fuera de la función de envío del formulario

document.getElementById("btn-imprimir").addEventListener('click', function() {
    // Obtener valores del formulario y crear contenido de la boleta
    var codPrestamista = document.getElementById("cod_prestamista").value;
    var nombre = document.getElementById("nombre_completo").value;
    var programa = document.getElementById("cod_programa").value;
    var fechaInicio = document.getElementById("fecha_prestamo").value;
    var fechaFin = document.getElementById("fecha_devolucion").value;
    var identificacion = document.getElementById("identificacion").value;
    var titulo = document.getElementById("titulo").options[document.getElementById("titulo").selectedIndex].text;
    var descripcion = document.getElementById("descripcion").value;
    var estatus = document.getElementById("estatus").value;

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
            <p><strong>Prestamista:</strong> ${nombre} (${codPrestamista})</p>
            <p><strong>Programa:</strong> ${programa}</p>
            <p><strong>Fecha de Préstamo:</strong> ${fechaInicio}</p>
            <p><strong>Fecha de Devolución:</strong> ${fechaFin}</p>
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

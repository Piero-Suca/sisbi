@extends('layouts.admin')

@section('titulo')
    PRESTAMOS | Laravel
@endsection

@section('contenido')
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">PRESTAMOS</h1>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->

        <!-- Main content -->
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card card-primary card-outline">
                            <div class="card-header">
                                <h5 class="m-0">Búsqueda de préstamos</h5>
                            </div>
                            <div class="card-body">
                                <form id="formulario-busqueda" method="GET" class="form-inline justify-content-between">
                                    <div class="form-group mr-2">
                                        <label for="busqueda" class="mr-2">Búsqueda por palabra clave:</label>
                                        <input type="text" class="form-control" id="busqueda" name="busqueda" value="{{ request('busqueda') }}">
                                    </div>
                                    <div class="form-group mr-2">
                                        <label for="fecha_inicio" class="mr-2">Fecha de inicio:</label>
                                        <input type="date" class="form-control" id="fecha_inicio" name="fecha_inicio" value="{{ request('fecha_inicio') }}">
                                    </div>
                                    <div class="form-group mr-2">
                                        <label for="fecha_fin" class="mr-2">Fecha de fin:</label>
                                        <input type="date" class="form-control" id="fecha_fin" name="fecha_fin" value="{{ request('fecha_fin') }}">
                                    </div>
                                    <button type="submit" class="btn btn-primary mr-2">Buscar</button>
                                    <button onclick="modalCrear()" type="button" class="btn btn-success my-1 mx-1"><i class='fa fa-user-plus fa-lg'></i></button>
                                    <div class="button-container" style='margin-left: auto;'>
                                    <a href="{{route('prestamos.pdf')}}"class="btn btn-danger" target="_blank" style='width:60px; height:40px;background-color:#0a0a0a'><i class='fas fa-file-pdf fa-lg'></i></a>
                                    <a href="{{route('prestamos.csv') }}"type="button" class="btn btn-success my-1 mx-1" style='width:60px; height:40px; background-color:#0a0a0a'><i class='fas fa-file-csv fa-lg'></i></a>
                                    <a href="{{route('prestamos.excel')}}"class="btn btn-danger" target="_blank" style='width:60px; height:40px; background-color:#0a0a0a'><i class='fas fa-file-excel fa-lg'></i></a>
                                    <a href="{{route('prestamos.html') }}"type="button" class="btn btn-success my-1 mx-1"style='width:60px; height:40px; background-color:#0a0a0a'><i class='fa fa-clone fa-lg'></i></a>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12" id="listado">
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
@endsection

@section('modales')
    <div class="modal fade" id="modal-agregar" data-backdrop="static" data-keyboard="false" tabindex="-1"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content" id="modal-agregar-contenido">
            </div>
        </div>
    </div>

    <div class="modal fade" id="modal-editar" data-backdrop="static" data-keyboard="false" tabindex="-1"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content" id="modal-editar-contenido">
            </div>
        </div>
    </div>
@endsection

@section('javascript')
    <script>
     document.getElementById("formulario-busqueda").addEventListener("submit", function(evento) {
    evento.preventDefault();
    search();
});

// evento de carga completa de la pagina
document.addEventListener("DOMContentLoaded", function() {
    search();
});

// realizar la peticion ajax y recibir el resultado
function search() {
    const busqueda = document.getElementById("busqueda").value;
    const fecha_inicio = document.getElementById("fecha_inicio").value;
    const fecha_fin = document.getElementById("fecha_fin").value;
    
    const ruta = "{{ route('prestamos.search') }}";

    axios.get(ruta, {
        params: {
            "busqueda": busqueda,
            "fecha_inicio": fecha_inicio,
            "fecha_fin": fecha_fin
        }
    }).then(function(response) {
        // cuando la peticion indicado que todo esta OK: 100, 200, 300
        const tabla_html = response.data;
        $("#listado").html(tabla_html);
    }).catch(function(error) {
        // cuando ha ocurrido un error: 400 o 500
        console.error(error);
    });
}

        function modalCrear() {
            const ruta = route("prestamos.create");

            axios.get(ruta)
                .then(function(respuesta) {
                    $('#modal-agregar-contenido').html(respuesta.data);
                    $('#modal-agregar').modal('show');
                }).catch(function() {

                })

        }

        function guardar() {
            const ruta = route('prestamos.store');
            const form = document.getElementById('formulario-crear');
            const data = new FormData(form);

            axios.post(ruta, data)
                .then(function(respuesta) {
                    // 100,200,300
                    const mensaje = respuesta.data.message;
                    toastr.success(mensaje);
                    $('#modal-agregar').modal('hide');
                    search();
                })
                .catch(function(error) {
                    // 2 tipos
                    // TIPO 1: 400,500
                    if (error.response) {
                        toastr.error(error.response.data.message, "Error del sistema");
                        if (error.response.status === 422) {
                            // entidad improcesable: cuando hay error en la validacion de los datos
                            // funcion que genere los mensajes de error
                            mostrarErrores('formulario-crear', error.response.data.errors);
                        }
                    } else {
                        toastr.error(error);
                    }
                    // TIPO 2: cuando se comete un error dentro del METODO THEN
                });
        }

        function modalEditar(id) {
            // /admin/tipocurso/8/edit
            const ruta = route('prestamos.edit', [id]);

            axios.get(ruta)
                .then(function(respuesta) {
                    $("#modal-editar-contenido").html(respuesta.data);
                    $("#modal-editar").modal('show');
                })
                .catch(function(error) {
                    if (error.response) {
                        toastr.error(error.response.data.message, "Error del sistema");
                    } else {
                        toastr.error(error);
                    }
                });


        }

        function actualizar(id) {
            const ruta = route('prestamos.update', [id]);
            const form = document.getElementById("formulario-editar");
            const data = new FormData(form);

            axios.post(ruta, data)
                .then(function(respuesta) {
                    toastr.success(respuesta.data.message);
                    $('#modal-editar').modal('hide');
                    search();
                })
                .catch(function(error) {
                    if (error.response) {
                        toastr.error(error.response.data.message, 'Error en el sistema');
                        if (error.response.status === 422) {
                            mostrarErrores('formulario-editar', error.response.data.errors);
                        }
                    } else {
                        toastr.error(error);
                    }

                });

        }

        
    
    </script>
@endsection

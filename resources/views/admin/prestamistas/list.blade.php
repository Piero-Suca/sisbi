<div class="card">
    <div class="card-header">
        <h3 class="card-title">Resultado de búsqueda</h3>
    </div>
    <!-- /.card-header -->
    <div class="card-body">
        <table id="example2" class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th>COD_PRESTAMISTA</th>
                    <th>PRESTAMISTA</th>
                    <th>EMAIL</th>
                    <th>DNI</th>
                    <th>CARGO</th>
                    <th>PROGRAMA</th>
                    <th>telefono</th>
                    
                    <th style="max-width: 200px">Opciones</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($listado as $item)
                    <tr>
                        <td>{{ $item->cod_prestamista}}</td>
                        <td>{{ $item->nombre_completo}}</td>
                        <td>{{ $item->email}}</td>
                        <td>{{ $item->dni }}</td>
                        <td>{{ $item->cargo}}</td>
                        <td>{{ $item->cod_programa}}</td>
                        <td>{{ $item->telefono}}</td> 
                        <td class="text-center">
                            <button onclick="modalEditar({{ $item->id }})" class="btn btn-warning">Editar</button>
                            <button onclick="confirmarEliminar({{ $item->id }})"
                                class="btn btn-danger">Eliminar</button>
                        </td>
                    </tr>
                @endforeach
            </tbody>
            
        </table>
    </div>
    <!-- /.card-body -->
</div>
<!-- /.card -->
<script>
    $('#example2').DataTable({
        language: {
            url: '//cdn.datatables.net/plug-ins/1.13.4/i18n/es-ES.json',
        },
        "responsive": true,
        "columnDefs": [{
            targets: 3,
            orderable: false,
            searchable: false
        }]
    });
</script>

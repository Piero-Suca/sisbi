<div class="modal-header">
    <h4 class="modal-title">Editar prestamos</h4>
</div>
<form action="" id="formulario-editar" autocomplete="off">
    @method('PUT')
    <div class="modal-body">
    <div class="form-group row">
            <label class="col-sm-6 col-form-label" for="nombre_completo">Prestamista</label>
            <div class="col-sm-8">
                <select name="nombre_completo" id="nombre_completo" class="form-control">
                    <option value="">[--SELECCIONE--]</option>
                    @foreach ($prestamistas_prestamos as $prestamistas)
                        <option value="{{ $prestamistas->id }}">{{ $prestamistas->nombre_completo }}</option>
                    @endforeach
                </select>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-4 col-form-label" for="fecha_inicio">FECHA PRESTAMO</label>
            <div class="col-sm-8">
                <input type="date" name="fecha_inicio" id="fecha_inicio" class="form-control" value="{{ $item->fecha_inicio}}" />
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-4 col-form-label" for="fecha_fin">FECHA DEVOLUCION</label>
            <div class="col-sm-8">
                <input type="date" name="fecha_fin" id="fecha_fin" class="form-control" value="{{ $item->fecha_fin }}" />
            </div>
        </div>
            <div class="form-group row">
            <label class="col-sm-6 col-form-label" for="titulo">lIBRO</label>
            <div class="col-sm-8">
                <select name="titulo" id="titulo" class="form-control">
                    <option value="">[--SELECCIONE--]</option>
                    @foreach ($libros_prestamos as $libros)
                        <option value="{{ $libros->id }}">{{ $libros->titulo}}</option>
                    @endforeach
                </select>
            </div>
        </div>
    </div>

    <div class="modal-footer justify-content-between">
        <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fas fa-window-close"></i> Cerrar
        </button>
        <button id="btn-submit" type="submit" class="btn btn-primary"><i class="fas fa-save"></i>
            Actualizar</button>
    </div>
</form>
<script>
    document.getElementById("formulario-editar").addEventListener('submit', function(evento) {
        evento.preventDefault();
        actualizar({{ $item->id }});
    });
</script>

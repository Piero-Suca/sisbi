<div class="modal-header">
    <h4 class="modal-title">Registrar prestamo</h4>
</div>
<form action="" id="formulario-crear" autocomplete="off">
    <div class="modal-body">
        <div class="form-group row">
            <label class="col-sm-6 col-form-label" for="nombre_completo">PRESTAMISTA</label>
            <div class="col-sm-8">
                <select name="nombre_completo" id="nombre_completo" class="form-control">
                    <option value="">[--SELECCIONE--]</option>
                    @foreach ($prestamistas as $prestamistas)
                        <option value="{{ $prestamistas->id }}">{{ $prestamistas->nombre_completo }}</option>
                    @endforeach
                </select>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-4 col-form-label" for="fecha_inicio">FECHA PRESTAMO</label>
            <div class="col-sm-8">
                <input type="date" name="fecha_inicio" id="fecha_inicio" class="form-control" />
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-4 col-form-label" for="fecha_fin">FECHA DEVOLUCION</label>
            <div class="col-sm-8">
                <input type="date" name="fecha_fin" id="fecha_fin" class="form-control" />
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-6 col-form-label" for="titulo">Libro</label>
            <div class="col-sm-8">
                <select name="titulo" id="titulo" class="form-control">
                    <option value="">[--SELECCIONE--]</option>
                    @foreach ($libros as $libros)
                        <option value="{{ $libros->id}}">{{ $libros->titulo}}</option>
                    @endforeach
                </select>
            </div>
        </div>
    </div>
    <div class="modal-footer justify-content-between">
        <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fas fa-window-close"></i> Cerrar
        </button>
        <button id="btn-submit" type="submit" class="btn btn-primary"><i class="fas fa-save"></i>
            Registrar</button>
    </div>
</form>
<script>
    document.getElementById("formulario-crear").addEventListener('submit', function(evento) {
        evento.preventDefault();
        guardar();
    });
</script>

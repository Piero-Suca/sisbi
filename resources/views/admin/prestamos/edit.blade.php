<div style="border: 2px solid #6b1b31; border-radius: 10px; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; width: 800px; margin: 0 auto; background: linear-gradient(rgba(225, 209, 213), #ffffff); color: #333; padding: 20px;">
    <h2 style="margin: 0; padding-bottom: 20px; color: #6b1b31; text-align: center;">ACTUALIZAR PRÉSTAMO</h2>
    <form action="" id="formulario-editar" autocomplete="off">
    @method('PUT')
    <div class="modal-body">
        <div class="form-group row">
            <label class="col-sm-4 col-form-label" for="cod_prestamista">PRESTAMISTA</label>
            <div class="col-sm-8">
                <input type="text" name="cod_prestamista" id="cod_prestamista" class="form-control" value="{{ $item->cod_prestamista}}" required />
            </div>
        </div>
        <div class="form-group row">
        <label class="col-sm-4 col-form-label" for="nombre_completo">NOMBRE PRESTAMISTA</label>
        <div class="col-sm-8">
                <input type="text" name="nombre_completo" id="nombre_completo" class="form-control" value="{{ $item->nombre_completo}}" />
            </div>
        </div>
        <div class="form-group row">
        <label class="col-sm-4 col-form-label" for="cod_programa">PROGRAMA</label>
        <div class="col-sm-8">
                <input type="text" name="cod_programa" id="cod_programa" class="form-control" value="{{ $item->cod_programa}}" />
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-4 col-form-label" for="fecha_prestamo">FECHA PRESTAMO</label>
            <div class="col-sm-8">
                <input type="date" name="fecha_prestamo" id="fecha_prestamo" class="form-control" value="{{ $item->fecha_prestamo}}" />
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-4 col-form-label" for="fecha_devolucion">FECHA DEVOLUCION</label>
            <div class="col-sm-8">
                <input type="date" name="fecha_devolucion" id="fecha_devolucion" class="form-control" value="{{ $item->fecha_devolucion }}" />
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-4 col-form-label" for="identificacion">IDENTIFICACION</label>
            <div class="col-sm-8">
                <select class="form-control" name="identificacion" id="identificacion">
                    <option value="" disabled>Elige una opción</option>
                    <option value="CARNET" {{ $item->identificacion == 'CARNET' ? 'selected' : '' }}>CARNET</option>
                    <option value="DNI" {{ $item->identificacion == 'DNI' ? 'selected' : '' }}>DNI</option>
                </select>
            </div>
            </div>
            <div class="form-group row">
            <label class="col-sm-6 col-form-label" for="titulo">LIBRO</label>
            <div class="col-sm-8">
                <select name="titulo" id="titulo" class="form-control">
                    <option value="{{ $item->titulo}}">[--SELECCIONE--]</option>
                    @foreach ($libros_prestamos as $libros)
                        <option value="{{ $libros->id }}" {{ $libros->id == $item->titulo ? 'selected' : '' }}> {{ $libros->titulo }}</option>
                    @endforeach
                </select>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-4 col-form-label" for="descripcion">DESCRIPCION</label>
            <div class="col-sm-8">
                <input type="text" name="descripcion" id="descripcion" class="form-control" value="{{ $item->descripcion}}" required />
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-4 col-form-label" for="estatus">ESTATUS</label>
            <div class="col-sm-8">
            <select class="form-control" name="estatus" id="estatus">
                    <option value="" disabled>Elige una opción</option>
                    <option value="PENDIENTE" {{ $item->estatus == 'PENDIENTE' ? 'selected' : '' }}>PENDIENTE</option>
                    <option value="DEVUELTO" {{ $item->estatus == 'DEVUELTO' ? 'selected' : '' }}>DEVUELTO</option>
                </select></DIV>
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

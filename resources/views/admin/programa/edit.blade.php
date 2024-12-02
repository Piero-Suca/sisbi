<div style="border-style:outsed;font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;width: 495px; height: 400px; background:linear-gradient(rgba(225,209,213),#6b1b31);color">
<div class="modal-header">
    <h4 class="modal-title">Editar tipo de programa</h4>
</div>
<form action="" id="formulario-editar" autocomplete="off">
    @method('PUT')
    <div class="modal-body">
    <div class="form-group row">
            <label class="col-sm-4 col-form-label" for="cod_programa">Programa de Estudio</label>
            <div class="col-sm-8">
                <input type="text" name="cod_programa" id="cod_programa" class="form-control" value="{{ $item->cod_programa }}" />
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-4 col-form-label" for="nombre">Nombre del Programa</label>
            <div class="col-sm-8">
                <input type="text" name="nombre" id="nombre" class="form-control" value="{{ $item->nombre }}" />
            </div>
        </div> 
        <div class="form-group row">
            <label class="col-sm-4 col-form-label" for="rd_creacion">Año de Creacion</label>
            <div class="col-sm-8">
                <input type="text" name="rd_creacion" id="rd_creacion" class="form-control" value="{{ $item->rd_creacion }}" />
            </div>
        </div>
    </div>
    <div class="modal-footer justify-content-between">
        <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fas fa-window-close"></i> Cerrar
        </button>
        <button id="btn-submit" type="submit" class="btn btn-primary"><i class="fas fa-save"></i>
            Actualizar</button>
    </div>
</form></div>
<script>
    document.getElementById("formulario-editar").addEventListener('submit', function(evento) {
        evento.preventDefault();
        actualizar({{ $item->id }});
    });
</script>

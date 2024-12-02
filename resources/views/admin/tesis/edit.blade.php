<div style="border-style:outsed;font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;width: 600px; height: 510px; background:linear-gradient(rgba(225,209,213),#6b1b31);color">
<div class="modal-header">
    <h4 class="modal-title">Editar Tesis</h4>
</div>
<form action="" id="formulario-editar" autocomplete="off">
    @method('PUT')
    <div class="modal-body">
    <div class="form-group row">
            <label class="col-sm-4 col-form-label" for="cod_programa">programa</label>
            <div class="col-sm-8">
                <select name="cod_programa" id="cod_programa" class="form-control">
                    <option value="">[--SELECCIONE--]</option>

                    @foreach ($programa_tesis as $programa)
                    <option value="{{$programa->cod_programa}}">{{$programa->cod_programa}}</option>
                    @endforeach
 
                </select>
        </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-6 col-form-label" for="titulo_tesis">Título</label>
            <div class="col-sm-8">
                <input type="text" name="titulo_tesis" id="titulo_tesis" class="form-control" value="{{ $item->titulo_tesis }}"/>
            </div>
        </div> 
        
       
        <div class="form-group row">
            <label class="col-sm-6 col-form-label" for="autor">Autor</label>
            <div class="col-sm-8">
                <input type="text" name="autor" id="autor" class="form-control" value="{{ $item->autor }}"/>
            </div>
        </div> 
        <div class="form-group row">
            <label class="col-sm-4 col-form-label" for="anio_ingreso">Fecha</label>
            <div class="col-sm-8">
                <input type="text" name="anio_ingreso" id="anio_ingreso" class="form-control" value="{{ $item->anio_ingreso }}"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-4 col-form-label" for="orden_tesis">Orden Tesis</label>
            <div class="col-sm-8">
                <input type="text" name="orden_tesis" id="orden_tesis" class="form-control" value="{{ $item->orden_tesis }}"/>
            </div>
        </div>
        <div class="modal-footer justify-content-between">
        <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fas fa-window-close"></i> Cerrar
        </button>
        <button id="btn-submit" type="submit" class="btn btn-primary"><i class="fas fa-save"></i>
            Actualizar</button>
    </div>
    </div>
</form>
</div>
<script>
    document.getElementById("formulario-editar").addEventListener('submit', function(evento) {
        evento.preventDefault();
        actualizar({{ $item->id }});
    });
</script>

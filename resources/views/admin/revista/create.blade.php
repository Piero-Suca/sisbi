<div style="border-style:outsed;font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;width: 540px; height: 500px; background:linear-gradient(rgba(225,209,213),#6b1b31);color">
<div class="modal-header">
    <h4 class="modal-title">Registrar Revista</h4>
</div>
<form action="" id="formulario-crear" autocomplete="off">
    <div class="modal-body">
        <div class="form-group row">
            <label class="col-sm-6 col-form-label" for="cod_programa">Tipo programa</label>
            <div class="col-sm-8">
                <select name="cod_programa" id="cod_programa" class="form-control">
                    <option value="">[--SELECCIONE--]</option>
                    @foreach ($programas as $programa)
                        <option value="{{ $programa->cod_programa }}">{{ $programa->cod_programa }}</option>
                    @endforeach
                </select>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-4 col-form-label" for="titulo">Título</label>
            <div class="col-sm-8">
                <input type="text" name="titulo" id="titulo" class="form-control" />
            </div>
        </div>
        
        <div class="form-group row">
            <label class="col-sm-4 col-form-label" for="autor">Autor</label>
            <div class="col-sm-8">
                <input type="text" name="autor" id="autor" class="form-control" />
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-4 col-form-label" for="fecha_ingreso">Cantidad</label>
            <div class="col-sm-8">
                <input type="text" name="cantidad" id="cantidad" class="form-control" />
            </div>
        </div>
        <div class="form-group row" style="align-center">
          <label class="col-sm-4 col-form-label" for="estado">Estado :</label>
            <div class="col-sm-5">
                <select name="estado" id="estado" class="form-control">
                <option id="estado">[--Indique estado--]</option>
                <option id="estado">Bueno</option>
                <option id="estado">Malo</option>
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
</form></div>
<script>
    document.getElementById("formulario-crear").addEventListener('submit', function(evento) {
        evento.preventDefault();
        guardar();
    });
</script>
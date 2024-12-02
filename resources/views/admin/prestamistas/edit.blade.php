<div style="border-style:outsed;font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;width: 600px; height: 680px; background:linear-gradient(rgba(225,209,213),#6b1b31);color">
<div class="modal-header">
    <h4 class="modal-title">Editar prestamistas</h4>
</div>
<form action="" id="formulario-editar" autocomplete="off">
    @method('PUT')
    <div class="modal-body">
    <div class="form-group row">
            <label class="col-sm-6 col-form-label" for="cod_programa">Tipo programa</label>
            <div class="col-sm-8">
                <select name="cod_programa" id="cod_programa" class="form-control">
                    <option value="">[--SELECCIONE--]</option>
                    @foreach ($programa_prestamistas as $programa)
                        <option value="{{ $programa->cod_programa }}">{{ $programa->cod_programa }}</option>
                    @endforeach
                </select>
            </div>
        </div>
        <div class="form-group row" style="align-center">
          <label class="col-sm-4 col-form-label" for="telefono">telefono</label>
            <div class="col-sm-5">
                <select name="telefono" id="telefono" class="form-control" value="{{ $item->telefono }}">
                <option id="telefono">[--Indique telefono--]</option>
                <option id="telefono">I</option>
                <option id="telefono">II</option>
                <option id="telefono">III</option>
                <option id="telefono">IV</option>
                <option id="telefono">VI</option>
                <option id="telefono">VII</option>
                <option id="telefono">VIII</option>
                <option id="telefono">IX</option>
                <option id="telefono">X</option>
                <option id="telefono">NA</option>   
                </select>
            </div>        
        </div>
        <div class="form-group row">
            <label class="col-sm-4 col-form-label" for="cod_prestamista">Cod_prestamista</label>
            <div class="col-sm-8">
                <input type="text" name="cod_prestamista" id="cod_prestamista" class="form-control" />
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-6 col-form-label" for="nombre_completo">Nombre</label>
            <div class="col-sm-8">
                <input type="text" name="nombre_completo" id="nombre_completo" class="form-control" value="{{ $item->nombre_completo }}" />
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-6 col-form-label" for="email">Email</label>
            <div class="col-sm-8">
                <input type="text" name="email" id="email" class="form-control" value="{{ $item->email }}" />
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-6 col-form-label" for="dni">dni</label>
            <div class="col-sm-8">
                <input type="text" name="dni" id="dni" class="form-control" value="{{ $item->dni }}" />
            </div>
        </div>
        <div class="form-group row" style="align-center">
          <label class="col-sm-4 col-form-label" for="cargo">Cargo</label>
            <div class="col-sm-5">
                <select name="cargo" id="cargo" class="form-control" value="{{ $item->cargo}}">
                <option id="cargo">[--Indique Cargo--]</option>
                <option id="cargo">Docente</option>
                <option id="cargo">Estudiante</option>
                <option id="cargo">Administrativo</option>
                </select>
            </div>        
    </div>
    <div class="modal-footer justify-content-between">
        <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fas fa-window-close"></i> Cerrar
        </button>
        <button id="btn-submit" type="submit" class="btn btn-primary"><i class="fas fa-save"></i>
            Actualizar</button>
    </div>
</form>
</div>
<script>
    document.getElementById("formulario-editar").addEventListener('submit', function(evento) {
        evento.preventDefault();
        actualizar({{ $item->id }});
    });
</script>

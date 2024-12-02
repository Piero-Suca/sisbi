<div class="modal-header">
    <h4 class="modal-title">Editar estudiante</h4>
</div>
<form action="" id="formulario-editar" autocomplete="off">
    @method('PUT')
    <div class="modal-body">
        <div class="form-group row">
            <label class="col-sm-4 col-form-label" for="programa_id">programa</label>
            <div class="col-sm-8">
                <select name="programa_id" id="programa_id" class="form-control">
                    <option value="">[--SELECCIONE--]</option>

                    @foreach ($programa_estudiante as $programa)
                    <option value="{{$programa->id}}">{{$programa->nombre}}</option>


                    @endforeach

                    
                </select>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-6 col-form-label" for="nombre">Nombre</label>
            <div class="col-sm-8">
                <input type="text" name="nombre" id="nombre" class="form-control" value="{{ $item->nombre }}" />
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-6 col-form-label" for="apellidos">Apellidos</label>
            <div class="col-sm-8">
                <input type="text" name="apellidos" id="apellidos" class="form-control" value="{{ $item->apellidos }}" />
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
        <div class="form-group row">
            <label class="col-sm-6 col-form-label" for="semestre">semestre</label>
            <div class="col-sm-8">
                <input type="text" name="semestre" id="semestre" class="form-control" value="{{ $item->semestre }}" />
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

@section('content')
    <h2>Registrar Devolución</h2>

    <form action="{{ route('devoluciones.index') }}" method="POST">
        @csrf

        <!-- Otros campos del formulario -->

        <div class="form-group">
            <label for="id_prestamo">ID de Préstamo:</label>
            <input type="text" name="id_prestamo" value="{{ $prestamo->id }}" readonly>
        </div>

        <div class="form-group">
            <label for="fecha_devolucion">Fecha Devolución:</label>
            <input type="date" name="fecha_devolucion" required>
        </div>

        <button type="submit">Registrar Devolución</button>
        </form>
@endsection
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

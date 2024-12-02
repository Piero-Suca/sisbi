<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reporte de atencion</title>
    <link rel="stylesheet" href="../resources/views/dist/css/adminlte2.css">
</head>
<body>
    <header>
    <table>
            <tr>
                <td><img src="../img/logo_lasalle.png" width="120px" height="50px"alt=""></td>
                <td id="titulo"><h2>&nbsp;&nbsp;Instituto de educación superior Tecnológico Público La Salle Urubamba &nbsp;&nbsp;</h2></td>
                <td class="pdftitulo"><img src="../img/st.png" style="max-width: 100px"alt=""></td>
            </tr>

        </table>
       
    </header>
    <section style="padding-bottom: 20px; padding-top: 20px;">
    <div class="container">
        <h2 style="text-align:center;">LISTA DE PRESTAMOS</h2>
        <table id="tabla">
        <thead>
                <tr>
                <th class="center" style="font-weight:bold; border:1px solid #1d1d1d;background-color: #03a9f4;color:#fff" width="5%">ID</th>
                    <th class="center" style="font-weight:bold; border:1px solid #1d1d1d;background-color: #03a9f4;color:#fff" width="5%">Prestamista</th>
                    <th class="center" style="font-weight:bold; border:1px solid #1d1d1d;background-color: #03a9f4;color:#fff" width="5%">Fecha Prestamo</th>
                    <th class="center" style="font-weight:bold; border:1px solid #1d1d1d;background-color: #03a9f4;color:#fff" width="5%">Fecha Devolucion</th>
                    <th class="center" style="font-weight:bold; border:1px solid #1d1d1d;background-color: #03a9f4;color:#fff" width="5%">Identificacion</th>
                    <th class="center" style="font-weight:bold; border:1px solid #1d1d1d;background-color: #03a9f4;color:#fff" width="5%">Libro</th>
                    <th class="center" style="font-weight:bold; border:1px solid #1d1d1d;background-color: #03a9f4;color:#fff" width="5%">Descripcion</th>
                    <th class="center" style="font-weight:bold; border:1px solid #1d1d1d;background-color: #03a9f4;color:#fff" width="5%">Estatus</th>
                    
                    
                </tr>
            </thead>
            <tbody>
                @foreach ($prestamos as $item)
                    <tr>
                    <td id="contenido">{{ $item->id }}</td>                     
                    <td id="contenido">{{ $item->cod_prestamista}}</td>
                    <td id="contenido">{{ $item->fecha_prestamo }}</td>
                    <td id="contenido">{{ $item->fecha_devolucion }}</td>
                    <td id="contenido">{{ $item->identificacion }}</td>
                    <td id="contenido">{{ $item->titulo}}</td>
                    <td id="contenido">{{ $item->descripcion }}</td>
                    <td id="contenido">{{ $item->estatus }}</td>
                    
                       
                    </tr>
                @endforeach
            </tbody>
            
        </table>
    </div>
    </section>
    <footer>
    k&k SISTEMA DE BIBLIOTECA <?php echo date("Y");?>
    </footer>
    </div>
    </div>

</div>
</body>
</html>

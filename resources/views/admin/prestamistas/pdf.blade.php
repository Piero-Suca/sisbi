<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reporte de prestamistas</title>
    <link rel="stylesheet" href="../resources/views/dist/css/adminlte2.css">
</head>
<body>
<header>
        <table>
            <tr>
                <td><img src="../img/logo_lasalle.png" width="120px" height="50px"alt=""></td>
                <td id="titulo"><h2>&nbsp;&nbsp;Instituto de educación superior Tecnológico Público La Salle Urubamba &nbsp;&nbsp;</h2></td>
                <td><img src="../img/lobi2.png" width="90px" height="80px"alt=""></td>
            </tr>

        </table>
       
</header>
    <section style="padding-bottom: 2px; padding-top: 20px;">
    <div class="container">
        <h2 style="text-align:center;">LISTA DE PRESTAMISTAS</h2>
        <table id="tabla">
        <thead>
                <tr>
                <th class="center" style="font-weight:bold; border:1px solid #1d1d1d;background-color: #03a9f4;color:#fff" width="5%">Cod_prestamista</th>
                    <th class="center" style="font-weight:bold; border:1px solid #1d1d1d;background-color: #03a9f4;color:#fff" width="5%">Nombre</th>
                    <th class="center" style="font-weight:bold; border:1px solid #1d1d1d;background-color: #03a9f4;color:#fff" width="5%">Email</th>
                    <th class="center" style="font-weight:bold; border:1px solid #1d1d1d;background-color: #03a9f4;color:#fff" width="5%">Dni</th>
                    <th class="center" style="font-weight:bold; border:1px solid #1d1d1d;background-color: #03a9f4;color:#fff" width="5%">Cargo</th>
                    <th class="center" style="font-weight:bold; border:1px solid #1d1d1d;background-color: #03a9f4;color:#fff" width="5%">Programa de Estudios</th>
                    <th class="center" style="font-weight:bold; border:1px solid #1d1d1d;background-color: #03a9f4;color:#fff" width="5%">telefono</th>
                   
                   
                </tr>
        </thead>
        <tbody>
                @foreach ($prestamistas as $item)
                    <tr>
                    <td id="contenido">{{ $item->cod_prestamista}}</td>
                    <td id="contenido">{{ $item->nombre_completo}}</td>
                    <td id="contenido">{{ $item->email}}</td>
                    <td id="contenido">{{ $item->dni }}</td>
                    <td id="contenido">{{ $item->cargo }}</td>
                    <td id="contenido">{{ $item->cod_programa}}</td> 
                    <td id="contenido">{{ $item->telefono}}</td>
                    
    
                    </tr>
                @endforeach
            </tbody>
            
        </table>
    </div>
    </section>
    <footer>
    K&K SISTEMA DE BIBLIOTECA <?php echo date("Y");?>
    </footer>
    </div>
</div>
</body>
</html>

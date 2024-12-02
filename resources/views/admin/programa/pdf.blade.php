<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reporte de Programas de Estudios</title>
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
    <section style="padding-bottom: 20px; padding-top: 20px;">
    <div class="container">
        <h2 style="text-align:center;">LISTA DE PROGRAMA DE ESTUDIOS</h2>
        <table id="tabla">
        <thead>
                <tr>
                   
                    <th class="center" style="font-weight:bold; border:1px solid #1d1d1d;background-color: #03a9f4;color:#fff" width="5%">Codigo de Programa</th>
                    <th class="center" style="font-weight:bold; border:1px solid #1d1d1d;background-color: #03a9f4;color:#fff" width="5%">Nombre de Programa</th>
                    <th class="center" style="font-weight:bold; border:1px solid #1d1d1d;background-color: #03a9f4;color:#fff" width="5%">Año de Creación</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($programa as $item)
                    <tr>                      
                    <td id="contenido">{{ $item->cod_programa }}</td>
                    <td id="contenido">{{ $item->nombre }}</td>
                    <td id="contenido">{{ $item->rd_creacion }}</td>
                       
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

</div>
</body>
</html>

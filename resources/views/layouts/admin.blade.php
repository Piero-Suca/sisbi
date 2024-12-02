<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en" xmlns:mso="urn:schemas-microsoft-com:office:office"
    xmlns:msdt="uuid:C2F41010-65B3-11d1-A29F-00AA00C14882">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SISBI| La Salle</title>

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="{{ asset('plugins/fontawesome-free/css/all.min.css') }}">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.12.1/css/all.css" crossorigin="anonymous">
    <script defer src="https://use.fontawesome.com/releases/v5.0.8/js/brands.js" integrity="sha384-sCI3dTBIJuqT6AwL++zH7qL8ZdKaHpxU43dDt9SyOzimtQ9eyRhkG3B7KMl6AO19" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.8/js/fontawesome.js" integrity="sha384-7ox8Q2yzO/uWircfojVuCQOZl+ZZBg2D2J5nkpLqzH1HY0C1dHlTKIbpRz/LG23c" crossorigin="anonymous"></script>
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="{{ asset('plugins/datatables-bs4/css/dataTables.bootstrap4.min.css') }}">
    <link rel="stylesheet" href="{{ asset('plugins/datatables-responsive/css/responsive.bootstrap4.min.css') }}">
    <link rel="stylesheet" href="{{ asset('plugins/datatables-buttons/css/buttons.bootstrap4.min.css') }}">
    <!-- SweetAlert2 -->
    <link rel="stylesheet" href="{{ asset('plugins/sweetalert2-theme-bootstrap-4/bootstrap-4.min.css') }}">
    <!-- Toastr -->
    <link rel="stylesheet" href="{{ asset('plugins/toastr/toastr.min.css') }}">
    <!-- Theme style -->
    <link rel="stylesheet" href="{{ asset('dist/css/adminlte.min.css') }}">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

    <!--[if gte mso 9]><xml>
<mso:CustomDocumentProperties>
<mso:display_urn_x003a_schemas-microsoft-com_x003a_office_x003a_office_x0023_SharedWithUsers msdt:dt="string">Integrantes de la TIENDA VIRTUAL G14</mso:display_urn_x003a_schemas-microsoft-com_x003a_office_x003a_office_x0023_SharedWithUsers>
<mso:SharedWithUsers msdt:dt="string">28;#Integrantes de la TIENDA VIRTUAL G14</mso:SharedWithUsers>
</mso:CustomDocumentProperties>
</xml><![endif]-->
    @routes
</head>

<body class="hold-transition sidebar-mini layout-fixed layout-navbar-fixed">
    <div class="wrapper">

        <!-- Preloader -->
        <div class="preloader flex-column justify-content-center align-items-center">
            <img class="animation-shake" src="{{ asset('../img/lobi2.png') }}" alt="lobi2"
                height="200" width="200">
        </div>

        <!-- Navbar -->
        <nav class="main-header navbar navbar-expand navbar-white navbar-light">
            <!-- Left navbar links -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i
                            class="fas fa-bars"></i></a>
                </li>
                <li class="nav-item d-none d-sm-inline-block">
                    <a href="/" class="nav-link">Ir al inicio</a>
                </li>
            </ul>

            <!-- Right navbar links -->
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" onclick="document.getElementById('formulario-logout').submit()" href="#" role="button">
                        <i class="fas fa-sign-out-alt"></i>
                    </a>
                    <form id="formulario-logout" method="POST" action="{{ route('logout') }}">
                        @csrf
                    </form>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
                        <i class="fas fa-th-large"></i>
                    </a>
                </li>
            </ul>
        </nav>
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        <aside class="main-sidebar sidebar-dark-primary elevation-4 " style="background-color:  #6b1b31  ">
            <!-- Brand Logo -->
            <a href="https://ieslasalle.edu.pe/portal/" target="_blank" class="brand-link" style="background-color:#132a3e">
                <img src="{{ asset('..\resources\views\dist\img\st.png') }}" alt="AdminLTE Logo"
                    class="brand-image img-circle elevation-3" style="opacity: .8">
                <span class="brand-text font-weight-light">La Salle-Urubamba</span>
            </a>

            <!-- Sidebar -->
            <div class="sidebar">
                <!-- Sidebar user panel (optional) -->
                <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                    <div class="image">
                        <img src="{{ asset('..\resources\views\dist\img\lobi2.png') }}" class="img-circle elevation-2"
                            alt="User Image">
                    </div>
                    <div class="info">
                        <a href="https://ieslasalle.edu.pe/portal/bibliotecafisica/" target="_blank" class="d-block">SISTEMA BIBLIOTECA</a>
                    </div>
                </div>

                <!-- Sidebar Menu -->
                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                        data-accordion="false">
                        
                        <li class="nav-item" id="contenido-bibliotecario">
                            <a href="#" class="nav-link" style="color: white;">
                                <i class='nav-icon fas fa-book-open'></i>
                                <p>CONTENIDO BIBLIOTECARIO <i class="right fas fa-angle-left"></i></p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="{{ route('libros.index') }}" class="nav-link {{ request()->routeIs('libros.index') ? 'active' : '' }}">
                                        <i class='nav-icon fa fa-book'></i>
                                        <p>LIBROS</p>
                                    </a>
                                </li>
                            </ul>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="{{ route('revista.index') }}" class="nav-link {{ request()->routeIs('revista.index') ? 'active' : '' }}">
                                        <i class=' nav-icon fa fa-address-card'></i>
                                        <p>REVISTAS</p>
                                    </a>
                                </li>
                            </ul>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="{{ route('tesis.index') }}" class="nav-link {{ request()->routeIs('tesis.index') ? 'active' : '' }}">
                                        <i class="nav-icon fa fa-graduation-cap"></i>
                                        <p>TESIS</p>
                                    </a>
                                </li>
                            </ul>
                            </li>
                            <script>
                            $(document).ready(function() {
                                // Manejar clic en el enlace de contenido bibliotecario
                                $(".contenido-link").on("click", function(e) {
                                    e.preventDefault();

                                    // Aplicar clase activa al botón al hacer clic
                                    $(".nav-item .nav-link").removeClass("active");
                                    $(this).addClass("active");

                                    // Restablecer estilos de otros botones
                                    $(".nav-item .nav-link").not(this).css("background-color", "");
                                    $(".nav-item .nav-link").not(this).css("color", "");
                                });
                            });
                        </script>

                        <li class="nav-item">
                            <a href="{{ route('programa.index') }}" class="nav-link {{ request()->routeIs('programa.index') ? 'active' : '' }}">
                                <i class="nav-icon fas fa-users"></i>
                                <p>
                               PROGRAMAS  
                                </p>
                            </a>
                        </li>    
                        <li class="nav-item">
                            <a href="{{ route('prestamistas.index') }}" class="nav-link {{ request()->routeIs('prestamistas.index') ? 'active' : '' }}">
                                <i class='nav-icon fas fa-user-graduate'></i>
                                <p>
                                PRESTAMISTAS   
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('usuario.index') }}" class="nav-link {{ request()->routeIs('usuario.index') ? 'active' : '' }}">
                            <i class='nav-icon fa fa-users'></i>
                                <p>
                                    USUARIOS      
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('prestamos.index') }}" class="nav-link {{ request()->routeIs('prestamos.index') ? 'active' : '' }}">
                            <i class='nav-icon fas fa-book-reader'></i>
                                <p>
                                PRESTAMOS            
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('devoluciones.index') }}" class="nav-link {{ request()->routeIs('devoluciones.index') ? 'active' : '' }}">
                                <i class='nav-icon fas fa-swatchbook'></i><p>DEVOLUCIONES</p></a>
                        </li>
                        
                    </ul>
                </nav>
                <!-- /.sidebar-menu -->
            </div>
            <!-- /.sidebar -->
        </aside>
        
        @yield('contenido')

        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
            <!-- Control sidebar content goes here -->
            <div class="p-3">
                <h5>BIBLIOTECA LASALLISTA</h5>
                <p>¡Bienvenidos/as a la extensa biblioteca del instituto! Este espacio está diseñado especialmente para nutrir vuestra curiosidad y sed de conocimiento. Aquí encontraréis un vasto mundo de libros, recursos y herramientas que os acompañarán en vuestro viaje académico y personal. Sumergíos en las páginas que abren las puertas hacia la sabiduría y la imaginación, y permitid que esta biblioteca se convierta en vuestro aliado para alcanzar nuevas metas y explorar horizontes desconocidos. Que vuestras visitas aquí sean llenas de aprendizaje, crecimiento y gratas experiencias. ¡Adelante, aventureros del saber!</p>
            </div>
        </aside>
        <!-- /.control-sidebar -->

        <!-- Main Footer -->
        <footer class="main-footer">
            <!-- To the right -->
            <div class="float-right d-none d-sm-inline">
                Slogan
            </div>
            <!-- Default to the left -->
            <strong>Copyright &copy; K&K Sistema de biblioteca <a href="https://adminlte.io"> PROYECTO SISBI</a>.</strong> Todos los
            derechos reservados.
        </footer>
    </div>
    <!-- ./wrapper -->

    @yield('modales')

    <!-- REQUIRED SCRIPTS -->

    <!-- jQuery -->
    <script src="{{ asset('plugins/jquery/jquery.min.js') }}"></script>
    <!-- Bootstrap 4 -->
    <script src="{{ asset('plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <!-- DataTables  & Plugins -->
    <script src="{{ asset('plugins/datatables/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('plugins/datatables-bs4/js/dataTables.bootstrap4.min.js') }}"></script>
    <script src="{{ asset('plugins/datatables-responsive/js/dataTables.responsive.min.js') }}"></script>
    <script src="{{ asset('plugins/datatables-responsive/js/responsive.bootstrap4.min.js') }}"></script>
    <script src="{{ asset('plugins/datatables-buttons/js/dataTables.buttons.min.js') }}"></script>
    <!-- SweetAlert2 -->
    <script src="{{ asset('plugins/sweetalert2/sweetalert2.min.js') }}"></script>
    <!-- Toastr -->
    <script src="{{ asset('plugins/toastr/toastr.min.js') }}"></script>
    <!-- AdminLTE App -->
    <script src="{{ asset('dist/js/adminlte.min.js') }}"></script>
    <script src="{{ asset('js/funciones.js') }}"></script>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    @yield('javascript')
</body>

</html>

@extends('layouts.admin')

@section('titulo')
    Dashboard | Laravel
@endsection

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header" style=>
        <div class="container-fluid" >
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Bienvenido</h1>
                </div><!-- /.col -->
            </div><!-- /.row -->
            <div class="row">
                <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-info">
                        <div class="inner">
                        <a href="{{ route('programa.index') }}" class="nav-link">
                            <h3>20</h3>

                            <p><strong>Programas</strong></p></a>
                        </div>
                        <div class="icon">
                            <i class="ion ion-bag"></i>
                        </div>
                        <a href="#" class="small-box-footer">Más info <i
                                class="fas fa-users"></i></a>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-success">
                        <div class="inner">
                        <a href="{{ route('prestamistas.index') }}" class="nav-link">
                            <h3>53</h3>

                            <p><strong>Prestamistas</strong></p></a>
                        </div>
                        <div class="icon">
                            <i class="fas fa-user-graduate"></i>
                        </div>
                        <a href="#" class="small-box-footer">Más info <i
                                class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-warning">
                        <div class="inner">
                        <a href="{{ route('prestamos.index') }}" class="nav-link">
                            <h3>44</h3>

                            <p><strong>Prestamos</strong></p></a>
                        </div>
                        <div class="icon">
                            <i class="fas fa-book-reader"></i>
                        </div>
                        <a href="#" class="small-box-footer">Más info <i
                                class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-danger">
                        <div class="inner">
                        <a href="{{ route('prestamos.index') }}" class="nav-link">
                            <h3>65</h3>

                            <p><strong>Devoluciones</strong></p></a>
                        </div>
                        <div class="icon">
                            <i class="fas fa-swatchbook"></i>
                        </div>
                        <a href="#" class="small-box-footer">Más info <i
                                class="nav-icon fas fa-swatchbook"></i></a>
                    </div>
                </div>
                <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-purple">
                        <div class="inner">
                        <a href="{{ route('libros.index') }}" class="nav-link">
                            <h3>150</h3>

                            <p><strong>Libros</strong></p></a>
                        </div>
                        <div class="icon">
                            <i class="fa fa-book"></i>
                        </div>
                        <a href="#" class="small-box-footer">Más info <i
                                class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
            </div>
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

<!-- /.content-wrapper -->
</div>
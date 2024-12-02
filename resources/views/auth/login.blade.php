<!doctype html>
<html lang="es">
    <head>
        
        <meta charset="utf-8">
        
        <title> SISBI LOGIN </title>    
        
   
     
        <link rel="stylesheet" href="../resources/views/dist/css/adminlte.css">
       <!-- Font Awesome Icons -->
       <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="{{ asset('plugins/fontawesome-free/css/all.min.css') }}">
    <script defer src="https://use.fontawesome.com/releases/v5.0.8/js/brands.js" integrity="sha384-sCI3dTBIJuqT6AwL++zH7qL8ZdKaHpxU43dDt9SyOzimtQ9eyRhkG3B7KMl6AO19" crossorigin="anonymous"></script>
<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/fontawesome.js" integrity="sha384-7ox8Q2yzO/uWircfojVuCQOZl+ZZBg2D2J5nkpLqzH1HY0C1dHlTKIbpRz/LG23c" crossorigin="anonymous"></script>
        </style>
        
        <script type="text/javascript">
        
        </script>
        
        
    </head>
    
    <body> 
        <div id="f1">      
                <div id="login" style="margin: 10px 10px 10px 10px;float: left; ">
                    <form method="POST" action="{{ route('login') }}">
                    @csrf
                       <div class="titulo" style="text-align:center">
                       <h1> Bienvenido al sistema web SISBI</h1>
						<a><img src="../img/lobi2.png" width="200" height="200"></a>
                        </div>
                        <label for="email" :value="__('Correo Electronico')">Usuario</label>
                        <input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required autofocus autocomplete="username">
                        <x-input-error :messages="$errors->get('email')" class="mt-2" /><span><i class='fa fa-users fa-2x' style='color:#0c206e;'></i></span>
                        <!--contraseña-->
                        <label for="password" :value="__('Contraseña')">Contraseña</label>
                        <input id="password" class="block mt-1 w-full"
                            type="password"
                            name="password"
                            required autocomplete="current-password">
                        <x-input-error :messages="$errors->get('password')" class="mt-2"/><span><i class='fas fa-user-lock fa-2x' style='color:#0c206e'></i></span>
                        <!--Boton-->
                        <x-primary-button class="ml-5" id="boton">
                            {{ __('Ingresar') }}
                        </x-primary-button>
                    </form>
                    <div style="text-align:center">
                        <p href="#" class="text-decoration-none text-info fw-semibold">Olvide mi contraseña?</p>
                        <a href="{{ route('register') }}" class="ml-4 font-semibold text-gray-600 hover:text-gray-900 dark:text-gray-400 dark:hover:text-white focus:outline focus:outline-2 focus:rounded-sm focus:outline-red-500">Registrar</a>
                    </div>
                </div>
              <div id="slider" style="border: 15px groove  #C7CECE";>
                <div id=contenedor1>
                    <div id=imagen1>
                        <div class="fondo-slider"></div>
                        <h2>SISBI LA SALLE K&K</h2>
                    </div>
                    <div id="imagen2">
                        <div class="fondo-slider"></div>
                        <h2>SISBI LA SALLE K&K</h2>
                    </div>
                    <div id="imagen3">
                    <div class="fondo-slider"></div>
                    <h2>SISBI LA SALLE K&K</h2>
                    </div>
                    <div id="imagen4">
                    <div class="fondo-slider"></div>
                    <h2>SISBI LA SALLE K&K</h2>
                    </div>
                 </div>
            </div>
            
    </div>
    </body>
</html>
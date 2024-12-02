<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class estudiante extends Model
{
    use HasFactory;

    protected $table = "estudiante";

    public function urlImagen()
    {
        // public/cursos/f0hR4KqvO0J1MQrkWgrLPezIuy5Jd1weSJRXn8iq.jpg
        $ruta_imagen = $this->imagen;
        // storage/cursos/f0hR4KqvO0J1MQrkWgrLPezIuy5Jd1weSJRXn8iq.jpg
        $ruta_imagen = str_replace('public', 'storage', $ruta_imagen);

        return asset($ruta_imagen);
    }
}

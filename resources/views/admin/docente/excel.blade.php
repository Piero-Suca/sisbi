<?php

namespace App\Exports;

use App\Models\docente;
use Maatwebsite\Excel\Concerns\FromCollection;

class UserExport implements FromCollection
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        //return User::all();
        return docente::select('id','name','email', 'created_at')->get();
    }
}


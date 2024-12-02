<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Exports\UserExport;
Use Maatwebsite\Excel\Facades\Excel
//Use Maatwebsite\Excel\Excel as Formato;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view("admin.estudiante.index");
    }
     //crear el método pdf
     public function pdf()
     {
         $estudiante=estudiante::all();
         $pdf = Pdf::loadView('admin.estudiante.pdf', compact('estudiante'));
         return $pdf->stream();
     }
     public function excel()
     {
         return Excel::download(new UserExport,'user.xlxs');
     }
     public function csv()
     {
        
         return Excel::download(new UserExport,'user.csv',\Maatwebsite\Excel::csv);
         //return Excel::download(new UserExport,'user.csv',Formato::csv);
        }

    
}
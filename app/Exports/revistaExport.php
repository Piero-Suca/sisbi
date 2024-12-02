<?php

namespace App\Exports;

use App\Models\Revista;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\WithHeadings;

class revistaExport implements FromCollection, WithHeadings
{
    use Exportable;

    public function collection()
    {
        return Revista::select('id', 'titulo', 'autor', 'cantidad', 'cod_programa', 'estado')->get();
    }

    public function headings(): array
    {
        return [
            'ID',
            'Titulo',
            'Autor',
            'Cantidad',
            'Programa de estudio',
            'Estado',
        ];
    }
    public function styles(Worksheet $sheet)
    {
        return [
            // Estilo para la primera fila (encabezados)
            1 => [
                'font' => [
                    'bold' => true,
                ],
                'fill' => [
                    'fillType' => \PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID,
                    'startColor' => [
                        'argb' => 'FF0000',
                    ],
                ],
            ],
        ];
    }
}
<?php

namespace App\Exports;

use App\Models\Prestamistas;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\WithHeadings;

class PrestamistasExport implements FromCollection, WithHeadings
{
    use Exportable;

    public function collection()
    {
        return Prestamistas::select('id', 'cod_prestamista', 'nombre_completo', 'email', 'dni', 'cod_programa', 'telefono', 'cargo')->get();
    }

    public function headings(): array
    {
        return [
            'ID',
            'Codigo Prestamista',
            'Nombre Completo',
            'Email',
            'DNI',
            'Programa de Estudios',
            'Telefono',
            'Cargo',
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
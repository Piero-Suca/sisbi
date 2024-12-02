<?php

namespace App\Exports;
use App\Models\Programa;
use App\Models\Prestamos;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\WithHeadings;


class PrestamosExport implements FromCollection, WithHeadings
{
    use Exportable;

    protected $searchResults;

    public function __construct($searchResults)
    {
        $this->searchResults = $searchResults;
    }
    
    public function collection()
    {
        return $this->searchResults;
    }

    public function headings(): array
    {
        return [
            'ID',
            'Nombre Completo',
            'Fecha de Inicio',
            'Fecha de Fin',
            'Identificacion',
            'Titulo de Libro',
            'Descripcion',
            'Estatus',
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

<?php

namespace App\Exports;

use App\Models\Libros;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use PhpOffice\PhpSpreadsheet\Style\Fill;
use PhpOffice\PhpSpreadsheet\Worksheet\Worksheet;

class LibrosExport implements FromCollection, WithHeadings
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
            'Código de Libro',
            'Titulo',
            'Autor',
            'Stock',
            'Año de Publicación',
            'Programa de estudio',
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
                    'fillType' => Fill::FILL_SOLID,
                    'startColor' => [
                        'argb' => 'FF0000',
                    ],
                ],
            ],
        ];
    }
}
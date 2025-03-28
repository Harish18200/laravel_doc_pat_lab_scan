<?php

namespace Database\Seeders;

use Carbon\Carbon;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class LabMasterSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
            ['lab_select' => 'Haematology'],
            ['lab_select' => 'Bio-Chemistry'],
            ['lab_select' => 'Urine Analysis'],
            ['lab_select' => 'Motion Analysis'],
            ['lab_select' => 'Liver Function Test'],
            ['lab_select' => 'Enzymes Assay'],
            ['lab_select' => 'Electrolytes'],
            ['lab_select' => 'Lipid Profile'],
            ['lab_select' => 'Immuno Serology'],
            ['lab_select' => 'Culture & Drug Sensitivity'],
            ['lab_select' => 'Fluid Analysis'],
            ['lab_select' => 'Coagulation Assay'],
            ['lab_select' => 'Sputum Analysis'],
            ['lab_select' => 'Semen Analysis'],
            ['lab_select' => 'Endocrinology'],
            ['lab_select' => '1.5T M.R.I Study'],
            ['lab_select' => 'Breast Imaging'],
            ['lab_select' => '64 Slice C.T. Angiography'],
            ['lab_select' => 'C. T. Study'],
            ['lab_select' => 'Ultrasound Study'],
            ['lab_select' => 'Doppler Studies'],
            ['lab_select' => 'Other Studies'],
        ];

        foreach ($data as &$row) {
            $row['description'] = null;
            $row['created_at'] = Carbon::now();
            $row['updated_at'] = Carbon::now();
        }

        DB::table('lab_master')->insert($data);
    }

    }


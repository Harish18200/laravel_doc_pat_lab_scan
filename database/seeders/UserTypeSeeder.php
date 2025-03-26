<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\UserType;
use Illuminate\Support\Facades\Hash;
use App\Models\Doctor;
use App\Models\Patient;
use App\Models\Lab;
use App\Models\ScanDoctor;
use App\Models\Pharma;

class UserTypeSeeder extends Seeder
{
    public function run(): void
    {
        $userTypes = ['Admin', 'Doctor', 'Patient','Lab','pharma','Scan Doctor'];

        foreach ($userTypes as $type) {
            UserType::firstOrCreate(['name' => $type]);
        }

        Doctor::create([
            'name' => 'Doctor',
            'email' => 'doctor@gmail.com',
            'mobile' => '9089098909',
            'age' => 40,
            'address' => '123 Main St',
            'specialization' => 'Cardiology',
            'password' => Hash::make('12345678'),
            'fees' => 500.00
        ]);
        Patient::create([
            'name' => 'Patient',
            'email' => 'patient@gmail.com',
            'mobile' => '9089098908',
            'age' => 30,
            'problem' => 'Flu',
            'gender' => 'male',
            'address' => '456 Patient St',
            'dob' => '1994-05-20',
            'password' => Hash::make('12345678')
        ]);
        Lab::create([
            'name' => 'Lab Technician',
            'email' => 'lab@gmail.com',
            'mobile' => '9089098907',
            'gender' => 'male',
            'address' => '789 Lab St',
            'dob' => '1990-10-15',
            'password' => Hash::make('12345678')
        ]);
        ScanDoctor::create([
            'name' => 'Scan Doctor',
            'email' => 'scandoctor@gmail.com',
            'mobile' => '9089098906',
            'age' => 35,
            'gender' => 'male',
            'address' => '321 Scan St',
            'dob' => '1988-07-12',
            'password' => Hash::make('12345678')
        ]);
        Pharma::create([
            'name' => 'Pharma',
            'email' => 'pharma@gmail.com',
            'mobile' => '9089098905',
            'age' => 28,
            'gender' => 'male',
            'address' => '654 Pharma St',
            'dob' => '1996-02-25',
            'password' => Hash::make('12345678')
        ]);
    }
}
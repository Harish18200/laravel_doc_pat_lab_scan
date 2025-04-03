<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Admission extends Model
{
    use HasFactory;
    protected $fillable = [
        'patient_id',
        'primary_consultant',
        'admission_date',
        'discharge_date',
        'ip_op',
        'informant',
        'arrival_mode',
        'allergies',
        'immunization_utd',
    ];
}

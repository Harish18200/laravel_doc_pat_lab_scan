<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PhysicalExamination extends Model
{
    use HasFactory;

    
    protected $fillable = [
        'patient_id',
        'weight',
        'temperature',
        'pulse',
        'bp_left',
        'bp_right',
        'respiratory_rate',
        'spo2',
        'pain_scale',
        'grbs'
    ];
}

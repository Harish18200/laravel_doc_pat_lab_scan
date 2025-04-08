<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Appointment extends Model
{
    use HasFactory;
    protected $fillable = [
        'patientName',
        'patient_id',
        'doctor_id',
        'problem',
        'appointment_date',
        'appointment_time',
        'status'
    ];
    public function doctor()
    {
        return $this->belongsTo(Doctor::class, 'doctor_id');
    }
    public function patients()
    {
        return $this->belongsTo(Patient::class, 'patient_id');
    }
}

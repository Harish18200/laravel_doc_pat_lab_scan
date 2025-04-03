<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Patient extends Model
{
    use HasFactory;
    protected $fillable = ['patient_name', 'email', 'mobile', 'alternate_no', 'caregiver_name', 'gender', 'address', 'dob', 'password','relationship','remarks','refferred_by','martial_status'];
}


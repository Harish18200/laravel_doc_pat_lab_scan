<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LabApplication extends Model
{
    use HasFactory;
    protected $fillable = ['lab_details', 'normal_range', 'unit', 'price', 'Child'];
}

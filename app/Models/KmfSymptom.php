<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KmfSymptom extends Model
{
    use HasFactory;

    protected $table = 'kmf_symptoms';

    protected $fillable = [
        'name',
      
    ];
}

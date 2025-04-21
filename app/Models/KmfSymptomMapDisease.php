<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KmfSymptomMapDisease extends Model
{
    use HasFactory;
    protected $table = 'symp_disease_map';

    protected $fillable = [
        'symptom_id',
        'symptom_map_id',
        'disease_id'

    ];

    public function diseaseName()
    {
        return $this->belongsTo(KmfDisease::class, 'disease_id');
    }
}

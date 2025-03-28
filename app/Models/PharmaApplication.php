<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PharmaApplication extends Model
{
    use HasFactory;
    protected $table = 'pharma_applications';
    protected $fillable = [
        'medicine',
        'batch_no',
        'price',
        'record_level',
        'mfg_date',
        'exp_date',
        'quantity',
        'potency'
    ];
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MedicineStock extends Model
{
    use HasFactory;

    protected $fillable = [
        'medicine',
        'batch_no',
        'price',
        'potency',
        'quantity',
        'record_level',
        'mfg_date',
        'exp_date',
        'gst',
        'sgst',
        'cgst',
        'price_per_quantity',
    ];

}

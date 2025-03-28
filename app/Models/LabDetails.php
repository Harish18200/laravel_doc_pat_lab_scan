<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class LabDetails extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = 'lab_details'; 

    protected $fillable = [
        'lab_select_id', 
        'lab_details',
        'normal_range',  
        'unit',  
        'price',  
        'child'
    ];
}

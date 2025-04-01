<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TherapyMaster extends Model
{
    use HasFactory;
    protected $table = 'therapy_masters';
    protected $fillable = ['therapy_details', 'price'];
}

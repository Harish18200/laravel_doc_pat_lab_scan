<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KmfDisease extends Model
{
    use HasFactory;
    protected $table = 'kmf_diseases';

    protected $fillable = [
        'name',
      
    ];
}

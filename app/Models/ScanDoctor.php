<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ScanDoctor extends Model
{
    use HasFactory;
    protected $fillable = ['name', 'email', 'mobile', 'age', 'gender', 'address', 'dob', 'password'];
}


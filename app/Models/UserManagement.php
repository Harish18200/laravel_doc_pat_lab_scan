<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserManagement extends Model
{
    use HasFactory;

    protected $table = 'user_management';

    protected $fillable = ['name', 'email', 'mobile', 'address', 'age', 'dob'];
}

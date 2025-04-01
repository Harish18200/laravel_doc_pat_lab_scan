<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserManagement extends Model
{
    use HasFactory;

    protected $table = 'user_management';

    protected $fillable = [
        'name',
        'user_name',
        'email',
        'password',
        'department_id',
        'gender_id',
        'marital_status_id',
        'address',
        'contact_no',
        'alternative_no',
        'date_of_join',
        'dob',
        'remarks',
        'profile_pic',
        'branch_id',
        'scan_user_status'
    ];
    protected $hidden = [
        'password',
    ];

    protected $casts = [
        'dob' => 'date',
        'date_of_join' => 'date',
        'scan_user_status' => 'boolean',
    ];
}

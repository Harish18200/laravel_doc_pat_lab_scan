<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class LabMaster extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = 'lab_master'; 

    protected $fillable = [
        'lab_select',
        'description',
    ];

    protected $dates = ['deleted_at'];
}

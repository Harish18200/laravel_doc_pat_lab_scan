<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ExpensesMaster extends Model
{
    use HasFactory;

    protected $table = 'expenses_masters';

    protected $fillable = [
        'expenses_detail',
        'description',
    ];
}

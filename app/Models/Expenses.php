<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Expenses extends Model
{
    use HasFactory;

    protected $fillable = [
        'date',
        'ebbill',
        'physio_expenses',
        'salary',
        'tv',
        'tea',
        'phone_bill',
        'food',
        'biscuit',
        'cool_drinks',
        'service',
        'work',
        'milk',
        'amazon',
        'out_side_lab',
        'medicine_company',
        'laundry',
        'car',
        'flower',
        'manju',
        'courier',
        'desil',
        'bio_waste',
        'autitor'
    ];
    
}

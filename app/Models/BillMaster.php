<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BillMaster extends Model
{
    use HasFactory;
    protected $fillable = [
        'bill_type_id',
        'description',
        'price',
        'status',
    ];
    public function billType()
    {
        return $this->belongsTo(BillType::class, 'bill_type_id');
    }
}

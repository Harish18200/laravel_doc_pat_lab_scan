<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class ModalityMaster extends Model
{
    use HasFactory;

    protected $table = 'modality_master';

    protected $fillable = [
        'modality_details',
        'price',
    ];


}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Transport extends Model
{
    protected $table = 'transports';

    protected $fillable = [
        'id', 'min', 'max', 'price', 'deleted'
    ];
}

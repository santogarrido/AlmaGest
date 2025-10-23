<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Delivery_term extends Model
{
    protected $table = 'delivery_terms';

    protected $fillable = [
        'id', 'description', 'deleted'
    ];
}

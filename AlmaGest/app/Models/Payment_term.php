<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Payment_term extends Model
{
    protected $table = 'payment_terms';

    protected $fillable = [
        'id', 'description', 'deleted'
    ];
}

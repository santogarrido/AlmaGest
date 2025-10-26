<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Invoice extends Model
{
    use HasFactory;

    protected $table = "invoices";

    protected $fillable = [
        'num',
        'issuedate',
        'delivery_note_id',
        'deleted'
    ];

    //Aun no está creada la tabla
    // public function deliveryNote(): BelongsTo{
    //     return $this->belongsTo(Delivery_note::class);
    // }
}

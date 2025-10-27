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


    // public function deliveryNote(): BelongsTo{
    //     return $this->belongsTo(Delivery_note::class);
    // }

    // public function invoiceLines(): HasMany{
    //     return $this->hasMany(Invoice_line::class);
    // }

}

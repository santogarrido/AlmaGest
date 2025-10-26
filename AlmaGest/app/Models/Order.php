<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
// use Illuminate\Database\Eloquent\Relations\HasOne;
// use Illuminate\Database\Eloquent\Relations\HasMany;

class Order extends Model
{
    use HasFactory;

    protected $table = 'orders';

    protected $fillable = [
        'num',
        'issuedate',
        'company_id',
        'deleted'
    ];

    //Aun no está creada la tabla
    //  public function company(): BelongsTo{
    //     return $this->belongsTo(Company::class);
    // }

    // N-1 o 1-1?
    // public function deliveryNotes(): HasOne{
    //     return $this->hasOne(DeliveryNote::class,'id','');
    // }



}

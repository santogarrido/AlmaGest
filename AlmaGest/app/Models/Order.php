<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
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


    //  public function company(): BelongsTo{
    //     return $this->belongsTo(Company::class);
    // }


    // public function deliveryNotes(): HasMany{
    //     return $this->hasMany(Delivery_Note::class);
    // }


    // public function orderLines(): HasMany{
    //     return $this->hasMany(Order_line::class);
    // }



}

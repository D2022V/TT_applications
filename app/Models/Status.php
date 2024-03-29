<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Status extends Model
{
    use HasFactory;

    protected $fillable = ['status'];

    public function order()
    {
        return $this->belongsTo(Order::class, 'id', 'status_id');
    }
}

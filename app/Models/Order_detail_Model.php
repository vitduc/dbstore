<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Order_detail_Model extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = 'order_detail';
    protected $primaryKey = 'id';

    protected $fillable = ['id_order', 'id_sp', 'qty', 'price'];

}

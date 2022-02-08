<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class OrderModel extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = 'orders';
    protected $primaryKey = 'id';

    protected $fillable = ['id_customer', 'phone', 'address', 'created_at', 'status'];

    public function scopeSearch($query){
        if($key = request()->key){
            $query = $query-> where('name', 'like', '%'.$key.'%');
        }
        return $query;
    }
}

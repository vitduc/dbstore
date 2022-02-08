<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ProductModel extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = 'products';
    protected $primaryKey = 'id';

    protected $fillable = [
        'id_cat',
        'name_product',
        'image',
        'price',
        'price_sale',
        'qty',
        'preview',
        'detail',
        'sp_hot'
    ] ;

    public function scopeSearch($query){
        if($key = request()->key){
            $query = $query-> where('name_product', 'like', '%'.$key.'%');
        }
        return $query;
    }
}

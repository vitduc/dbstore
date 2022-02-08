<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class CategoryModel extends Model
{
    use HasFactory , SoftDeletes;

    protected $table = 'cat';
    protected $primaryKey = 'id';

    protected $casts = [
        'id_parent' => 'int'
    ];

    protected $fillable = [
        'id',
        'name',
        'id_parent'
    ] ;

    // JOIN 1-n: Một danh mục có nhiều sản phẩm (hasmany)
    public function product()
    {
        return $this->hasMany(ProductModel::class, 'id_cat', 'id');
    }

    public function cat_children()
    {
        return $this->hasMany(CategoryModel::class, 'id_parent', 'id');
    }

}

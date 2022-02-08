<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Image_pro_Model extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = 'img_products';
    protected $primaryKey = 'id';

    protected $fillable = ['id_sp', 'img'];
}

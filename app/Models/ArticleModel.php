<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ArticleModel extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = 'blog';
    protected $primaryKey = 'id';

    protected $fillable = [
        'name',
        'img',
        'content',
        'preview_text',
        'created_at'
    ] ;

    public function scopeSearch($query){
        if($key = request()->key){
            $query = $query-> where('name', 'like', '%'.$key.'%');
        }
        return $query;
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class UserModel extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = 'admin';
    protected $primaryKey = 'id';

    protected $fillable = ['name', 'email', 'password', 'role'];

    public function scopeSearch($query){
        if($key = request()->key){
            $query = $query-> where('name', 'like', '%'.$key.'%');
        }
        return $query;
    }
}

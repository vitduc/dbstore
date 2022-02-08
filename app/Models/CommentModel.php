<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class CommentModel extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = 'comment';
    protected $primaryKey = 'id';

    protected $fillable = ['name', 'email', 'comment', 'id_blog'];
}

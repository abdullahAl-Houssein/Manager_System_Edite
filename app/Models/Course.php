<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    use HasFactory;
    protected $guarded = ['id'];

    public function category()
    {
        return $this->belongsTo('App\Models\Category','categorie_id');
    }
    public function teacher()
    {
        return $this->belongsTo('App\Models\Teacher','teacher_id');
    }
    public function student()
    {
        return $this->belongsToMany('App\Models\Student');
    }
}

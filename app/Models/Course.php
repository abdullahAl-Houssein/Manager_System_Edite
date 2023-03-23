<?php

namespace App\Models;

use App\Notifications\notificationCourse;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use function Symfony\Component\String\s;

class Course extends Model
{
    use HasFactory;
    protected $guarded = ['id'];
    protected $dispatchesEvents=[
        'created'=>Course::class
    ];

    public function notifyNewCourse()
    {
        $students = Student::all();

        foreach ($students as $student) {
            $student->notify(new notificationCourse($this));
        }
    }
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

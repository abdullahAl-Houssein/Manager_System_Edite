<?php

namespace App\Http\Controllers\Aouther;

use App\Http\Controllers\Controller;
use App\Models\Course;
use App\Models\Student;
use App\Models\Teacher;
use App\Models\Test;
use Illuminate\Http\Request;

class HomepageController extends Controller
{
    public function index(){
        $data['courses'] = Course::select('id','categorie_id','teacher_id','name','small_desc','img')
            ->orderBy('id','desc')
            ->take(9)
            ->get();

        $data['courses_count'] = Course::count();
        $data['teachers_count'] = Teacher::count();
        $data['students_count'] = Student::count();

        $data['tests'] = Test::select('name','specialty','desc','img')->get();
        return view('Aouther.index')->with($data);
    }
}

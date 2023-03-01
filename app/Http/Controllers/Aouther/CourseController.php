<?php

namespace App\Http\Controllers\Aouther;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Course;
use Illuminate\Http\Request;

class CourseController extends Controller
{
    public function cats($id){
        $data['cats'] = Category::findOrFail($id);
        $data['courses'] = Course::where('categorie_id',$id)->paginate(3);
        return view('Aouther.courses.cat')->with($data);
    }
    public function show($id,$cId){
        $data['course'] = Course::findOrFail($cId);
        return view('Aouther.courses.show')->with($data);
    }
}

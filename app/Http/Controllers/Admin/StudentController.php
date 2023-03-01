<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Course;
use App\Models\CourseStudent;
use App\Models\Student;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\ImageManagerStatic as Image;
use mysqli;

class StudentController extends Controller
{
    public function index(){
        $data['students'] = Student::select('id','name','email','specialty')->orderBy('id', 'DESC')->get();
        return view('Admin.students.index')->with($data);
    }
    public function create(){
        return view('Admin.students.create');
    }
    public function store(Request $request){
        $data = $request->validate([
            'name' => 'required|string|max:25',
            'email' => 'required|email|max:50|unique:students',
            'specialty' => 'nullable|string|max:50',
        ]);
        Student::create($data);

        return redirect(route('Admin.students.index'));
    }
    public function edit($id){
        $data['student'] = Student::findOrFail($id);
        return view('Admin.Students.edit')->with($data);
    }
    public function update(Request $request){
        $data = $request->validate([
            'name' => 'required|string|max:25',
            'email' => 'required|email|max:50|unique:students',
            'specialty' => 'nullable|string|max:50',
        ]);
        Student::findOrFail($request->id)->update($data);
        return redirect(route('Admin.students.index'));
    }
    public function delete($id){
        $couserStudent=CourseStudent::all();
        foreach ($couserStudent as $item) {
            if($item->student_id==$id){
                $item->delete();
            }
        }
        Student::findOrFail($id)->delete();
        return back();
    }
    public function showCourses($id)
    {
        $data['courses'] = Student::findOrFail($id)->courses;
        return view('Admin.students.showCourses')->with($data);
    }

    public function addCourse($id){
        $data['student_id'] = $id;
        $data['courses'] = Course::select('id','name')->get();
        return view('Admin.students.addCourse')->with($data);
    }
    public function storeCourse($id,Request $request){
        $data = $request->validate([
            'course_id' => 'required|exists:courses,id'
        ]);
        DB::table('course_students')->insert([
            'student_id'=>$id,
            'course_id'=>$data['course_id']
        ]);
        return redirect(route('Admin.students.showCourses',$id));
    }
}

<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Course;
use App\Models\Teacher;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\ImageManagerStatic as Image;

class CourseController extends Controller
{
    public function index(){
        $data['courses'] = Course::select('id','name','img')->orderBy('id', 'DESC')->get();
        return view('admin.courses.index')->with($data);
    }
    public function create(){
        $data['cats'] = Category::select('id','name')->get();
        $data['teachers'] = Teacher::select('id','name')->get();
        return view('Admin.courses.create')->with($data);
    }
    public function store(Request $request){
        $data = $request->validate([
            'name' => 'required|string|max:25',
            'small_desc' => 'required|string|max:191',
            'desc' => 'required|string',
            'categorie_id' =>'required|exists:categories,id',
            'teacher_id' =>'required|exists:teachers,id',
            'img' => 'required|image|mimes:jpg,jpeg,png',
        ]);

        $new_name = $data['img']->hashName();
        Image::make($data['img'])->resize(50,50)->save(public_path('uploads/courses/'. $new_name));
        $data['img'] = $new_name;
        Course::create($data);

        return redirect(route('Admin.courses.index'));
    }
    public function edit($id){
        $data['cats'] = Category::select('id','name')->get();
        $data['teachers'] = Teacher::select('id','name')->get();
        $data['course'] = Course::findOrFail($id);
        return view('Admin.courses.edit')->with($data);
    }
    public function update(Request $request){
        $data = $request->validate([
            'name' => 'required|string|max:25',
            'small_desc' => 'required|string|max:191',
            'desc' => 'required|string',
            'categorie_id' =>'required|exists:categories,id',
            'teacher_id' =>'required|exists:teachers,id',
            'img' => 'nullable|image|mimes:jpg,jpeg,png',
        ]);
        $old_img =Course::findOrFail($request->id)->img;
        if ($request->hasFile('img')){
            Storage::disk('uploads')->delete('courses/' .$old_img);
            $new_name = $data['img']->hashName();
            Image::make($data['img'])->resize(970,520)->save(public_path('uploads/courses/'. $new_name));
            $data['img'] = $new_name;
        }
        else{
            $data['img'] = $old_img;
        }
        Course::findOrFail($request->id)->update($data);
        return redirect(route('Admin.courses.index'));
    }
    public function delete($id){
        $old_img =Course::findOrFail($id)->img;
        Storage::disk('uploads')->delete('courses/' .$old_img);
        Course::findOrFail($id)->delete();
        return back();
    }
}

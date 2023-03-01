<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Teacher;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\ImageManagerStatic as Image;

class TeacherController extends Controller
{
    public function index(){
        $data['teachers'] = Teacher::select('id','name','phone','specialty','img')->orderBy('id', 'DESC')->get();
        return view('Admin.teachers.index')->with($data);
    }
    public function create(){
        return view('Admin.teachers.create');
    }
    public function store(Request $request){
        $data = $request->validate([
            'name' => 'required|string|max:25',
            'phone' => 'nullable|string|max:15',
            'specialty' => 'required|string|max:50',
            'img' => 'required|image|mimes:jpg,jpeg,png',
        ]);

        $new_name = $data['img']->hashName();
        Image::make($data['img'])->resize(50,50)->save(public_path('uploads/teachers/'. $new_name));
        $data['img'] = $new_name;
        Teacher::create($data);

        return redirect(route('Admin.teachers.index'));
    }
    public function edit($id){
        $data['teacher'] = Teacher::findOrFail($id);
        return view('Admin.teachers.edit')->with($data);
    }
    public function update(Request $request){
        $data = $request->validate([
            'name' => 'required|string|max:25',
            'phone' => 'nullable|string|max:15',
            'specialty' => 'required|string|max:50',
            'img' => 'nullable|image|mimes:jpg,jpeg,png',
        ]);
        $old_img =Teacher::findOrFail($request->id)->img;
        if ($request->hasFile('img')){
            Storage::disk('uploads')->delete('teachers/' .$old_img);
            $new_name = $data['img']->hashName();
            Image::make($data['img'])->resize(50,50)->save(public_path('uploads/teachers/'. $new_name));
            $data['img'] = $new_name;
        }
        else{
            $data['img'] = $old_img;
        }
        Teacher::findOrFail($request->id)->update($data);
        return redirect(route('Admin.teachers.index'));
    }
    public function delete($id){
        $old_img =Teacher::findOrFail($id)->img;
        Storage::disk('uploads')->delete('teachers/' .$old_img);
        Teacher::findOrFail($id)->delete();
        return back();
    }
}

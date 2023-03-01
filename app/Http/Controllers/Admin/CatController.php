<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;

class CatController extends Controller
{
    public function index(){
        $data['cats'] = Category::select('id','name')->orderBy('id', 'DESC')->get();
        return view('admin.cats.index')->with($data);
    }
    public function create(){
        return view('Admin.cats.create');
    }
    public function store(Request $request){
        $data = $request->validate([
           'name' => 'required|string|max:18',
        ]);
        Category::create($data);
        return redirect(route('Admin.cats.index'));
    }
    public function edit($id){
        $data['cat'] = Category::findOrFail($id);
        return view('Admin.cats.edit')->with($data);
    }
    public function update(Request $request){
        $data = $request->validate([
            'name' => 'required|string|max:18',
        ]);
        Category::findOrFail($request->id)->update($data);
        return back();
    }
    public function delete($id){
        Category::findOrFail($id)->delete();
        return back();
    }
}

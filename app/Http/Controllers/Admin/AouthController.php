<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class AouthController extends Controller
{
    public function login(){
        return view('admin.auth.login');
    }
    public function doLogin(Request $request){
        $data = $request->validate([
           'email' => 'required|email|max:200',
           'password' => 'required|string|max:200',
        ]);
        if (!auth()->guard('admin')->attempt(['email' => $data['email'],'password' => $data['password']]))
        {
            return back();
        }
        else{
            return redirect(route('Admin.home'));
        }
    }
    public function logout(){
        auth()->guard('admin')->logout();
        return redirect(route('Admin.login'));
    }
}

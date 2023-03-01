<?php

namespace App\Http\Controllers\Aouther;

use App\Http\Controllers\Controller;
use App\Models\Setting;

class ContactController extends Controller
{
    public function index(){
        $data['setting'] = Setting::first();
        return view('Aouther.contact.index')->with($data);
    }
}

<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\BookResource;
use App\Http\Resources\CourseResource;
use App\Http\Resources\StudentResource;
use App\Models\Course;
use App\Models\Student;
use Illuminate\Http\Request;

class StudentController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return StudentResource::collection(Student::all()->paginate(25));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $student = Student::create([
            'id' => $request->id,
            'name' => $request->name,
            'email' => $request->email,
            'specialty' =>$request->email,
        ]);
        return new StudentResource($student);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        return new StudentResource($id);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Student $id)
    {
        $id->update($request->only(['name','email','specialty']));
        return new StudentResource($id);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Student $id)
    {
        $id->delete();
        return response()->json(null,204);
    }
}

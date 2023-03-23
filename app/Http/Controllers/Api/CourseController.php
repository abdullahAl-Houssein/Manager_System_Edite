<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\BookResource;
use App\Http\Resources\CourseResource;
use App\Models\Book;
use App\Models\Course;
use Illuminate\Http\Request;

class CourseController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return CourseResource::collection(Course::all()->paginate(25));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
            $course = Course::create([
            'categorie_id' => $request->categorie_id,
            'teacher_id' => $request->teacher_id,
            'name' => $request->name,
            'small_desc' => $request->small_desc,
            'img' => $request->img,
        ]);
        return new CourseResource($course);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        return new CourseResource($id);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Course $id)
    {
        $id->update($request->only(['name','small_desc','img']));
        return new CourseResource($id);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Course $id)
    {
        $id->delete();
        return response()->json(null,204);
    }
}

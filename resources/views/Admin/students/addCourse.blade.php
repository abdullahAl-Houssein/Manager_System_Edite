@extends('admin.layout')
@section('content')
    <div class="d-flex justify-content-between mb-3">
        <h6>Students / Edit / Add Course <span class="text-primary">update</span></h6>
        <a href="{{route('Admin.students.index')}}" class="btn btn-sm btn-primary">Back</a>
    </div>
    @include('admin.compentet.errors')
    <form method="POST" action="{{route('Admin.students.storeCourse', $student_id)}}" enctype="multipart/form-data">
        @csrf
        <div class="form-group">
            <input type="hidden" name="id" value="{{$student_id}}">
            <label>Courses</label>
            <select class="form-control" name="course_id">
                @foreach($courses as $course)
                    <option value="{{$course->id}}" >{{$course->name}}</option>
                @endforeach
            </select>
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
@endsection

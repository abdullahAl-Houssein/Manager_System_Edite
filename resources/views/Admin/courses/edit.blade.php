@extends('admin.layout')
@section('content')
    <div class="d-flex justify-content-between mb-3">
        <h6>Courses / Edit / {{$course->name}} <span class="text-primary">update</span></h6>
        <a href="{{route('Admin.courses.index')}}" class="btn btn-sm btn-primary">Back</a>
    </div>
    @include('admin.compentet.errors')
    <form method="POST" action="{{route('Admin.courses.update')}}" enctype="multipart/form-data">
        @csrf
        <input type="hidden" name="id" value="{{$course->id}}">
        <div class="form-group">
            <label>Name</label>
            <input type="text" name="name" value="{{$course->name}}" class="form-control">
        </div>
        <div class="form-group">
            <label>Categories</label>
            <select class="form-control" name="categorie_id">
                @foreach($cats as $cat)
                    <option value="{{$cat->id}}" @if($course->categorie_id == $cat->id) selected @endif>{{$cat->name}}</option>
                @endforeach
            </select>
        </div>
        <div class="form-group">
            <label>Teachers</label>
            <select class="form-control" name="teacher_id">
                @foreach($teachers as $teacher)
                    <option value="{{$teacher->id}}" @if($course->teacher_id == $teacher->id) selected @endif>{{$teacher->name}}</option>
                @endforeach
            </select>
        </div>
        <div class="form-group">
            <label>Small description</label>
            <input type="text" value="{{$course->small_desc}}" name="small_desc" class="form-control">
        </div>
        <div class="form-group">
            <label>Description</label>
            <textarea name="desc" class="form-control">{{$course->desc}}</textarea>
        </div>
        <img src="{{asset('uploads/courses/' .$course->img)}}" class="my-5" height="100px">
        <div class="form-group">
            <input type="file" name="img" class="form-control-file">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
@endsection

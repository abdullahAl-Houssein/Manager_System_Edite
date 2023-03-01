@extends('admin.layout')
@section('content')
    <div class="d-flex justify-content-between mb-3">
        <h6>Courses/ Add new</h6>
        <a href="{{route('Admin.courses.index')}}" class="btn btn-sm btn-primary">Back</a>
    </div>
    @include('admin.compentet.errors')
    <form method="POST" action="{{route('Admin.courses.store')}}" enctype="multipart/form-data">
        @csrf
        <div class="form-group">
            <label>Name</label>
            <input type="text" name="name" class="form-control">
        </div>
        <div class="form-group">
            <label>Categories</label>
            <select class="form-control" name="categorie_id">
                @foreach($cats as $cat)
                    <option value="{{$cat->id}}">{{$cat->name}}</option>
                @endforeach
            </select>
        </div>
        <div class="form-group">
            <label>Teachers</label>
            <select class="form-control" name="teacher_id">
                @foreach($teachers as $teacher)
                    <option value="{{$teacher->id}}">{{$teacher->name}}</option>
                @endforeach
            </select>
        </div>
        <div class="form-group">
            <label>Small description</label>
            <input type="text" name="small_desc" class="form-control">
        </div>
        <div class="form-group">
            <label>Description</label>
            <textarea name="desc" class="form-control"></textarea>
        </div>
        <div class="form-group">
            <input type="file" name="img" class="form-control-file">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
@endsection

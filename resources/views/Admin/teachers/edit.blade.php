@extends('admin.layout')
@section('content')
    <div class="d-flex justify-content-between mb-3">
        <h6>Teachers / Edit / {{$teacher->name}} <span class="text-primary">update</span></h6>
        <a href="{{route('Admin.teachers.index')}}" class="btn btn-sm btn-primary">Back</a>
    </div>
    @include('admin.compentet.errors')
    <form method="POST" action="{{route('Admin.teachers.update')}}" enctype="multipart/form-data">
        @csrf
        <div class="form-group">
            <input type="hidden" name="id" value="{{$teacher->id}}">
            <label>Name</label>
            <input type="text" name="name" class="form-control" value="{{$teacher->name}}">
        </div>
        <div class="form-group">
            <label>Phone</label>
            <input type="text" name="phone" class="form-control" value="{{$teacher->phone}}">
        </div>
        <div class="form-group">
            <label>Specialty</label>
            <input type="text" name="specialty" class="form-control" value="{{$teacher->specialty}}">
        </div>
        <img src="{{asset('uploads/teachers/' .$teacher->img)}}" class="my-5" height="100px">
        <div class="form-group">
            <input type="file" name="img" class="form-control-file">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
@endsection

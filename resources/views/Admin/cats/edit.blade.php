@extends('admin.layout')
@section('content')
    <div class="d-flex justify-content-between mb-3">
        <h6>Categories / Edit / {{$cat->name}} <span class="text-primary">updated</span></h6>
        <a href="{{route('Admin.cats.index')}}" class="btn btn-sm btn-primary">Back</a>
    </div>
    @include('admin.compentet.errors')
    <form method="POST" action="{{route('Admin.cats.update')}}">
        @csrf
        <div class="form-group">
            <input type="hidden" name="id" value="{{$cat->id}}">
            <label>Name</label>
            <input type="text" name="name" class="form-control" value="{{$cat->name}}">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
@endsection

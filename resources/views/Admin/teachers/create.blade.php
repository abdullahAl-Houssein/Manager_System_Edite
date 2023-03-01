@extends('admin.layout')
@section('content')
    <div class="d-flex justify-content-between mb-3">
        <h6>Teachers/ Add new</h6>
        <a href="{{route('Admin.teachers.index')}}" class="btn btn-sm btn-primary">Back</a>
    </div>
    @include('admin.compentet.errors')
    <form method="POST" action="{{route('Admin.teachers.store')}}" enctype="multipart/form-data">
        @csrf
        <div class="form-group">
            <label>Name</label>
            <input type="text" name="name" class="form-control">
        </div>
        <div class="form-group">
            <label>Phone</label>
            <input type="text" name="phone" class="form-control">
        </div>
        <div class="form-group">
            <label>Specialty</label>
            <input type="text" name="specialty" class="form-control">
        </div>
        <div class="form-group">
            <input type="file" name="img" class="form-control-file">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
@endsection

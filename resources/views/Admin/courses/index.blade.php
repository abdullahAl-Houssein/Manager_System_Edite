@extends('admin.layout')
@section('content')
    <dev class="d-flex justify-content-between mb-3">
        <h6>Courses</h6>
        <a href="{{route('Admin.courses.create')}}" class="btn btn-sm btn-primary">Add new</a>
    </dev>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Image</th>
                <th scope="col">Name</th>
                <th scope="col">Actions</th>
            </tr>
            </thead>
            <tbody>
            @foreach($courses as $course)
            <tr>
                <th scope="row">{{ $loop->iteration }}</th>
                <td>
                    <img src="{{asset('uploads/courses/' .$course->img)}}" height="50px">
                </td>
                <td>{{$course->name}}</td>
                <td>
                    <a href="{{route('Admin.courses.edit' ,$course->id)}}" class="btn btn-sm btn-info">Edit</a>
                    <a href="{{route('Admin.courses.delete' ,$course->id)}}" class="btn btn-sm btn-danger">Delete</a>
                </td>
            </tr>
            @endforeach
            </tbody>
        </table>
    </div>
@endsection

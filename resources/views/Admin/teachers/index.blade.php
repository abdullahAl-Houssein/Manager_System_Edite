@extends('admin.layout')
@section('content')
    <dev class="d-flex justify-content-between mb-3">
        <h6>Teachers</h6>
        <a href="{{route('Admin.teachers.create')}}" class="btn btn-sm btn-primary">Add new</a>
    </dev>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Image</th>
                <th scope="col">Name</th>
                <th scope="col">Phone</th>
                <th scope="col">Specialty</th>
                <th scope="col">Actions</th>
            </tr>
            </thead>
            <tbody>
            @foreach($teachers as $teacher)
            <tr>
                <th scope="row">{{ $loop->iteration }}</th>
                <td>
                    <img src="{{asset('uploads/teachers/' .$teacher->img)}}" height="50px">
                </td>
                <td>{{$teacher->name}}</td>
                <td>
                    @if($teacher->phone !==null)
                        {{$teacher->phone}}
                    @else
                        no phone
                    @endif
                </td>
                <td>{{$teacher->specialty}}</td>
                <td>
                    <a href="{{route('Admin.teachers.edit' ,$teacher->id)}}" class="btn btn-sm btn-info">Edit</a>
                    <a href="{{route('Admin.teachers.delete' ,$teacher->id)}}" class="btn btn-sm btn-danger">Delete</a>
                </td>
            </tr>
            @endforeach
            </tbody>
        </table>
    </div>
@endsection

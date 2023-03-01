@extends('admin.layout')
@section('content')
    <dev class="d-flex justify-content-between mb-3">
        <h6>students</h6>
        <a href="{{route('Admin.students.create')}}" class="btn btn-sm btn-primary">Add new</a>
    </dev>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Name</th>
                <th scope="col">Email</th>
                <th scope="col">Specialty</th>
                <th scope="col">Actions</th>
            </tr>
            </thead>
            <tbody>
            @foreach($students as $student)
            <tr>
                <th scope="row">{{ $loop->iteration }}</th>
                <td>{{$student->name}}</td>
                <td>{{$student->email}}</td>
                <td>
                    @if($student->specialty !==null)
                        {{$student->specialty}}
                    @else
                        no specialty
                    @endif
                </td>
                <td>
                    <a href="{{route('Admin.students.edit' ,$student->id)}}" class="btn btn-sm btn-info">Edit</a>
                    <a href="{{route('Admin.students.delete' ,$student->id)}}" class="btn btn-sm btn-danger">Delete</a>
                    <a href="{{route('Admin.students.addCourse' ,$student->id)}}" class="btn btn-sm btn-primary">Add to Course</a>
                    <a href="{{route('Admin.students.showCourses' ,$student->id)}}" class="btn btn-sm btn-primary">Show Courses</a>
                </td>
            </tr>
            @endforeach
            </tbody>
        </table>
    </div>
@endsection

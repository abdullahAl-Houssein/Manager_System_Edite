@extends('admin.layout')
@section('content')
    <div class="d-flex justify-content-between mb-3">
        <h6>students/ Show courses</h6>
        <a href="{{route('Admin.students.index')}}" class="btn btn-sm btn-primary">Back</a>
    </div>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Name</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>
            @foreach($courses as $course)
                <tr>
                    <td>{{$loop->iteration}}</td>
                    <td>
                        {{$course->student_id}}
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>

@endsection

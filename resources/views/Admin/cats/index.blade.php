@extends('admin.layout')
@section('content')
    <dev class="d-flex justify-content-between mb-3">
        <h6>Categories</h6>
        <a href="{{route('Admin.cats.create')}}" class="btn btn-sm btn-primary">Add new</a>
    </dev>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Name</th>
                <th scope="col">Actions</th>
            </tr>
            </thead>
            <tbody>
            @foreach($cats as $cat)
            <tr>
                <th scope="row">{{ $loop->iteration }}</th>
                <td>{{$cat->name}}</td>
                <td>
                    <a href="{{route('Admin.cats.edit' ,$cat->id)}}" class="btn btn-sm btn-info">Edit</a>
                    <a href="{{route('Admin.cats.delete' ,$cat->id)}}" class="btn btn-sm btn-danger">Delete</a>
                </td>
            </tr>
            @endforeach
            </tbody>
        </table>
    </div>
@endsection

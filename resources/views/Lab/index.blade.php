@extends('layouts.app')

@section('content')
<div class="d-flex justify-content-between">
    <h2>Lab List</h2>
    <a href="{{ route('labCreate') }}" class="btn btn-success">Add Lab</a>
</div>

@if(session('success'))
<div class="alert alert-success">{{ session('success') }}</div>
@endif

<table class="table table-bordered mt-3">
    <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Address</th>
            <th>Phone</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        @foreach($labs as $lab)
        <tr>
            <td>{{ $lab->id }}</td>
            <td>{{ $lab->name }}</td>
            <td>{{ $lab->address }}</td>
            <td>{{ $lab->phone }}</td>
            <td>
                <a href="{{ route('labsEdit', $lab->id) }}" class="btn btn-warning btn-sm">Edit</a>
                <form action="{{ route('labsDelete') }}" method="POST" style="display:inline;">
                    @csrf
                    <input hidden type="text" name="lab_id" class="form-control" value="{{ $lab->id }}">
                    <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?');">Delete</button>
                </form>
            </td>
        </tr>
        @endforeach
    </tbody>
</table>
@endsection
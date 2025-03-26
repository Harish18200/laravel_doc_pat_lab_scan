@extends('layouts.app')

@section('content')
<div class="container">
    <h2>User Management</h2>

    <div class="d-flex justify-content-end">
        <a href="{{ route('userCreate') }}" class="btn btn-primary">Add User</a>
    </div>


    @if(session('success'))
    <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    <table class="table mt-3">
        <thead>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Mobile</th>
                <th>Address</th>
                <th>Age</th>
                <th>DOB</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach($users as $user)
            <tr>
                <td>{{ $user->name }}</td>
                <td>{{ $user->email }}</td>
                <td>{{ $user->mobile }}</td>
                <td>{{ $user->address }}</td>
                <td>{{ $user->age }}</td>
                <td>{{ $user->dob }}</td>
                <td>
                    <a href="{{ route('userEdit', $user->id ) }}" class="btn btn-warning">Edit</a>
                    <form action="{{ route('userDelete') }}" method="POST" class="d-inline">
                        @csrf
                        <input type="hidden" name="user_id" value="{{ $user->id }}">
                        <button class="btn btn-danger" onclick="return confirm('Are you sure?')">Delete</button>
                    </form>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection
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
                <th>Gender</th>
                <th>Contact No</th>
                <th>Department</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach($users as $user)
            <tr>
                <td>{{ $user->name }}</td>
                <td>
                    @if($user->gender_id == 1)
                    Male
                    @elseif($user->gender_id == 2)
                    Female
                    @else
                    Other
                    @endif
                </td>
                <td>{{ $user->contact_no     }}</td>
                <td>
                    @if($user->department_id == 1)
                    Admin
                    @elseif($user->department_id == 2)
                    Laboratory
                    @elseif($user->department_id == 3)
                    Doctor
                    @else
                    Unknown
                    @endif
                </td>

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
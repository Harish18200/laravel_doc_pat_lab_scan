@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Edit User</h2>
    <form action="{{ route('userStore') }}" method="POST">
        @csrf

        <input type="hidden" name="id" value="{{ $user->id }}">

        <div class="form-group">
            <label>Name</label>
            <input type="text" name="name" class="form-control" value="{{ $user->name }}" required>
        </div>
        <div class="form-group">
            <label>Email</label>
            <input type="email" name="email" class="form-control" value="{{ $user->email }}" required>
        </div>
        <div class="form-group">
            <label>Mobile</label>
            <input type="text" name="mobile" class="form-control" value="{{ $user->mobile }}">
        </div>
        <div class="form-group">
            <label>Address</label>
            <input type="text" name="address" class="form-control" value="{{ $user->address }}">
        </div>
        <div class="form-group">
            <label>Age</label>
            <input type="number" name="age" class="form-control" value="{{ $user->age }}">
        </div>
        <div class="form-group">
            <label>DOB</label>
            <input type="date" name="dob" class="form-control" value="{{ $user->dob }}">
        </div>
        <button type="submit" class="btn btn-primary mt-2">Update</button>
    </form>
</div>
@endsection
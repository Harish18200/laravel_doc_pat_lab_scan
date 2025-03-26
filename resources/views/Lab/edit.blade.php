@extends('layouts.app')

@section('content')
<h2>Edit Lab</h2>

<form action="{{ route('labStore') }}" method="POST">
    @csrf

    <div class="mb-3">
        <label class="form-label">Lab Name</label>
        <input type="text" name="name" class="form-control" value="{{ $labApplication->name }}" required>
    </div>
    <div class="mb-3">
        <label class="form-label">Address</label>
        <input type="text" name="address" class="form-control" value="{{ $labApplication->address }}">
        <input hidden type="text" name="labApplication_id" class="form-control" value="{{ $labApplication->id }}">
    </div>
    <div class="mb-3">
        <label class="form-label">Phone</label>
        <input type="text" name="phone" class="form-control" value="{{ $labApplication->phone }}">
    </div>
    <button type="submit" class="btn btn-primary">Update</button>
    <a href="{{ route('LabView') }}" class="btn btn-secondary">Cancel</a>
</form>
@endsection
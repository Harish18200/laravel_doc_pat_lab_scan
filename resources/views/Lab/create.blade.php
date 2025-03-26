@extends('layouts.app')

@section('content')
    <h2>Add Lab</h2>

    <form action="{{ route('labStore') }}" method="POST">
        @csrf
        <div class="mb-3">
            <label class="form-label">Lab Name</label>
            <input type="text" name="name" class="form-control" required>
        </div>
        <div class="mb-3">
            <label class="form-label">Address</label>
            <input type="text" name="address" class="form-control">
        </div>
        <div class="mb-3">
            <label class="form-label">Phone</label>
            <input type="text" name="phone" class="form-control">
        </div>
        <button type="submit" class="btn btn-primary">Save</button>
        <a href="{{ route('LabView') }}" class="btn btn-secondary">Cancel</a>
    </form>
@endsection

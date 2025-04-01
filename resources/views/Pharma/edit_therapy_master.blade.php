@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Edit Therapy</h2>

    @if(session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    <form action="{{ route('therapy.update', $therapy->id) }}" method="POST">
        @csrf

        <div class="mb-3">
            <label class="form-label">Therapy Details</label>
            <input type="text" name="therapy_details" class="form-control" value="{{ $therapy->therapy_details }}" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Price</label>
            <input type="number" name="price" class="form-control" value="{{ $therapy->price }}" required>
        </div>

        <button type="submit" class="btn btn-success">Update</button>
        <a href="{{ route('therapy.master') }}" class="btn btn-secondary">Back</a>
    </form>
</div>
@endsection

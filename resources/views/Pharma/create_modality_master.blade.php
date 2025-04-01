@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Create New Modality</h2>

    @if(session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    <form action="{{ route('modality.store') }}" method="POST">
        @csrf

        <div class="mb-3">
            <label class="form-label">Modality Details</label>
            <input type="text" name="modality_details" class="form-control" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Price</label>
            <input type="number" name="price" class="form-control" required>
        </div>

        <button type="submit" class="btn btn-success">Save</button>
        <a href="{{ route('modalityMaster') }}" class="btn btn-secondary">Back</a>
    </form>
</div>
@endsection

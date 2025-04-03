@extends('layouts.app')

@section('content')
<h2>Add Lab</h2>

<form action="{{ route('labStore') }}" method="POST">
    @csrf


    <select class="form-select" name="lab_master_id" required>
        <option value="">Select Lab Master</option>
        @foreach($lab_masters as $lab)
        <option value="{{ $lab->id }}">{{ $lab->lab_select }}</option>
        @endforeach
    </select>

    <div class="mb-3">
        <label class="form-label">Lab Details</label>
        <input type="text" name="lab_details" class="form-control" required>
    </div>
    <div class="mb-3">
        <label class="form-label">Normal Range</label>
        <input type="text" name="normal_range" class="form-control">
    </div>
    <div class="mb-3">
        <label class="form-label">Unit</label>
        <input type="text" name="unit" class="form-control">
    </div>
    <div class="mb-3">
        <label class="form-label">Price</label>
        <input type="text" name="price" class="form-control">
    </div>
    <div class="mb-3">
        <label class="form-label">Child</label>
        <input type="text" name="Child" class="form-control">
    </div>
    <button type="submit" class="btn btn-primary">Save</button>
    <a href="{{ route('LabView') }}" class="btn btn-secondary">Cancel</a>
</form>
@endsection
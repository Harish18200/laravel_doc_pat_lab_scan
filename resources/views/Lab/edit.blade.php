@extends('layouts.app')

@section('content')
<h2>Edit Lab</h2>

<form action="{{ route('labStore') }}" method="POST">
    @csrf

    <div class="mb-3">
        <label class="form-label">Lab Master</label>
        <select name="lab_master_id" class="form-select" required>
            <option value="">Select Lab Master</option>
            @foreach($lab_masters as $lab)
                <option value="{{ $lab->id }}" {{ $labApplication->lab_select_id == $lab->id ? 'selected' : '' }}>
                    {{ $lab->lab_select }}
                </option>
            @endforeach
        </select>
    </div>

    <!-- Lab Details -->
    <div class="mb-3">
        <label class="form-label">Lab Details</label>
        <input type="text" name="lab_details" class="form-control" value="{{ $labApplication->lab_details }}" required>
    </div>

    <!-- Normal Range -->
    <div class="mb-3">
        <label class="form-label">Normal Range</label>
        <input type="text" name="normal_range" class="form-control" value="{{ $labApplication->normal_range }}">
    </div>

    <!-- Unit -->
    <div class="mb-3">
        <label class="form-label">Unit</label>
        <input type="text" name="unit" class="form-control" value="{{ $labApplication->unit }}">
    </div>

    <!-- Price -->
    <div class="mb-3">
        <label class="form-label">Price</label>
        <input type="number" name="price" class="form-control" value="{{ $labApplication->price }}" required>
    </div>

    <!-- Child -->
    <div class="mb-3">
        <label class="form-label">Child</label>
        <input type="text" name="Child" class="form-control" value="{{ $labApplication->child }}">
    </div>

    <input type="hidden" name="labApplication_id" value="{{ $labApplication->id }}">

    <button type="submit" class="btn btn-primary">Update</button>
    <a href="{{ route('LabView') }}" class="btn btn-secondary">Cancel</a>
</form>
@endsection
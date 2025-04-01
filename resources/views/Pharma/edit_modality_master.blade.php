@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Edit Modality</h2>
    
    <form action="{{ route('modality.update', $modality->id) }}" method="POST">
        @csrf
        @method('PUT')

        <div class="mb-3">
            <label class="form-label">Modality Details</label>
            <input type="text" name="modality_details" class="form-control" value="{{ $modality->modality_details }}" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Price</label>
            <input type="number" name="price" class="form-control" value="{{ $modality->price }}" required>
        </div>

        <button type="submit" class="btn btn-success">Update</button>
        <a href="{{ route('modalityMaster') }}" class="btn btn-secondary">Back</a>
    </form>
</div>
@endsection

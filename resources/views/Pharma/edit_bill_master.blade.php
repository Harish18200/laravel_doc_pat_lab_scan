@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Edit Bill</h2>

    @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <form action="{{ route('bill.update', $bill->id) }}" method="POST">
        @csrf
        @method('PUT')

        <div class="mb-3">
            <label for="bill_type" class="form-label">Bill Type</label>
            <select name="bill_type_id" id="bill_type" class="form-control" required>
                <option value="">Select Bill Type</option>
                @foreach($bill_types as $bill_type)
                <option value="{{ $bill_type->id }}">{{ $bill_type->type }}</option>
                @endforeach
            </select>
        </div>

        <div class="mb-3">
            <label for="description" class="form-label">Description</label>
            <textarea name="description" id="description" class="form-control" rows="3" required>{{ $bill->Description }}</textarea>
        </div>

        <div class="mb-3">
            <label for="price" class="form-label">Price ($)</label>
            <input type="number" name="price" id="price" class="form-control" step="0.01" value="{{ $bill->Price }}" required>
        </div>

        <div class="mb-3 form-check">
            <input type="checkbox" name="status" id="status" class="form-check-input" {{ $bill->status ? 'checked' : '' }}>
            <label for="status" class="form-check-label">Active</label>
        </div>

        <button type="submit" class="btn btn-primary">Update Bill</button>
        <a href="{{ route('bill.master') }}" class="btn btn-secondary">Cancel</a>
    </form>
</div>
@endsection

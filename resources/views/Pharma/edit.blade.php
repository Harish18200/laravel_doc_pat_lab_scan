@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Edit Pharma</h2>
    <form action="{{ route('pharmaStore') }}" method="POST">
        @csrf 
        <div class="mb-3">
            <label>Name</label>
            <input type="text" name="name" class="form-control" value="{{ $pharma->name }}" required>
            <input hidden type="text" name="pharma_id" class="form-control" value="{{ $pharma->id }}" required>

        </div>
        <div class="mb-3">
            <label>Category</label>
            <input type="text" name="category" class="form-control" value="{{ $pharma->category }}" required>
        </div>
        <div class="mb-3">
            <label>Price</label>
            <input type="number" name="price" class="form-control" value="{{ $pharma->price }}" required>
        </div>
        <div class="mb-3">
            <label>Stock</label>
            <input type="number" name="stock" class="form-control" value="{{ $pharma->stock }}" required>
        </div>
        <button type="submit" class="btn btn-success">Update</button>
    </form>
</div>
@endsection

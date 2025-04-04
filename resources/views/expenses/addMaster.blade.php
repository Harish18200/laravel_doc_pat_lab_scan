@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Add Expense Master</h2>
    <form action="{{ route('expensesMasterStore') }}" method="POST">
        @csrf
        <div class="mb-3">
            <label>Expense Details</label>
            <input type="text" name="expenses_detail" class="form-control" required>
        </div>
        <div class="mb-3">
            <label>description</label>
            <input type="text" name="description" class="form-control">
        </div>

        <button type="submit" class="btn btn-success">Save</button>
        <a href="{{ route('expensesMasterIndex') }}" class="btn btn-secondary">Cancel</a>
    </form>
</div>
@endsection
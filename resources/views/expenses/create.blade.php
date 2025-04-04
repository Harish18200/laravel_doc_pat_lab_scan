@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Add Expense</h2>
    <form action="{{ route('expensesStore') }}" method="POST">
    @csrf
    <div class="mb-3">
        <label>Date</label>
        <input type="date" name="date" class="form-control" required>
    </div>

    <div class="row">
        <!-- Left Column -->
        <div class="col-md-6">
            <div class="mb-3">
                <label>EB Bill</label>
                <input type="number" name="ebbill" class="form-control">
            </div>
            <div class="mb-3">
                <label>Physio Expenses</label>
                <input type="number" name="physio_expenses" class="form-control">
            </div>
            <div class="mb-3">
                <label>Salary</label>
                <input type="number" name="salary" class="form-control">
            </div>
            <div class="mb-3">
                <label>Tv</label>
                <input type="number" name="tv" class="form-control">
            </div>
            <div class="mb-3">
                <label>Tea</label>
                <input type="number" name="tea" class="form-control">
            </div>
            <div class="mb-3">
                <label>Food</label>
                <input type="number" name="food" class="form-control">
            </div>
        </div>

        <!-- Right Column -->
        <div class="col-md-6">
            <div class="mb-3">
                <label>Biscuit</label>
                <input type="number" name="biscuit" class="form-control">
            </div>
            <div class="mb-3">
                <label>Cool Drinks</label>
                <input type="number" name="cool_drinks" class="form-control">
            </div>
            <div class="mb-3">
                <label>Service</label>
                <input type="number" name="service" class="form-control">
            </div>
            <div class="mb-3">
                <label>Work</label>
                <input type="number" name="work" class="form-control">
            </div>
            <div class="mb-3">
                <label>Milk</label>
                <input type="number" name="milk" class="form-control">
            </div>
        </div>
    </div>

    <button type="submit" class="btn btn-success">Save</button>
    <a href="{{ route('expensesView') }}" class="btn btn-secondary">Cancel</a>
</form>

</div>
@endsection
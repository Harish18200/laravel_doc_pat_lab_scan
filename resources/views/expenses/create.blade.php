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
                <label>phone Bill</label>
                <input type="number" name="phone_bill" class="form-control">
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
            <div class="mb-3">
                <label>Amazon</label>
                <input type="number" name="amazon" class="form-control">
            </div>
            <div class="mb-3">
                <label>Out Side Lab</label>
                <input type="number" name="out_side_lab" class="form-control">
            </div>
            <div class="mb-3">
                <label>Medicine Company</label>
                <input type="number" name="medicine_company" class="form-control">
            </div>
            <div class="mb-3">
                <label>LAUNDRY</label>
                <input type="number" name="laundry" class="form-control">
            </div>
            
            <div class="mb-3">
                <label>Car</label>
                <input type="number" name="car" class="form-control">
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
            <div class="mb-3">
                <label>Flower</label>
                <input type="number" name="flower" class="form-control">
            </div>

            <div class="mb-3">
                <label>manju</label>
                <input type="number" name="manju" class="form-control">
            </div>

            <div class="mb-3">
                <label>Courier</label>
                <input type="number" name="courier" class="form-control">
            </div>
            <div class="mb-3">
                <label>desil</label>
                <input type="number" name="desil" class="form-control">
            </div>

            <div class="mb-3">
                <label>Bio Waste</label>
                <input type="number" name="bio_waste" class="form-control">
            </div>

            <div class="mb-3">
                <label>Autitor</label>
                <input type="number" name="autitor" class="form-control">
            </div>
       
        </div>
    </div>

    <button type="submit" class="btn btn-success">Save</button>
    <a href="{{ route('expensesView') }}" class="btn btn-secondary">Cancel</a>
</form>

</div>
@endsection
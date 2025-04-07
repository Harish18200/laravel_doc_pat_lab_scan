@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Edit Expense</h2>
    <form action="{{ route('expensesStore') }}" method="POST">
        @csrf

        <div class="mb-3">
            <label>Date</label>
            <input type="date" name="date" class="form-control" value="{{ $expense->date ?? '' }}" required>
            <input hidden type="number" name="expenses_id" class="form-control" value="{{ $expense->id ?? '' }}">
        </div>

        <div class="row">
            <div class="col-md-6">
                <div class="mb-3">
                    <label>EB Bill</label>
                    <input type="number" step="0.01" name="ebbill" class="form-control" value="{{ $expense->ebbill ?? '' }}">
                </div>
                <div class="mb-3">
                    <label>Physio Expenses</label>
                    <input type="number" step="0.01" name="physio_expenses" class="form-control" value="{{ $expense->physio_expenses ?? '' }}">
                </div>
                <div class="mb-3">
                    <label>Salary</label>
                    <input type="number" step="0.01" name="salary" class="form-control" value="{{ $expense->salary ?? '' }}">
                </div>
                <div class="mb-3">
                    <label>TV</label>
                    <input type="number" step="0.01" name="tv" class="form-control" value="{{ $expense->tv ?? '' }}">
                </div>
                <div class="mb-3">
                    <label>Tea</label>
                    <input type="number" step="0.01" name="tea" class="form-control" value="{{ $expense->tea ?? '' }}">
                </div>
                <div class="mb-3">
                    <label>Phone Bill</label>
                    <input type="number" step="0.01" name="phone_bill" class="form-control" value="{{ $expense->phone_bill ?? '' }}">
                </div>
                <div class="mb-3">
                    <label>Food</label>
                    <input type="number" step="0.01" name="food" class="form-control" value="{{ $expense->food ?? '' }}">
                </div>
                <div class="mb-3">
                    <label>Amazon</label>
                    <input type="number" step="0.01" name="amazon" class="form-control" value="{{ $expense->amazon ?? '' }}">
                </div>
                <div class="mb-3">
                    <label>Out Side Lab</label>
                    <input type="number" step="0.01" name="out_side_lab" class="form-control" value="{{ $expense->out_side_lab ?? '' }}">
                </div>
                <div class="mb-3">
                    <label>Medicine Company</label>
                    <input type="number" step="0.01" name="medicine_company" class="form-control" value="{{ $expense->medicine_company ?? '' }}">
                </div>
                <div class="mb-3">
                    <label>Laundry</label>
                    <input type="number" step="0.01" name="laundry" class="form-control" value="{{ $expense->laundry ?? '' }}">
                </div>
                <div class="mb-3">
                    <label>Car</label>
                    <input type="number" step="0.01" name="car" class="form-control" value="{{ $expense->car ?? '' }}">
                </div>
            </div>

            <div class="col-md-6">
                <div class="mb-3">
                    <label>Biscuit</label>
                    <input type="number" step="0.01" name="biscuit" class="form-control" value="{{ $expense->biscuit ?? '' }}">
                </div>
                <div class="mb-3">
                    <label>Cool Drinks</label>
                    <input type="number" step="0.01" name="cool_drinks" class="form-control" value="{{ $expense->cool_drinks ?? '' }}">
                </div>
                <div class="mb-3">
                    <label>Service</label>
                    <input type="number" step="0.01" name="service" class="form-control" value="{{ $expense->service ?? '' }}">
                </div>
                <div class="mb-3">
                    <label>Work</label>
                    <input type="number" step="0.01" name="work" class="form-control" value="{{ $expense->work ?? '' }}">
                </div>
                <div class="mb-3">
                    <label>Milk</label>
                    <input type="number" step="0.01" name="milk" class="form-control" value="{{ $expense->milk ?? '' }}">
                </div>
                <div class="mb-3">
                    <label>Flower</label>
                    <input type="number" step="0.01" name="flower" class="form-control" value="{{ $expense->flower ?? '' }}">
                </div>
                <div class="mb-3">
                    <label>Manju</label>
                    <input type="number" step="0.01" name="manju" class="form-control" value="{{ $expense->manju ?? '' }}">
                </div>
                <div class="mb-3">
                    <label>Courier</label>
                    <input type="number" step="0.01" name="courier" class="form-control" value="{{ $expense->courier ?? '' }}">
                </div>
                <div class="mb-3">
                    <label>Desil</label>
                    <input type="number" step="0.01" name="desil" class="form-control" value="{{ $expense->desil ?? '' }}">
                </div>
                <div class="mb-3">
                    <label>Bio Waste</label>
                    <input type="number" step="0.01" name="bio_waste" class="form-control" value="{{ $expense->bio_waste ?? '' }}">
                </div>
                <div class="mb-3">
                    <label>Auditor</label>
                    <input type="number" step="0.01" name="autitor" class="form-control" value="{{ $expense->autitor ?? '' }}">
                </div>
            </div>
        </div>


        <div class="mt-3">
            <button type="submit" class="btn btn-success">Update</button>
            <a href="{{ route('expensesView') }}" class="btn btn-secondary">Cancel</a>
        </div>
    </form>

</div>
@endsection
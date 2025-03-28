@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Add Pharma</h2> 

    <form action="{{ route('pharmaStore') }}" method="POST">
        @csrf
        <div class="mb-3">
            <label>Medicine</label>
            <input type="text" name="medicine" class="form-control" required>
        </div>
        <div class="mb-3">
            <label>Batch No</label>
            <input type="text" name="batch_no" class="form-control" required>
        </div>
        <div class="mb-3">
            <label>Price</label>
            <input type="number" name="price" class="form-control" step="0.01" required>
        </div>
        <div class="mb-3">
            <label>Manufacturing Date</label>
            <input type="date" name="mfg_date" class="form-control" required>
        </div>
        <div class="mb-3">
            <label>Expiry Date</label>
            <input type="date" name="exp_date" class="form-control" required>
        </div>
        <div class="mb-3">
            <label>Potency</label>
            <input type="text" name="potency" class="form-control" required>
        </div>
        <div class="mb-3">
            <label>Quantity</label>
            <input type="number" name="quantity" class="form-control" required>
        </div>
        <div class="mb-3">
            <label>Record Level</label>
            <input type="number" name="record_level" class="form-control" required>
        </div>

        <button type="submit" class="btn btn-success">Add</button>
    </form>

</div>
@endsection
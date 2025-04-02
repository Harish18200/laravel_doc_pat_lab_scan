@extends('layouts.app')

@section('content')
<div class="container">
    <h2 class="mb-4">Create Medicine Stock</h2>

    @if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
            <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
    @endif

    <form action="{{ route('medicineStore') }}" method="POST">
        @csrf

        <div class="row">
            <!-- Left Side Inputs -->
            <div class="col-md-6">
                <div class="mb-3">
                    <label for="bill_type" class="form-label">Bill Type</label>
                    <input type="text" name="bill_type" id="bill_type" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label for="medicine" class="form-label">Medicine Name</label>
                    <input type="text" name="medicine" id="medicine" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label for="batch_no" class="form-label">Batch No</label>
                    <input type="text" name="batch_no" id="batch_no" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label for="potency" class="form-label">Potency</label>
                    <input type="text" name="potency" id="potency" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label for="quantity" class="form-label">Quantity</label>
                    <input type="number" name="quantity" id="quantity" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label for="record_level" class="form-label">Record Level</label>
                    <input type="number" name="record_level" id="record_level" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label for="mfg_date" class="form-label">Manufacturing Date</label>
                    <input type="date" name="mfg_date" id="mfg_date" class="form-control" required>
                </div>
            </div>

            <!-- Right Side Inputs -->
            <div class="col-md-6">
                <div class="mb-3">
                    <label for="exp_date" class="form-label">Expiry Date</label>
                    <input type="date" name="exp_date" id="exp_date" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label for="gst" class="form-label">GST (%)</label>
                    <input type="number" name="gst" id="gst" class="form-control" step="0.01" required>
                </div>

                <div class="mb-3">
                    <label for="sgst" class="form-label">SGST (%)</label>
                    <input type="number" name="sgst" id="sgst" class="form-control" step="0.01" required>
                </div>

                <div class="mb-3">
                    <label for="cgst" class="form-label">CGST (%)</label>
                    <input type="number" name="cgst" id="cgst" class="form-control" step="0.01" required>
                </div>

                <div class="mb-3">
                    <label for="price" class="form-label">Price ($)</label>
                    <input type="number" name="price" id="price" class="form-control" step="0.01" required>
                </div>

                <div class="mb-3">
                    <label for="price_per_quantity" class="form-label">Price Per Quantity ($)</label>
                    <input type="number" name="price_per_quantity" id="price_per_quantity" class="form-control" step="0.01" required>
                </div>


            </div>
        </div>

        <div class="text-center mt-4">
            <button type="submit" class="btn btn-success">Submit</button>
            <a href="{{ route('bill.master') }}" class="btn btn-secondary">Cancel</a>
        </div>
    </form>
</div>
@endsection
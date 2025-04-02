@extends('layouts.app')

@section('content')
<div class="container">
    <h2 class="mb-4">Edit  Medicine Stock</h2>

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
                    <label for="bill_type" class="form-label">Medicine</label>
                    <input type="text" name="bill_type" id="bill_type" class="form-control" value="{{ $bill->medicine }}" >
                    <input  hidden  type="text" name="id" id="bill_type" class="form-control" value="{{ $bill->id }}" >

                </div>

                <div class="mb-3">
                    <label for="medicine" class="form-label">Medicine Name</label>
                    <input type="text" name="medicine" id="medicine" class="form-control" value="{{ $bill->medicine }}" >
                </div>

                <div class="mb-3">
                    <label for="batch_no" class="form-label">Batch No</label>
                    <input type="text" name="batch_no" id="batch_no" class="form-control" value="{{ $bill->batch_no }}" >
                </div>

                <div class="mb-3">
                    <label for="potency" class="form-label">Potency</label>
                    <input type="text" name="potency" id="potency" class="form-control" value="{{ $bill->potency }}" >
                </div>

                <div class="mb-3">
                    <label for="quantity" class="form-label">Quantity</label>
                    <input type="number" name="quantity" id="quantity" class="form-control" value="{{ $bill->quantity }}" >
                </div>

                <div class="mb-3">
                    <label for="record_level" class="form-label">Record Level</label>
                    <input type="number" name="record_level" id="record_level" class="form-control" value="{{ $bill->record_level }}" >
                </div>

                <div class="mb-3">
                    <label for="mfg_date" class="form-label">Manufacturing Date</label>
                    <input type="date" name="mfg_date" id="mfg_date" class="form-control" value="{{ $bill->mfg_date }}" >
                </div>
            </div>

            <!-- Right Side Inputs -->
            <div class="col-md-6">
                <div class="mb-3">
                    <label for="exp_date" class="form-label">Expiry Date</label>
                    <input type="date" name="exp_date" id="exp_date" class="form-control" value="{{ $bill->exp_date }}" >
                </div>

                <div class="mb-3">
                    <label for="gst" class="form-label">GST (%)</label>
                    <input type="number" name="gst" id="gst" class="form-control" step="0.01" value="{{ $bill->gst }}" >
                </div>

                <div class="mb-3">
                    <label for="sgst" class="form-label">SGST (%)</label>
                    <input type="number" name="sgst" id="sgst" class="form-control" step="0.01" value="{{ $bill->sgst }}" >
                </div>

                <div class="mb-3">
                    <label for="cgst" class="form-label">CGST (%)</label>
                    <input type="number" name="cgst" id="cgst" class="form-control" step="0.01" value="{{ $bill->cgst }}" >
                </div>

                <div class="mb-3">
                    <label for="price" class="form-label">Price ($)</label>
                    <input type="number" name="price" id="price" class="form-control" step="0.01" value="{{ $bill->price }}" >
                </div>

                <div class="mb-3">
                    <label for="price_per_quantity" class="form-label">Price Per Quantity ($)</label>
                    <input type="number" name="price_per_quantity" id="price_per_quantity" class="form-control" step="0.01" value="{{ $bill->price_per_quantity }}" >
                </div>

                
            </div>
        </div>

        <div class="text-center mt-4">
            <button type="submit" class="btn btn-primary">Update</button>
            <a href="{{ url()->previous() }}" class="btn btn-secondary">Cancel</a>
        </div>
    </form>
</div>
@endsection

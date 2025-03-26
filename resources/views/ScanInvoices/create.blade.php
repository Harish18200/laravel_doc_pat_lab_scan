@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Add Scan Invoice</h2>
    <form action="{{ route('scanInvoiceStore') }}" method="POST" enctype="multipart/form-data">
        @csrf
        <div class="mb-3">
            <label>Invoice Number</label>
            <input type="text" name="invoice_number" class="form-control" required>
        </div>
        <div class="mb-3">
            <label>Invoice Date</label>
            <input type="date" name="invoice_date" class="form-control" required>
        </div>
        <div class="mb-3">
            <label>Amount</label>
            <input type="number" name="amount" class="form-control" required>
        </div>
        <div class="mb-3">
            <label>Customer Name</label>
            <input type="text" name="customer_name" class="form-control" required>
        </div>
     
        <button type="submit" class="btn btn-success">Save Invoice</button>
    </form>
</div>
@endsection

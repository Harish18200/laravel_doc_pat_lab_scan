@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Edit Scan Invoice</h2>
    <form action="{{ route('scanInvoiceStore') }}" method="POST" enctype="multipart/form-data">
        @csrf

        <div class="mb-3">
            <label>Invoice Number</label>
            <input type="text" name="invoice_number" class="form-control" value="{{ $scanInvoice->invoice_number }}" required>
            <input  hidden type="text" name="invoice_id" class="form-control" value="{{ $scanInvoice->id }}" >

        </div>

        <div class="mb-3">
            <label>Invoice Date</label>
            <input type="date" name="invoice_date" class="form-control" value="{{ $scanInvoice->invoice_date }}" required>
        </div>

        <div class="mb-3">
            <label>Amount</label>
            <input type="number" name="amount" class="form-control" value="{{ $scanInvoice->amount }}" required>
        </div>

        <div class="mb-3">
            <label>Customer Name</label>
            <input type="text" name="customer_name" class="form-control" value="{{ $scanInvoice->customer_name }}" required>
        </div>

        

        

        <button type="submit" class="btn btn-success">Update Invoice</button>
        <a href="{{ route('scanInvoiceView') }}" class="btn btn-secondary">Cancel</a>
    </form>
</div>
@endsection
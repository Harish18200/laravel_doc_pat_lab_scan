@extends('layouts.app')

@section('content')
<div class="d-flex justify-content-between">
    <h2>Scan Invoices</h2>
</div>

@if(session('success'))
<div class="alert alert-success">{{ session('success') }}</div>
@endif

<div class="mt-3">
    <label for="invoice_date" class="form-label">Select Date</label>
    <input type="date" id="invoice_date" name="invoice_date" class="form-control" required>
</div>

<div class="mt-3">
    <a href="{{ asset('images/scaninvoicepdf_03_2025.pdf') }}" target="_blank" class="btn btn-primary" id="getInvoiceBtn" disabled>Get Invoice</a>
</div>

<script>
    document.getElementById('invoice_date').addEventListener('input', function() {
        let dateValue = this.value;
        let getInvoiceBtn = document.getElementById('getInvoiceBtn');
        
        if (dateValue) {
            getInvoiceBtn.removeAttribute('disabled');
        } else {
            getInvoiceBtn.setAttribute('disabled', 'true');
        }
    });
</script>
@endsection
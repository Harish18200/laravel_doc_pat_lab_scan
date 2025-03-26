@extends('layouts.app')

@section('content')
<div class="d-flex justify-content-between">
    <h2>Scan Invoices</h2>
    <a href="{{ route('scanInvoiceCreate') }}" class="btn btn-success">Add Invoice</a>
</div>


    @if(session('success'))
    <div class="alert alert-success">{{ session('success') }}</div>
    @endif
    <table class="table mt-3">
        <thead>
            <tr>
                <th>Invoice Number</th>
                <th>Customer</th>
                <th>Amount</th>
                <th>Date</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach($invoices as $invoice)
            <tr>
                <td>{{ $invoice->invoice_number }}</td>
                <td>{{ $invoice->customer_name }}</td>
                <td>{{ $invoice->amount }}</td>
                <td>{{ $invoice->invoice_date }}</td>

                <td>
                    <a href="{{ route('scanInvoiceEdit', $invoice->id) }}" class="btn btn-sm btn-warning">Edit</a>
                    <form action="{{ route('scanInvoiceDelete') }}" method="POST" class="d-inline">
                        @csrf
                        <input hidden type="text" name="invoice_id" class="form-control" value="{{ $invoice->id }}">

                        <button class="btn btn-sm btn-danger" onclick="return confirm('Delete this invoice?')">Delete</button>
                    </form>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection
@extends('layouts.app')

@section('content')
<div class="container">
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h2>Bill Master</h2>
        <a href="{{ route('bill.create') }}" class="btn btn-success">Create Bill</a>
    </div>

    @if(session('success'))
    <div class="alert alert-success">
        {{ session('success') }}
    </div>
    @endif

    <table class="table table-bordered">
        <thead class="thead-dark">
            <tr>
                <th>ID</th>
                <th>Type</th>
                <th>Description</th>
                <th>Price</th>
                <th>Show in Other Test</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach($bill_masters as $bill)
            <tr>
                <td>{{ $bill->id }}</td>
                <td>{{ $bill->billType->type ?? 'N/A' }}</td>
                <td>{{ $bill->Description }}</td>
                <td>{{ number_format($bill->Price) }}</td>
                <td>{{ $bill->status == 1 ? 'Active' : 'Inactive' }}</td>

                <td>
                    <a href="{{ route('bill.edit', $bill->id) }}" class="btn btn-primary btn-sm">Edit</a>


                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
    <a href="{{ route('pharmaView')}}" class="btn btn-secondary">Back</a>

</div>
@endsection
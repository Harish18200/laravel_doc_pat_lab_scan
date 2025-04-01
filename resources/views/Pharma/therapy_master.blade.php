@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Therapy Master</h2>
    <a href="{{ route('therapy.create') }}" class="btn btn-primary mb-3">Create Therapy</a>

    @if(session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    <table class="table table-bordered">
        <thead>
            <tr>
                <th>ID</th>
                <th>Therapy Details</th>
                <th>Price</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach($therapy_masters as $therapy)
                <tr>
                    <td>{{ $therapy->id }}</td>
                    <td>{{ $therapy->therapy_details }}</td>
                    <td>{{ $therapy->price }}</td>
                    <td>
                    <a href="{{ route('therapy.edit', $therapy->id) }}" class="btn btn-warning btn-sm">Edit</a>
                </td>                </tr>
            @endforeach
        </tbody>
    </table>
    <a href="{{ route('pharmaView')}}" class="btn btn-secondary">Back</a>
</div>
@endsection

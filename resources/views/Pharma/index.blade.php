@extends('layouts.app')

@section('content')
<div class="d-flex justify-content-between">
    <h2>Pharma List</h2>
    <a href="{{ route('pharmaCreate') }}" class="btn btn-success">Add Pharma</a>
</div>
    @if(session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Category</th>
                <th>Price</th>
                <th>Stock</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            @foreach($pharmas as $pharma)
            <tr>
                <td>{{ $pharma->id }}</td>
                <td>{{ $pharma->name }}</td>
                <td>{{ $pharma->category }}</td>
                <td>{{ $pharma->price }}</td>
                <td>{{ $pharma->stock }}</td>
                <td>
                    <a href="{{ route('pharmaEdit', $pharma->id) }}" class="btn btn-warning btn-sm">Edit</a>
                    <form action="{{ route('pharmaDelete') }}" method="POST" style="display:inline-block;">
                        @csrf
                        <input hidden type="text" name="pharma_id" class="form-control" value="{{ $pharma->id }}">

                        <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?')">Delete</button>
                    </form>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection

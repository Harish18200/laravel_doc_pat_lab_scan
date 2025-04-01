@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Modality Master</h2>
    <p>Manage modality details and pricing here.</p>

    <table class="table table-bordered mt-3">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Modality Details</th>
                <th>Price</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach($modality_masters as $modality)
            <tr>
                <td>{{ $modality->id }}</td>
                <td>{{ $modality->modality_details }}</td>
                <td>{{ $modality->price }}</td>
                <td>
                    <a href="" class="btn btn-primary btn-sm">Edit</a>
                    <form action="" method="POST" style="display:inline;">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?')">Delete</button>
                    </form>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>

    <a href="{{ url()->previous() }}" class="btn btn-secondary">Back</a>
</div>
@endsection
@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Modality Master</h2>
    <p>Manage modality details and pricing here.</p>
    <a href="{{ route('modality.create') }}" class="btn btn-primary mb-3">Create Modality</a>

    <table class="table table-bordered mt-3">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Modality Details</th>
                <th>Price</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            @foreach($modality_masters as $modality)
            <tr>
                <td>{{ $modality->id }}</td>
                <td>{{ $modality->modality_details }}</td>
                <td>{{ $modality->price }}</td>
                <td>
                    <a href="{{ route('modality.edit', $modality->id) }}" class="btn btn-primary btn-sm">Edit</a>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>

    <a href="{{ route('pharmaView')}}" class="btn btn-secondary">Back</a>
</div>
@endsection
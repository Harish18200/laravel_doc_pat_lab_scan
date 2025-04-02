@extends('layouts.app')

@section('content')
<div class="container">
<div>
        <a href="{{ route('modalityMaster') }}" class="btn btn-primary">Modality Master</a>
        <a href="{{ route('therapyMaster') }}" class="btn btn-secondary">Therapy Master</a>
        <a href="{{ route('billMaster') }}" class="btn btn-warning">Bill Master</a>
        <a href="{{ route('addMedicineStock') }}" class="btn btn-success">Add Medicine in Stock</a>
    </div>
</div>
@if(session('success'))
<div class="alert alert-success">{{ session('success') }}</div>
@endif

    <table class="table table-bordered mt-3">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Medicine</th>
                <th>Batch No</th>
                <th>Potency</th>
                <th>Price</th>
                <th>Mfg Date</th>
                <th>Exp Date</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach($stocks as $stock)
            <tr>
                <td>{{ $stock->id }}</td>
                <td>{{ $stock->medicine }}</td>
                <td>{{ $stock->batch_no }}</td>
                <td>{{ $stock->potency }}</td>
                <td>{{ $stock->price }}</td>
                <td>{{ $stock->mfg_date }}</td>
                <td>{{ $stock->exp_date }}</td>


                <td>
                    <a href="{{ route('medicineEdit', $stock->id) }}" class="btn btn-primary btn-sm">Edit</a>
                    <form action="{{ route('medicineDelete') }}" method="POST" style="display:inline;">
                        @csrf
                        <input  hidden  type="text" name="id"  value="{{ $stock->id }}" >

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
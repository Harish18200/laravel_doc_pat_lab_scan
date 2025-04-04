@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Expenses List</h2> <a href="{{ route('expensesView') }}" class="btn btn-secondary">Back</a>

    <div class="d-flex justify-content-end gap-2">

        <a href="{{ route('expensesMaster') }}" class="btn btn-primary mb-3"> Add Expense Master</a>

    </div>

    @if(session('success'))
    <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Id</th>
                <th>Expenses Details </th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @forelse($expensesMasters as $master)
            <tr>
                <td>{{ $master->id }}</td>
                <td>{{ $master->expenses_detail }}</td>

                <td>
                    <a href="{{ route('expensesMasterEdit', $master->id) }}" class="btn btn-warning btn-sm">Edit</a>
                    <form action="{{ route('expensesMaterDelete') }}" method="POST" class="d-inline">
                        @csrf
                        <input hidden type="number" name="expensesMaster_id" class="form-control" value="{{$master->id}}">

                        <button class="btn btn-danger btn-sm" onclick="return confirm('Delete this expenseMaster?')">Delete</button>
                    </form>
                </td>
            </tr>
            @empty
            <tr>
                <td colspan="5" class="text-center">No expenses found.</td>
            </tr>
            @endforelse
        </tbody>
    </table>
</div>
@endsection
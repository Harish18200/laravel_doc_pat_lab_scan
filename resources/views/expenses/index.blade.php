@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Expenses List</h2>
    <div class="d-flex justify-content-end gap-2">
        <a href="{{ route('expensesCreate') }}" class="btn btn-primary mb-3">Add Expense</a>
        <a href="{{ route('expensesMasterIndex') }}" class="btn btn-primary mb-3">Expense Master</a>
    </div>

    @if(session('success'))
    <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    <div class="table-responsive table-container">
    <table class="table table-bordered">
        <thead>
            <tr>
                @foreach($expensesMasters as $master)
                    <th>{{ $master->expenses_detail }}</th>
                @endforeach
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            @forelse($expenses as $expense)
                <tr>
                    <td>{{ $expense->date }}</td>
                    <td>{{ $expense->ebbill ?? 'Null' }}</td>
                    <td>{{ $expense->physio_expenses ?? 'Null' }}</td>
                    <td>{{ $expense->salary ?? 'Null'}}</td>
                    <td>{{ $expense->tv ?? 'Null'}}</td>
                    <td>{{ $expense->tea ?? 'Null'}}</td>
                    <td>{{ $expense->phone_bill ?? 'Null' }}</td>
                    <td>{{ $expense->food ?? 'Null'}}</td>
                    <td>{{ $expense->biscuit ?? 'Null'}}</td>
                    <td>{{ $expense->cooldrinks ?? 'Null'}}</td>
                    <td>{{ $expense->service ?? 'Null'}}</td>
                    <td>{{ $expense->work ?? 'Null'}}</td>
                    <td>{{ $expense->milk ?? 'Null'}}</td>
                    <td>
                        <a href="{{ route('expensesEdit', $expense->id) }}" class="btn btn-warning btn-sm">Edit</a>
                        <form action="{{ route('expensesDelete') }}" method="POST" class="d-inline">
                            @csrf
                            <input hidden type="number" name="expenses_id" class="form-control" value="{{ $expense->id }}">
                            <button class="btn btn-danger btn-sm" onclick="return confirm('Delete this expense?')">Delete</button>
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
</div>
@endsection
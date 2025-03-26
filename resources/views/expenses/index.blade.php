@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Expenses List</h2>
    <a href="{{ route('expensesCreate') }}" class="btn btn-primary mb-3">Add Expense</a>

    @if(session('success'))
    <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Date</th>
                <th>EB Bill</th>
                <th>Physio Expenses</th>
                <th>Salary</th>
                <th>TV</th>
                <th>Tea</th>
                <th>Phone Bill</th>
                <th>Food</th>
                <th>Biscuit</th>
                <th>Cool Drinks</th>
                <th>Serivce</th>
                <th>Work</th>
                <th>Milk</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @forelse($expenses as $expense)
            <tr>
                <td>{{ $expense->date }}</td>
                <td>{{ $expense->ebbill ?? '' }}</td>
                <td>{{ $expense->physio_expenses ?? '' }}</td>
                <td>{{ $expense->salary ?? '' }}</td>
                <td>{{ $expense->tv ?? '' }}</td>
                <td>{{ $expense->tea ?? '' }}</td>
                <td>{{ $expense->phone_bill ?? '' }}</td>
                <td>{{ $expense->food ?? '' }}</td>
                <td>{{ $expense->biscuit ?? '' }}</td>
                <td>{{ $expense->cooldrinks ?? '' }}</td>
                <td>{{ $expense->service ?? '' }}</td>
                <td>{{ $expense->work ?? '' }}</td>
                <td>{{ $expense->milk ?? '' }}</td>

                <td>
                    <a href="{{ route('expensesEdit', $expense->id) }}" class="btn btn-warning btn-sm">Edit</a>
                    <form action="{{ route('expensesDelete') }}" method="POST" class="d-inline">
                        @csrf
                        <input hidden type="number"  name="expenses_id" class="form-control" value="{{$expense->id}}">

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
@endsection
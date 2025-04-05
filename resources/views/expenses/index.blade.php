@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Expenses List</h2>
    <div class="row mb-3">
    <div class="col-md-3">
        <input type="date" id="startDate" class="form-control" placeholder="Start Date">
    </div>
    <div class="col-md-3">
        <input type="date" id="endDate" class="form-control" placeholder="End Date">
    </div>
    <div class="col-md-2 d-flex gap-2">
        <button id="searchBtn" class="btn btn-success">Search</button>
        <button id="resetBtn" class="btn btn-secondary">Reset</button>
    </div>
</div>
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
                <tr data-date="{{ \Carbon\Carbon::parse($expense->date)->format('Y-m-d') }}">
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
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
    $(document).ready(function() {
        $('#searchBtn').on('click', function() {
            var start = $('#startDate').val();
            var end = $('#endDate').val();

            if (!start || !end) {
                alert('Please select both start and end dates');
                return;
            }

            // Parse dates
            var startDate = new Date(start);
            var endDate = new Date(end);
            endDate.setHours(23, 59, 59, 999); // Ensure full-day match

            $('tbody tr').each(function() {
                var rowDate = new Date($(this).data('date'));
                if (rowDate >= startDate && rowDate <= endDate) {
                    $(this).show();
                } else {
                    $(this).hide();
                }
            });
        });
        $('#resetBtn').on('click', function () {
        $('#startDate').val('');
        $('#endDate').val('');
        $('tbody tr').show(); 
    });
    });
</script>
@endsection
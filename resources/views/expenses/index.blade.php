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

                <!-- @foreach($expensesMasters as $master)
                    <th>{{ $master->expenses_detail }}</th>
                    @endforeach
                    <th>Action</th> -->

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
                    <th>Service</th>
                    <th>Work</th>
                    <th>Milk</th>
                    <th>Amazon</th>
                    <th>Outside Lab</th>
                    <th>Medicine Company</th>
                    <th>Laundry</th>
                    <th>Car</th>
                    <th>Flower</th>
                    <th>Manju</th>
                    <th>Courier</th>
                    <th>Desil</th>
                    <th>Bio Waste</th>
                    <th>Auditor</th>
                    <th>Action</th> <!-- For Edit/Delete buttons -->
                </tr>

            </thead>
            <tbody>
                @forelse($expenses as $expense)
                <tr data-date="{{ \Carbon\Carbon::parse($expense->date)->format('Y-m-d') }}">
                    <td>{{ $expense->date }}</td>
                    <td>{{ $expense->ebbill ?? 'Null' }}</td>
                    <td>{{ $expense->physio_expenses ?? 'Null' }}</td>
                    <td>{{ $expense->salary ?? 'Null' }}</td>
                    <td>{{ $expense->tv ?? 'Null' }}</td>
                    <td>{{ $expense->tea ?? 'Null' }}</td>
                    <td>{{ $expense->phone_bill ?? 'Null' }}</td>
                    <td>{{ $expense->food ?? 'Null' }}</td>
                    <td>{{ $expense->biscuit ?? 'Null' }}</td>
                    <td>{{ $expense->cool_drinks ?? 'Null' }}</td>
                    <td>{{ $expense->service ?? 'Null' }}</td>
                    <td>{{ $expense->work ?? 'Null' }}</td>
                    <td>{{ $expense->milk ?? 'Null' }}</td>
                    <td>{{ $expense->amazon ?? 'Null' }}</td>
                    <td>{{ $expense->out_side_lab ?? 'Null' }}</td>
                    <td>{{ $expense->medicine_company ?? 'Null' }}</td>
                    <td>{{ $expense->laundry ?? 'Null' }}</td>
                    <td>{{ $expense->car ?? 'Null' }}</td>
                    <td>{{ $expense->flower ?? 'Null' }}</td>
                    <td>{{ $expense->manju ?? 'Null' }}</td>
                    <td>{{ $expense->courier ?? 'Null' }}</td>
                    <td>{{ $expense->desil ?? 'Null' }}</td>
                    <td>{{ $expense->bio_waste ?? 'Null' }}</td>
                    <td>{{ $expense->autitor ?? 'Null' }}</td>
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
                    <td colspan="25" class="text-center">No expenses found.</td>
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
        $('#resetBtn').on('click', function() {
            $('#startDate').val('');
            $('#endDate').val('');
            $('tbody tr').show();
        });
    });
</script>
@endsection
@extends('layouts.app')

@section('content')
<div class="container">
    <h2 class="mb-4">Appointments List</h2>
    
    <!-- Search Input -->
    <input type="text" id="searchAppointment" class="form-control mb-3" placeholder="Search Patient Name...">

    <!-- Appointments Table -->
    <table class="table table-bordered">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Patient Name</th>
                <th>Problem</th>
                <th>Appointment Date</th>
                <th>Appointment Status</th>
            </tr>
        </thead>
        <tbody id="appointmentTable">
            @forelse($appointments as $appointment)
            <tr>
                <td>{{ $appointment->id }}</td>
                <td class="patient-name">{{ $appointment->patientName }}</td>
                <td>{{ $appointment->problem }}</td>
                <td>{{ \Carbon\Carbon::parse($appointment->appointment_date)->format('d M Y') }}</td>
                <td>
                    @if($appointment->status == 'pending')
                        <span class="badge bg-warning text-dark">Pending</span>
                    @elseif($appointment->status == 'approved')
                        <span class="badge bg-success">Approved</span>
                    @else
                        <span class="badge bg-danger">Rejected</span>
                    @endif
                </td>
            </tr>
            @empty
            <tr>
                <td colspan="5" class="text-center">No appointments found.</td>
            </tr>
            @endforelse
        </tbody>
    </table>
</div>

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function () {
        $("#searchAppointment").on("keyup", function () {
            var value = $(this).val().toLowerCase();
            $("#appointmentTable tr").filter(function () {
                $(this).toggle($(this).find(".patient-name").text().toLowerCase().indexOf(value) > -1);
            });
        });
    });
</script>
@endsection

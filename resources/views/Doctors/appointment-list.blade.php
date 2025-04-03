@extends('layouts.app')

@section('content')

<div class="container">
    <h2 class="mb-4">Appointments List</h2>

    <!-- Search Input -->
    <input type="text" id="searchAppointment" class="form-control mb-3" placeholder="Search your Date ...">

    <!-- Scrollable Table -->
    <div class="table-responsive" style="max-height: 400px; overflow-y: auto; border: 1px solid #dee2e6;">
        <table class="table table-bordered table-striped">
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
                    <td >{{ $appointment->patientName }}</td>
                    <td>{{ $appointment->problem }}</td>
                    <td class="patient-date">{{ \Carbon\Carbon::parse($appointment->appointment_date)->format('d M Y') }}</td>
                    <td>
                        @if(!is_null($appointment->appointment_status) && $appointment->appointment_status == 1)
                        <span class="badge bg-success">Approved</span>
                        @else
                        <a href="{{ !is_null($appointment->id) ? route('appointment.approval', $appointment->id) : '#' }}"
                            class="btn btn-primary btn-sm"
                            onclick="return confirm('Are you sure?');">
                            Approval
                        </a>
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
</div>

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function() {
        $("#searchAppointment").on("keyup", function() {
            var value = $(this).val().toLowerCase();
            $("#appointmentTable tr").filter(function() {
                $(this).toggle($(this).find(".patient-date").text().toLowerCase().indexOf(value) > -1);
            });
        });
    });
</script>
@endsection
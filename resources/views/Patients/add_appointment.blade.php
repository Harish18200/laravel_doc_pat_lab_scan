@extends('layouts.app')

@section('content')
<div class="card">
    <div class="card-header">
        Appointments
        <a href="{{ route('createAppointments') }}" class="btn btn-primary btn-sm float-end">Add Appointment</a>
    </div>
    <div class="card-body">
        <table id="dataTable" class="table table-striped">
            <thead>
                <tr>
                    <th>Patient Name</th>
                    <th>Doctor Name</th>
                    <th>Problem</th>
                    <th>Appointment Date</th>
                    <th>Appointment Time</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($appointments as $appointment)
                <tr>
                    <td>{{ $appointment->patientName }}</td>
                    <td>{{ $appointment->doctor_id }}</td>
                    <td>{{ $appointment->problem ?? 'N/A' }}</td>
                    <td>{{ $appointment->appointment_date }}</td>
                    <td>{{ $appointment->appointment_time }}</td>
                    <td>{{ ucfirst($appointment->appointment_status) }}</td>
                    <td>

                        <a href="{{ route('editAppointments', $appointment->id) }}" class="btn btn-warning btn-sm">View</a>
                        <form action="{{ route('deleteAppointments')}}" method="POST" style="display:inline;">
                            @csrf
                            <input type="hidden" name="appointment_id" value="{{ $appointment->id }}">
    
                            @method('POST')
                            <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?')">Delete</button>
                        </form>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>

    </div>
</div>
@endsection
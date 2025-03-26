@extends('layouts.app')

@section('content')
<div class="card">
    <div class="card-header">
        Add Appointment
        <a href="{{ route('patientMakeAppointment') }}" class="btn btn-secondary btn-sm float-end">Back</a>
    </div>
    <div class="card-body">
        <form action="{{ route('storeAppointments') }}" method="POST">
            @csrf
            <div class="mb-3">
            <label class="form-label">Patient</label>
            <input type="text" name="patientName"  value="{{ session('user_name') }}"  class="form-control" placeholder="Enter Patient Name" readonly>
            <input type="text" hidden name="patientId"  value="{{ session('user_id') }}">

            </div>

            <div class="mb-3">
                <label class="form-label">Doctor</label>
                <select name="doctor_id" class="form-control" >
                    <option value="">Select Doctor</option>
                   
                    <option value="1" selected>Dr. Default Name</option> 
                  
                </select>
            </div>

            <div class="mb-3">
                <label class="form-label">Problem</label>
                <input type="text" name="problem" class="form-control" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Appointment Date</label>
                <input type="date" name="appointment_date" class="form-control" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Appointment Time</label>
                <input type="time" name="appointment_time" class="form-control" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Status</label>
                <select name="status" class="form-control">
                    <option value="pending">Pending</option>
                    <option value="confirmed">Confirmed</option>
                    <option value="completed">Completed</option>
                    <option value="cancelled">Cancelled</option>
                </select>
            </div>

            <button type="submit" class="btn btn-success">Add Appointment</button>
        </form>
    </div>
</div>
@endsection

@extends('layouts.app')

@section('content')
<div class="card">
    <div class="card-header">
        View Appointment

    </div>
    <div class="card-body">


        <div class="mb-3">
            <label class="form-label">Patient</label>
            <input type="text" class="form-control" value="{{ $appointments->patientName ?? '' }}" >
            <input type="hidden" name="patient_id" value="{{ $appointments->id }}">
        </div>

        <div class="mb-3">
                <label class="form-label">Doctor</label>
                <select name="doctor_id" class="form-control">
                    <option value="">Select Doctor</option>
                    @foreach($doctors as $doctor)
                    <option value="{{ $doctor->id }}"
                        {{ old('doctor_id') == $doctor->id ? 'selected' : '' }}>
                        Dr. {{ $doctor->name }}
                    </option>
                    @endforeach
                </select>
            </div>

        <div class="mb-3">
            <label class="form-label">Problem</label>
            <input type="text" name="problem" class="form-control" value="{{ $appointments->problem }}" readonly>
        </div>

        <div class="mb-3">
            <label class="form-label">Appointment Date</label>
            <input type="date" name="appointment_date" class="form-control" value="{{ $appointments->appointment_date }}" readonly>
        </div>

        <div class="mb-3">
            <label class="form-label">Appointment Time</label>
            <input type="time" name="appointment_time" class="form-control" value="{{ $appointments->appointment_time }}" readonly>
        </div>

        
        <a href="{{ route('patientMakeAppointment') }}" class="btn btn-primary ">Back</a>

    </div>
</div>
@endsection
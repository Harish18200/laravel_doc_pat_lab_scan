@extends('layouts.app')

@section('content')
<div class="mb-3">
    <a href="{{ route('patientsCreate') }}" class="btn btn-primary float-end">Add Patient</a>
</div>
<div class="container">
    <h2 class="mb-4">Dashboard</h2>
    <!-- Appointments Table -->
    <div class="card mb-4">
        <div class="card-header bg-primary text-white">Appointments: {{ count($appointments) }}</div>
        <div class="table-responsive">
            <table class="table table-bordered table-striped">
                <thead class="table-dark">
                    <tr>
                        <th>ID</th>
                        <th>Appointment Date</th>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Gender</th>
                        <th>Contant NO</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($appointments as $appointment)
                    <tr>
                        <td>{{ $appointment->id }}</td>
                        <td>{{ $appointment->appointment_date }}</td>
                        <td>{{ $appointment->name }}</td>
                        <td>{{ $appointment->age }}</td>
                        <td>{{ $appointment->gender }}</td>
                        <td>{{ $appointment->mobile }}</td>
                        <td> <a href="{{ route('patients.edit', $appointment->id) }}" class="btn btn-primary btn-sm">Edit</a>

                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>

    <!-- Out Patients Table -->
    <div class="card mb-4">
        <div class="card-header bg-primary text-white">Out Patients: {{ count($outPatients) }}</div>
        <div class="table-responsive">
            <table class="table table-bordered table-striped">
                <thead class="table-dark">
                    <tr>
                        <th>ID</th>
                        <th>Patient Name</th>
                        <th>Age</th>
                        <th>Gender</th>
                        <th>Contact No.</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($outPatients as $patient)
                    @if($patient->id && $patient->name && $patient->age && $patient->gender && $patient->mobile)
                    <tr>
                        <td>{{ $patient->id }}</td>
                        <td>{{ $patient->name }}</td>
                        <td>{{ $patient->age }}</td>
                        <td>{{ $patient->gender }}</td>
                        <td>{{ $patient->mobile }}</td>
                        <td><a href="{{ route('PatientDetails', $patient->id) }}" class="btn btn-primary btn-sm">View</a></td>
                    </tr>
                    @endif
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>

    <!-- In Patients Table -->
    <div class="card mb-4">
        <div class="card-header bg-primary text-white">In Patients: {{ count($inPatients) }}</div>
        <div class="table-responsive">
            <table class="table table-bordered table-striped">
                <thead class="table-dark">
                    <tr>
                        <th>ID</th>
                        <th>Patient Name</th>
                        <th>Age</th>
                        <th>Gender</th>
                        <th>Contact No.</th>

                    </tr>
                </thead>
                <tbody>
                    @foreach($inPatients as $patient)
                    <tr>
                        <td>{{ $patient->id }}</td>
                        <td>{{ $patient->name }}</td>
                        <td>{{ $patient->age }}</td>
                        <td>{{ $patient->gender }}</td>
                        <td>{{ $patient->mobile }}</td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>

@endsection
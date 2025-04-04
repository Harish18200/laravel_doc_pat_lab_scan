@extends('layouts.app')

@section('content')
<div class="container">
    <h2 class="mb-4">Patient List</h2>

    @if(session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    <a href="{{ route('patientsCreate') }}" class="btn btn-primary mb-3">Add Patient</a>

    <input type="text" id="searchPatient" class="form-control mb-2" placeholder="Search Patient Name...">

    <table class="table table-bordered">
    <thead class="table-dark">
        <tr>
            <th>ID</th>
            <th>Patient Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Age</th>
            <th>Gender</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody id="patientTable">
        @forelse($patients as $patient)
        <tr>
            <td>{{ $patient->id }}</td>
            <td class="patient-name">{{ $patient->patient_name }}</td>
            <td>{{ $patient->email }}</td>
            <td>{{ $patient->mobile }}</td>
            <td>{{ \Carbon\Carbon::parse($patient->dob)->diffInYears(\Carbon\Carbon::create(2025, 1, 1)) }} </td>
            <td>{{ $patient->gender }}</td>
            <td>
            <a href="{{ route('PatientDetails', $patient->id) }}" class="btn btn-warning btn-sm">View</a>

                <a href="{{ route('patients.edit', $patient->id) }}" class="btn btn-primary btn-sm">Edit</a>
                <form action="{{ route('patients.destroy', $patient->id) }}" method="POST" class="d-inline" onsubmit="return confirm('Are you sure?');">
                    @csrf
                    @method('DELETE')
                    <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                </form>
            </td>
        </tr>
        @empty
        <tr>
            <td colspan="7" class="text-center">No patients found.</td>
        </tr>
        @endforelse
    </tbody>
</table>

</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function () {
        $("#searchPatient").on("keyup", function () {
            var value = $(this).val().toLowerCase();
            $("#patientTable tr").filter(function () {
                $(this).toggle($(this).find(".patient-name").text().toLowerCase().indexOf(value) > -1);
            });
        });
    });
</script>
@endsection

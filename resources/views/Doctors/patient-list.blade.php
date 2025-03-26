@extends('layouts.app')

@section('content')
<div class="container">
    <h2 class="mb-4">Patient List</h2>

    @if(session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif
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
        </tr>
    </thead>
    <tbody id="patientTable">
        @forelse($patients as $patient)
        <tr>
            <td>{{ $patient->id }}</td>
            <td class="patient-name">{{ $patient->name }}</td>
            <td>{{ $patient->email }}</td>
            <td>{{ $patient->phone }}</td>
            <td>{{ $patient->age }}</td>
            <td>{{ $patient->gender }}</td>
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

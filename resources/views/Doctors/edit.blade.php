@extends('layouts.app')

@section('content')
<div class="container">
    <h2 class="mb-4">Edit Patient</h2>

    @if(session('success'))
    <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    <form action="{{ route('patientStore') }}" method="POST">
        @csrf


        <div class="mb-3">
            <label for="name" class="form-label">Patient Name</label>
            <input type="text" class="form-control" id="name" name="name" value="{{ $patient->name }}" required>
            <input hidden type="text" class="form-control" id="name" name="patientId" value="{{ $patient->id }}">

        </div>

        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" id="email" name="email" value="{{ $patient->email }}" required>
        </div>

        <div class="mb-3">
            <label for="mobile" class="form-label">Phone</label>
            <input type="text" class="form-control" id="mobile" name="mobile" value="{{ $patient->mobile }}" required>
        </div>

        <div class="mb-3">
            <label for="age" class="form-label">Age</label>
            <input type="number" class="form-control" id="age" name="age" value="{{ $patient->age }}" required>
        </div>

        <div class="mb-3">
            <label for="gender" class="form-label">Gender</label>
            <select class="form-control" id="gender" name="gender">
                <option value="male" {{ $patient->gender == 'male' ? 'selected' : '' }}>Male</option>
                <option value="female" {{ $patient->gender == 'female' ? 'selected' : '' }}>Female</option>
                <option value="other" {{ $patient->gender == 'other' ? 'selected' : '' }}>Other</option>
            </select>
        </div>

        <button type="submit" class="btn btn-primary">Update Patient</button>
        <a href="{{ route('PatientList') }}" class="btn btn-secondary">Cancel</a>
    </form>
</div>
@endsection
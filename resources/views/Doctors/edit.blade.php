@extends('layouts.app')

@section('content')
<div class="container">
    <h2 class="mb-4">Edit Patient</h2>

    @if(session('success'))
    <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    <form action="{{ route('patientStore') }}" method="POST">
    @csrf

    <div class="row">
        <!-- Left Side Inputs -->
        <div class="col-md-6">
            <!-- Patient Name -->
            <div class="mb-3">
                <label for="patient_name" class="form-label">Patient Name</label>
                <input type="text" class="form-control" id="patient_name" name="patient_name" value="{{ $patient->patient_name }}" required>
                <input type="hidden" name="patientId" value="{{ $patient->id }}">
            </div>

            <!-- Gender -->
            <div class="mb-3">
                <label for="gender" class="form-label">Gender</label>
                <select class="form-control" id="gender" name="gender">
                    <option value="Male" {{ $patient->gender == 'Male' ? 'selected' : '' }}>Male</option>
                    <option value="Female" {{ $patient->gender == 'Female' ? 'selected' : '' }}>Female</option>
                    <option value="Other" {{ $patient->gender == 'Other' ? 'selected' : '' }}>Other</option>
                </select>
            </div>

            <!-- Marital Status -->
            <div class="mb-3">
                <label for="marital_status" class="form-label">Marital Status</label>
                <select class="form-control" id="marital_status" name="marital_status">
                    <option value="Single" {{ $patient->marital_status == 'Single' ? 'selected' : '' }}>Single</option>
                    <option value="Married" {{ $patient->marital_status == 'Married' ? 'selected' : '' }}>Married</option>
                    <option value="Divorced" {{ $patient->marital_status == 'Divorced' ? 'selected' : '' }}>Divorced</option>
                    <option value="Widowed" {{ $patient->marital_status == 'Widowed' ? 'selected' : '' }}>Widowed</option>
                </select>
            </div>

            <!-- Date of Birth -->
            <div class="mb-3">
                <label for="dob" class="form-label">Date of Birth</label>
                <input type="date" class="form-control" id="dob" name="dob" value="{{ $patient->dob }}" required>
            </div>

            <!-- Age (Auto-calculated) -->
            <div class="mb-3">
                <label for="age" class="form-label">Age</label>
                <input type="text" class="form-control" id="age" name="age"
                    value="{{ \Carbon\Carbon::parse($patient->dob)->diffInYears(\Carbon\Carbon::now()) }} years" readonly>
            </div>

            <!-- Address -->
            <div class="mb-3">
                <label for="address" class="form-label">Address</label>
                <textarea class="form-control" id="address" name="address" rows="2" required>{{ $patient->address }}</textarea>
            </div>

            <!-- Contact Number -->
            <div class="mb-3">
                <label for="contact_no" class="form-label">Contact No</label>
                <input type="text" class="form-control" id="contact_no" name="contact_no" value="{{ $patient->mobile }}" required>
            </div>
        </div>

        <!-- Right Side Inputs -->
        <div class="col-md-6">
            <!-- Alternate Contact Number -->
            <div class="mb-3">
                <label for="alternate_no" class="form-label">Alternate No</label>
                <input type="text" class="form-control" id="alternate_no" name="alternate_no" value="{{ $patient->alternate_no }}">
            </div>

            <!-- Email -->
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" name="email" value="{{ $patient->email }}">
            </div>

            <!-- Caregiver Name -->
            <div class="mb-3">
                <label for="caregiver_name" class="form-label">Caregiver Name</label>
                <input type="text" class="form-control" id="caregiver_name" name="caregiver_name" value="{{ $patient->caregiver_name }}">
            </div>

            <!-- Relationship -->
            <div class="mb-3">
                <label for="relationship" class="form-label">Relationship</label>
                <input type="text" class="form-control" id="relationship" name="relationship" value="{{ $patient->relationship }}">
            </div>

            <!-- Remark -->
            <div class="mb-3">
                <label for="remark" class="form-label">Remark</label>
                <textarea class="form-control" id="remark" name="remark" rows="2">{{ $patient->remarks }}</textarea>
            </div>

            <!-- Referred By -->
            <div class="mb-3">
                <label for="referred_by" class="form-label">Referred By</label>
                <input type="text" class="form-control" id="referred_by" name="referred_by" value="{{ $patient->refferred_by }}">
            </div>
        </div>
    </div>

    <!-- Buttons -->
    <div class="mt-3 text-center">
        <button type="submit" class="btn btn-success">Update Patient</button>
        <a href="{{ url()->previous() }}" class="btn btn-secondary">Cancel</a>

    </div>
</form>
</div>
@endsection
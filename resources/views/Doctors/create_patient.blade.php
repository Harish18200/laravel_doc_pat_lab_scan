@extends('layouts.app')

@section('content')
<div class="container">
    <h2 class="mb-4">Add New Patient</h2>

    @if($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach($errors->all() as $error)
            <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
    @endif

    <form action="{{ route('patientStore') }}" method="POST">
    @csrf
    <div class="container">
        <div class="row">
            <!-- Left Column -->
            <div class="col-md-6">
                <!-- Patient Name -->
                <div class="mb-3 row">
                    <label for="patient_name" class="col-sm-4 col-form-label">Patient Name</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="patient_name" name="patient_name" required>
                    </div>
                </div>

                <!-- Gender -->
                <div class="mb-3 row">
                    <label for="gender" class="col-sm-4 col-form-label">Gender</label>
                    <div class="col-sm-8">
                        <select class="form-control" id="gender" name="gender" required>
                            <option value="">Select Gender</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                            <option value="Other">Other</option>
                        </select>
                    </div>
                </div>

                <!-- Marital Status -->
                <div class="mb-3 row">
                    <label for="marital_status" class="col-sm-4 col-form-label">Marital Status</label>
                    <div class="col-sm-8">
                        <select class="form-control" id="marital_status" name="marital_status" required>
                            <option value="">Select Marital Status</option>
                            <option value="Single">Single</option>
                            <option value="Married">Married</option>
                            <option value="Divorced">Divorced</option>
                            <option value="Widowed">Widowed</option>
                        </select>
                    </div>
                </div>

                <!-- Date of Birth -->
                <div class="mb-3 row">
                    <label for="dob" class="col-sm-4 col-form-label">Date of Birth</label>
                    <div class="col-sm-8">
                        <input type="date" class="form-control" id="dob" name="dob" required>
                    </div>
                </div>

                <!-- Address -->
                <div class="mb-3 row">
                    <label for="address" class="col-sm-4 col-form-label">Address</label>
                    <div class="col-sm-8">
                        <textarea class="form-control" id="address" name="address" rows="2" required></textarea>
                    </div>
                </div>

                <!-- Contact Number -->
                <div class="mb-3 row">
                    <label for="contact_no" class="col-sm-4 col-form-label">Contact No</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="contact_no" name="contact_no" required>
                    </div>
                </div>
            </div>

            <!-- Right Column -->
            <div class="col-md-6">
                <!-- Alternate Contact Number -->
                <div class="mb-3 row">
                    <label for="alternate_no" class="col-sm-4 col-form-label">Alternate No</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="alternate_no" name="alternate_no">
                    </div>
                </div>

                <!-- Email -->
                <div class="mb-3 row">
                    <label for="email" class="col-sm-4 col-form-label">Email</label>
                    <div class="col-sm-8">
                        <input type="email" class="form-control" id="email" name="email">
                    </div>
                </div>

                <!-- Caregiver Name -->
                <div class="mb-3 row">
                    <label for="caregiver_name" class="col-sm-4 col-form-label">Caregiver Name</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="caregiver_name" name="caregiver_name">
                    </div>
                </div>

                <!-- Relationship -->
                <div class="mb-3 row">
                    <label for="relationship" class="col-sm-4 col-form-label">Relationship</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="relationship" name="relationship">
                    </div>
                </div>

                <!-- Remark -->
                <div class="mb-3 row">
                    <label for="remark" class="col-sm-4 col-form-label">Remark</label>
                    <div class="col-sm-8">
                        <textarea class="form-control" id="remark" name="remark" rows="2"></textarea>
                    </div>
                </div>

                <!-- Referred By -->
                <div class="mb-3 row">
                    <label for="referred_by" class="col-sm-4 col-form-label">Referred By</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="referred_by" name="referred_by">
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="referred_by" class="col-sm-4 col-form-label">Password</label>
                    <div class="col-sm-8">
                        <input type="password" class="form-control" id="password" name="password">
                    </div>
                </div>
            </div>
        </div>

        <!-- Submit and Cancel Buttons -->
        <div class="text-center mt-4">
            <button type="submit" class="btn btn-success">Save Patient</button>
            <a href="{{ route('PatientList') }}" class="btn btn-secondary">Cancel</a>
        </div>
    </div>
</form>

</div>
@endsection
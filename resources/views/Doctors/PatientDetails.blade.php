@extends('layouts.app')

@section('content')
<div class="container">


    <!-- Patient Details -->
    <div class="card mb-4">
        <div class="card-header bg-primary text-white">
            <h4>Add Patient Details</h4>
        </div>
        <div class="card-body">
            <table class="table table-bordered">
                <tr>
                    <td><strong>Name:</strong> {{ $patients->patient_name }}</td>
                    <td><strong>Age:</strong> {{ \Carbon\Carbon::parse($patients->dob)->diffInYears(\Carbon\Carbon::create(2025, 1, 1)) }}</td>
                    <td><strong>Sex:</strong> {{ $patients->gender }}</td>
                    <td><strong>UHID No:</strong> {{ $patients->uhid }}</td>
                    <td><strong>Reg No:</strong> {{ $patients->reg_no }}</td>
                </tr>
                <tr>
                    <td><strong>Address:</strong> {{ $patients->address }}</td>
                    <td><strong>Contact No:</strong> {{ $patients->mobile }}</td>
                    <td><strong>Alternate No:</strong> {{ $patients->alternate_no }}</td>
                    <td><strong>Marital Status:</strong> {{ $patients->marital_status }}</td>
                    <td><strong>Deceased:</strong> {{ $patients->deceased ? 'Yes' : 'No' }}</td>
                </tr>
                <tr>
                    <td><strong>Caregiver Name:</strong> {{ $patients->caregiver_name }}</td>
                    <td><strong>Email:</strong> {{ $patients->email }}</td>
                    <td><strong>Relationship:</strong> {{ $patients->relationship }}</td>
                    <td><strong>Referred By:</strong> {{ $patients->referred_by }}</td>
                    <td><strong>Registered on:</strong> {{ $patients->created_at }}</td>
                </tr>
            </table>
        </div>
    </div>
    <!-- Last Visit Comments / Note  Section -->
    <div class="card mb-4">
        <div class="card-header bg-purple text-white">
            <h4>Last Visit Comments / Note</h4>
        </div>
        <div class="card-body">
            @if(session('success'))
            <div class="alert alert-success">
                {{ session('success') }}
            </div>
            @endif


            <table class="table">
                <tr>
                    <td>
                        <strong>Next Review Date</strong>
                        <input type="text" id="nextReviewDate" name="ip_op" class="form-control" readonly>
                    </td>

                    <td><strong>Comment / Note </strong> <input type="text" name="comment" value="GENERAL REVIEW." readonly class="form-control"></td>
                </tr>


            </table>
        </div>

        </form>

    </div>

    <!-- Admission Section -->
    <div class="card mb-4">
        <div class="card-header bg-purple text-white">
            <h4>Admission</h4>
        </div>
        <div class="card-body">
            @if(session('success'))
            <div class="alert alert-success">
                {{ session('success') }}
            </div>
            @endif
            <form action="{{route('admissionStore')}}" method="POST">
                @csrf
                <table class="table">
                    <tr>
                        <input hidden type="text" name="patient_id" value="{{ $patients->id }}" class="form-control">
                        <td>
                            <strong>Primary Consultant:</strong>
                            <select name="consultant" class="form-control">
                                @foreach ($doctorLists as $doctor)
                                <option value="{{ $doctor->id }}"
                                    @if ($doctor->id == session('user_id')) selected @endif>
                                    {{ $doctor->name }}
                                </option>
                                @endforeach
                            </select>
                        </td>
                        <td><strong>Admission Date & Time:</strong> <input type="datetime-local" name="admission_date" class="form-control"></td>
                        <td><strong>Discharge Date & Time:</strong> <input type="datetime-local" name="discharge_date" class="form-control"></td>
                    </tr>
                    <tr>
                        <td><strong>IP / OP:</strong> <input type="text" name="ip_op" class="form-control"></td>
                        <td><strong>Informant:</strong> <input type="text" name="informant" class="form-control"></td>
                        <td><strong>Mode of Arrival:</strong> <input type="text" name="arrival_mode" class="form-control"></td>
                    </tr>
                    <tr>
                        <td><strong>Allergies:</strong> <input type="text" name="allergies" class="form-control"></td>
                        <td><strong>Immunization UTD:</strong>
                            <select name="immunization_utd" class="form-control">
                                <option value="Yes">Yes</option>
                                <option value="No">No</option>
                            </select>
                        </td>
                    </tr>

                </table>
        </div>
        <div class="text-end">
            <button type="submit" class="btn btn-success btn-md">Submit</button>
        </div>
        </form>

    </div>


    <!-- Physical Examination Section -->
    <div class="card mb-4">
        <div class="card-header bg-purple text-white">
            <h4>Physical Examination</h4>
        </div>
        <div class="card-body">
            <table class="table">
                @if(session('successMessage'))
                <div class="alert alert-success">
                    {{ session('successMessage') }}
                </div>
                @endif

                <form action="{{route('physicalExaminationStore')}}" method="POST">
                    @csrf
                    <tr>
                        <input hidden type="text" name="patient_id" value="{{ $patients->id }}" class="form-control">

                        <td><strong>Weight (Kg):</strong> <input type="number" name="weight" class="form-control"></td>
                        <td><strong>Temperature (°F):</strong> <input type="text" name="temperature" class="form-control"></td>
                        <td><strong>Pulse (b/mts):</strong> <input type="number" name="pulse" class="form-control"></td>
                    </tr>
                    <tr>
                        <td><strong>BP (L):</strong> <input type="text" name="bp_left" class="form-control"></td>
                        <td><strong>BP (R):</strong> <input type="text" name="bp_right" class="form-control"></td>
                        <td><strong>Respiratory Rate:</strong> <input type="number" name="respiratory_rate" class="form-control"></td>
                    </tr>
                    <tr>
                        <td><strong>SpO₂ (%):</strong> <input type="number" name="spo2" class="form-control"></td>
                        <td><strong>Pain Scale (1-10):</strong> <input type="number" name="pain_scale" class="form-control"></td>
                        <td><strong>GRBS:</strong> <input type="text" name="grbs" class="form-control"></td>
                    </tr>
            </table>
            <div class="text-end">
                <button type="submit" class="btn btn-success btn-md">Submit</button>
                </form>
            </div>
        </div>
    </div>
    <!-- Note Section -->
    <div class="card mb-4">
        <div class="card-header bg-purple text-white">
            <h4>History</h4>
        </div>
        <div class="card-body">
            <table class="table">
                @if(session('StoreMessage'))
                <div class="alert alert-success">
                    {{ session('StoreMessage') }}
                </div>
                @endif
                @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
                @endif
                <form action="{{route('patientDiseaseStore')}}" method="POST">
                    @csrf
                    <td>
                        <input hidden type="text" name="patient_id" value="{{ $patients->id }}" class="form-control">
                        <strong>Symptoms</strong>
                        <input type="text" name="symptoms" id="symptoms" class="form-control" placeholder="e.g. Fever, Cough, Headache"> @error('symptoms')
                        <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </td>
                    <td>
                        <strong>Disease:</strong>
                        <textarea readonly name="disease" id="disease" class="form-control" placeholder="Detected Diseases" rows="3"></textarea>
                        </td>
                    @error('disease')
                    <span class="text-danger">{{ $message }}</span>
                    @enderror
                    </tr>
            </table>
        </div>
    </div>
    <div class="text-end">
        <button type="submit" class="btn btn-success btn-md">Submit</button>
        </form>
    </div>
</div>

<style>
    .bg-purple {
        background-color: #800080 !important;
    }
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $('#symptoms').on('keyup', function() {
    let symptom = $(this).val();

    if (symptom.length > 2) {
        $.ajax({
            url: "{{ route('get.disease') }}",
            type: "GET",
            data: {
                symptom: symptom
            },
            success: function(response) {
                $('#disease').val(response.disease);
            },
            error: function() {
                $('#disease').val('Error fetching disease');
            }
        });
    } else {
        $('#disease').val('');
    }
});



    function getRandomDate() {
        let today = new Date();
        let currentYear = today.getFullYear();
        let targetYear = 2025;

        let startDate = new Date(today);
        startDate.setFullYear(targetYear, today.getMonth(), today.getDate());

        let endDate = new Date(targetYear, 11, 31);

        let randomTime = Math.floor(Math.random() * (endDate.getTime() - startDate.getTime())) + startDate.getTime();
        let randomDate = new Date(randomTime);

        let formattedDate = randomDate.toISOString().split('T')[0];
        document.getElementById("nextReviewDate").value = formattedDate;
    }

    window.onload = getRandomDate;
</script>

@endsection
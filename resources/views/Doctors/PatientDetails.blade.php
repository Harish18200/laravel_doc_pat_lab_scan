@extends('layouts.app')

@section('content')
<div class="container">
    <!-- Patient Details -->
    <div class="card mb-4">
        <div class="card-header bg-primary text-white">
            <h4>Patient Details</h4>
        </div>
        <div class="card-body">
            <table class="table table-bordered">
                <tr>
                    <td><strong>Name:</strong> {{ $patients->name }}</td>
                    <td><strong>Age:</strong> {{ $patients->age }}</td>
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

    <!-- Admission Section -->
    <div class="card mb-4">
        <div class="card-header bg-purple text-white">
            <h4>Admission</h4>
        </div>
        <div class="card-body">
            <table class="table">
                <tr>
                    <td><strong>Primary Consultant:</strong> {{ $patients->consultant }}</td>
                    <td><strong>Admission Date & Time:</strong> {{ $patients->admission_date }}</td>
                    <td><strong>Discharge Date & Time:</strong> {{ $patients->discharge_date }}</td>
                </tr>
                <tr>
                    <td><strong>IP / OP:</strong> {{ $patients->ip_op }}</td>
                    <td><strong>Informant:</strong> {{ $patients->informant }}</td>
                    <td><strong>Mode of Arrival:</strong> {{ $patients->arrival_mode }}</td>
                </tr>
                <tr>
                    <td><strong>Allergies:</strong> {{ $patients->allergies }}</td>
                    <td><strong>Immunization UTD:</strong> {{ $patients->immunization_utd }}</td>
                </tr>
            </table>
        </div>
    </div>

    <!-- Physical Examination Section -->
    <div class="card mb-4">
        <div class="card-header bg-purple text-white">
            <h4>Physical Examination</h4>
        </div>
        <div class="card-body">
            <table class="table">
                <tr>
                    <td><strong>Weight (Kg):</strong> {{ $patients->weight }}</td>
                    <td><strong>Temperature (°F):</strong> {{ $patients->temperature }}</td>
                    <td><strong>Pulse (b/mts):</strong> {{ $patients->pulse }}</td>
                </tr>
                <tr>
                    <td><strong>BP (mm/Hg) (L):</strong> {{ $patients->bp_left }}</td>
                    <td><strong>BP (mm/Hg) (R):</strong> {{ $patients->bp_right }}</td>
                    <td><strong>Respiratory Rate:</strong> {{ $patients->respiratory_rate }}</td>
                </tr>
                <tr>
                    <td><strong>SpO₂ (%):</strong> {{ $patients->spo2 }}</td>
                    <td><strong>Pain Scale (1-10):</strong> {{ $patients->pain_scale }}</td>
                    <td><strong>GRBS:</strong> {{ $patients->grbs }}</td>
                </tr>
            </table>
        </div>
    </div>
</div>

<style>
    .bg-purple {
        background-color: #800080 !important;
    }
</style>
@endsection

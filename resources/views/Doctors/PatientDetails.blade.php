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
            <form action="" method="POST">
                @csrf
                <table class="table">
                    <tr>
                        <td><strong>Primary Consultant:</strong> <input type="text" name="consultant" class="form-control"></td>
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
                <form action="" method="POST">
                    @csrf
                    <tr>
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
            <h4>Histroy</h4>
        </div>
        <div class="card-body">
            <table class="table">
                <form action="" method="POST">
                    @csrf

                    <td><strong>Symptoms</strong> <input type="number" name="spo2" class="form-control"></td>
                    <td><strong>Disease:</strong> <input type="number" name="pain_scale" class="form-control"></td>
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
@endsection
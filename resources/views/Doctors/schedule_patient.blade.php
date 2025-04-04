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
    <!-- Schedule Appointment  Section -->
    <div class="card mb-4">
        <div class="card-header bg-purple text-white">
            <h4>Schedule Appointment</h4>
        </div>
        <div class="card-body">
           

            <table class="table">
                <tr>
                <td>
    <strong>Admission Date Time</strong>
    <input type="text" id="admission_date_time" name="admission_date_time" class="form-control" readonly>
</td>

                </tr>


            </table>
        </div>

        </form>

    </div>

  

</div>

<style>
    .bg-purple {
        background-color: #800080 !important;
    }
</style>
<script>
    function getRandomFutureDate() {
        let today = new Date();
        let year = 2025;
        let month, day;

        do {
            month = Math.floor(Math.random() * 12); // Random month (0-11)
            day = Math.floor(Math.random() * 31) + 1; // Random day (1-31)
            var randomDate = new Date(year, month, day);
        } while (randomDate <= today || randomDate.getMonth() !== month); // Ensure valid future date

        // Generate random time (HH:MM AM/PM)
        let hours = Math.floor(Math.random() * 12) + 1; // 1-12
        let minutes = Math.floor(Math.random() * 60); // 0-59
        let ampm = Math.random() > 0.5 ? "AM" : "PM";

        // Format date and time
        let formattedDateTime = randomDate.toLocaleDateString("en-US", { year: 'numeric', month: 'long', day: 'numeric' }) + 
                                ` ${hours}:${minutes.toString().padStart(2, '0')} ${ampm}`;

        document.getElementById("admission_date_time").value = formattedDateTime;
    }

    // Call function when the page loads
    window.onload = getRandomFutureDate;
</script>

@endsection
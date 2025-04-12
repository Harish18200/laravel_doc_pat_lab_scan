@extends('layouts.app')

@section('content')
<div class="container">
    @if(session('download_link'))
    <script>
        window.onload = function() {
            // Automatically create a temporary invisible link to download
            const link = document.createElement('a');
            link.href = "{{ session('download_link') }}";
            link.download = '';
            document.body.appendChild(link);
            link.click();
            document.body.removeChild(link);
        };
    </script>
    @endif

    <form id="reportForm" action="{{ route('generatePdf') }}" method="POST">
        @csrf
        <div class="row justify-content-center mb-3">
            <div class="col-md-4">
                <input type="date" name="reportDate" id="reportDate" class="form-control" placeholder="Select Date" required>
            </div>

            <div class="col-md-4" id="emailContainer" style="display: none;">
                <input type="email" name="email" id="email" class="form-control" placeholder="Enter  Email">
            </div>

            <div class="col-md-2">
                <button type="submit" name="report" value="report" class="btn btn-primary" onclick="prepareForm('report')"> Report</button>

            </div>
            <div class="col-md-2">
                <button type="submit" name="pdf" value="pdf" class="btn btn-warning" onclick="prepareForm('pdf')"> PDF</button>
                <button type="submit" name="excel" value="excel" class="btn btn-success" onclick="prepareForm('pdf')"> Excel</button>
            </div>

        </div>
    </form>
</div>
<script>
    function prepareForm(actionType) {
        const emailContainer = document.getElementById('emailContainer');
        const emailInput = document.getElementById('email');
        if (actionType === 'report') {
            emailContainer.style.display = 'block';
            emailInput.required = true;
        } else {
            emailContainer.style.display = 'none';
            emailInput.required = false;
        }
    }
    document.getElementById('reportForm').addEventListener('submit', function(e) {
        const emailInput = document.getElementById('email');
        if (emailInput.required && emailInput.value.trim() === '') {
            alert('Email is required for report.');
            e.preventDefault();
        }
    });
</script>



@endsection
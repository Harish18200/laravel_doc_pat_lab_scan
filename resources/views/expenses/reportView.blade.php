@extends('layouts.app')

@section('content')
<div class="container">


<form action="{{ route('generatePdf') }}" method="POST">
    @csrf
    <div class="row justify-content-center mb-3">
        <div class="col-md-4">
            <input type="date" name="reportDate" id="reportDate" class="form-control" placeholder="Select Date" required>
        </div>
        <div class="col-md-2">
            <button type="submit" class="btn btn-primary">Generate Report</button>
        </div>
    </div>
</form>


</div>


@endsection
@extends('layouts.app')

@section('content')
<div class="container mt-4">
    <div class="card shadow rounded">
        <div class="card-header bg-primary text-white">
            <h4 class="mb-0">Next Review Schedule</h4>
        </div>
        <div class="card-body">
            @if($nextReviewDate)
            <p class="text-center">Your next review is scheduled for:
                <strong>{{ \Carbon\Carbon::parse($nextReviewDate)->format('F j, Y') }}</strong>
            </p>
            @else
            <p class="text-center text-muted">No upcoming appointments found.</p>
            @endif
        </div>
    </div>
</div>
@endsection
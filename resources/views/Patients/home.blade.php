@extends('layouts.app')

@section('content')
<div class="container mt-4">
    <!-- Hero Section -->
    <div class="card bg-primary text-white text-center p-5">
        <h1 class="fw-bold">Welcome to Our Hospital</h1>
        <p class="lead">"Healing Hands, Caring Hearts. Your Health, Our Priority."</p>
    </div>

    <!-- About Section -->
    <div class="row mt-5">
        <div class="col-md-6">
        <img src="{{ asset('images/roomView.jpg') }}" class="img-fluid rounded shadow" alt="Hospital Image">
        </div>
        <div class="col-md-6 d-flex flex-column justify-content-center">
            <h2 class="fw-bold">About Us</h2>
            <p class="text-muted">
                Our hospital is dedicated to providing exceptional medical care with a patient-centered approach. 
                We combine advanced technology, experienced doctors, and compassionate care to ensure the best health outcomes for you and your family.
            </p>
            <a href="" class="btn btn-primary mt-3">Learn More</a>
        </div>
    </div>

    <!-- Services Section -->
    <div class="mt-5">
        <h2 class="text-center fw-bold">Our Services</h2>
        <div class="row text-center mt-4">
            <div class="col-md-4">
                <div class="card shadow p-3">
                    <i class="fas fa-user-md fa-3x text-primary"></i>
                    <h4 class="mt-3">Expert Doctors</h4>
                    <p class="text-muted">Highly skilled and experienced medical professionals ready to serve you.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card shadow p-3">
                    <i class="fas fa-hospital fa-3x text-primary"></i>
                    <h4 class="mt-3">24/7 Emergency Care</h4>
                    <p class="text-muted">Providing immediate medical attention when you need it the most.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card shadow p-3">
                    <i class="fas fa-stethoscope fa-3x text-primary"></i>
                    <h4 class="mt-3">Advanced Diagnostics</h4>
                    <p class="text-muted">State-of-the-art equipment for accurate and timely diagnoses.</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Contact Section -->
    <div class="card bg-light mt-5 p-4 text-center">
        <h3 class="fw-bold">Need Help? Contact Us</h3>
        <p class="text-muted">Our team is always here to assist you. Reach out for any medical concerns or appointments.</p>
        <a href="" class="btn btn-primary">Contact Us</a>
    </div>
</div>
@endsection

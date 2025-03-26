@extends('layouts.app')

@section('content')

<!-- Hero Section -->
<div class="hero bg-primary text-white text-center py-5">
    <div class="container">
        <h1 class="display-4 fw-bold">Welcome to Our Hospital</h1>
        <p class="lead">"Caring for you, every step of the way."</p>
    </div>
</div>

<!-- About Section -->
<div class="container my-5">
    <div class="row align-items-center">
        <div class="col-md-6">
            <h2 class="fw-bold">About Our Hospital</h2>
            <p class="text-muted">
                Our hospital is committed to providing high-quality medical care with a focus on compassion and innovation. 
                We offer world-class treatments, advanced medical technology, and a team of dedicated healthcare professionals 
                who prioritize patient well-being.
            </p>
            <p class="text-muted">
                "Your health is our priority. Excellence in care, commitment to healing."
            </p>
        </div>
        <div class="col-md-6">
        <img src="{{ asset('images/roomView.jpg') }}" class="img-fluid rounded shadow" alt="Hospital Image">
        </div>
    </div>
</div>

<!-- Mission & Vision -->
<div class="bg-light py-5">
    <div class="container text-center">
        <div class="row">
            <div class="col-md-6">
                <h3 class="fw-bold">Our Mission</h3>
                <p class="text-muted">To provide compassionate, high-quality healthcare that enhances the lives of our patients and their families.</p>
            </div>
            <div class="col-md-6">
                <h3 class="fw-bold">Our Vision</h3>
                <p class="text-muted">To be a globally recognized healthcare institution known for excellence in patient care, research, and education.</p>
            </div>
        </div>
    </div>
</div>

<!-- Patient Testimonials -->
<div class="container my-5">
    <h2 class="text-center fw-bold">What Our Patients Say</h2>
    <div class="row mt-4">
        <div class="col-md-4">
            <div class="card shadow-sm p-3">
                <p class="text-muted">"The doctors and nurses are so caring. I received excellent treatment and support during my stay."</p>
                <p class="fw-bold text-end">- Emily R.</p>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card shadow-sm p-3">
                <p class="text-muted">"State-of-the-art facilities and a very friendly staff. Highly recommended!"</p>
                <p class="fw-bold text-end">- Michael T.</p>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card shadow-sm p-3">
                <p class="text-muted">"They treated me like family. I am forever grateful for their care and support."</p>
                <p class="fw-bold text-end">- Sarah L.</p>
            </div>
        </div>
    </div>
</div>

<!-- Contact Information -->
<div class="bg-primary text-white py-5">
    <div class="container text-center">
        <h2 class="fw-bold">Get in Touch</h2>
        <p>Need medical assistance? Contact us today.</p>
        <p><i class="fas fa-phone"></i> +1 234 567 890</p>
        <p><i class="fas fa-envelope"></i> info@ourhospital.com</p>
        <p><i class="fas fa-map-marker-alt"></i> 123 Health Street, City, Country</p>
    </div>
</div>

@endsection

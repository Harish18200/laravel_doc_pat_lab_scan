@extends('layouts.app')

@section('content')
<div class="container">
    <h2 class="mb-4">Add User</h2>
    <form action="{{ route('userStore') }}" method="POST" enctype="multipart/form-data">
        @csrf
        <div class="row">
            <!-- Left Side -->
            <div class="col-md-6">
                <div class="form-group">
                    <label>Name</label>
                    <input type="text" name="name" class="form-control" required>
                </div>

                <div class="form-group">
                    <label>Username</label>
                    <input type="text" name="username" class="form-control" required>
                </div>

                <div class="form-group">
                    <label>Password</label>
                    <input type="password" name="password" class="form-control" required>
                </div>

                <div class="form-group">
                    <label>Confirm Password</label>
                    <input type="password" name="confirm_password" class="form-control" required>
                </div>

                <div class="form-group">
                    <label>Department</label>
                    <select name="department_id" class="form-control" required>
                        <option value="">Select Department</option>
                        <option value="1">admin</option>
                        <option value="2">labaratory</option>
                        <option value="3">doctor</option>
                    </select>
                </div>

                <div class="form-group">
                    <label>Gender</label>
                    <select name="gender_id" class="form-control" required>
                        <option value="">Select Gender</option>
                        <option value="1">Male</option>
                        <option value="2">Female</option>
                        <option value="3">Other</option>
                    </select>
                </div>

                <div class="form-group">
                    <label>Marital Status</label>
                    <select name="marital_status_id" class="form-control" required>
                        <option value="">Select Marital Status</option>
                        <option value="1">Single</option>
                        <option value="2">Married</option>
                        <option value="3">Divorced</option>
                    </select>
                </div>

                <div class="form-group">
                    <label>Address</label>
                    <input type="text" name="address" class="form-control" required>
                </div>

                <div class="form-group">
                    <label>Contact No</label>
                    <input type="text" name="contact_no" class="form-control" required>
                </div>

                <div class="form-group">
                    <label>Alternative No</label>
                    <input type="text" name="alternative_no" class="form-control">
                </div>
            </div>

            <!-- Right Side -->
            <div class="col-md-6">
                <div class="form-group">
                    <label>Email</label>
                    <input type="email" name="email" class="form-control" required>
                </div>

                <div class="form-group">
                    <label>Date of Joining</label>
                    <input type="date" name="date_of_joining" class="form-control" required>
                </div>

                <div class="form-group">
                    <label>Date of Birth</label>
                    <input type="date" name="dob" class="form-control" required>
                </div>

                <div class="form-group">
                    <label>Remarks</label>
                    <textarea name="remarks" class="form-control"></textarea>
                </div>

                <div class="form-group">
                    <label>Profile Picture</label>
                    <input type="file" name="profile_picture" class="form-control">
                </div>

                <div class="form-group">
                    <label>Branch</label>
                    <select name="branch" class="form-control" required>
                        <option value="">Select Branch</option>
                        <option value="3">Head Office</option>
                        <option value="Branch 1">Branch 1</option>
                        <option value="Branch 2">Branch 2</option>
                    </select>
                </div>
                <div class="form-group form-check">
                    <input type="hidden" name="scan_user" value="0">
                    <input type="checkbox" name="scan_user" class="form-check-input" value="1">
                    <label class="form-check-label">Scan User</label>
                </div>

                <button type="submit" class="btn btn-success mt-3">Save</button>
            </div>
        </div>
    </form>
</div>

@endsection
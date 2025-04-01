@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Edit User</h2>
    <form action="{{ route('userStore') }}" method="POST">
        @csrf

        <input type="hidden" name="id" value="{{ $user->id }}">


        <div class="row">
            <!-- Left Side -->
            <div class="col-md-6">
                <div class="form-group">
                    <label>Name</label>
                    <input type="text" name="name" class="form-control" value="{{ old('name', $user->name) }}" required>
                </div>

                <div class="form-group">
                    <label>Username</label>
                    <input type="text" name="username" class="form-control" value="{{ old('username', $user->username) }}" required>
                </div>

                <div class="form-group">
                    <label>Password</label>
                    <input type="password" name="password" class="form-control">
                    <!-- If you want to allow the password to be optional, keep this empty input, otherwise skip this if no password change. -->
                </div>

                <div class="form-group">
                    <label>Confirm Password</label>
                    <input type="password" name="confirm_password" class="form-control">
                </div>

                <div class="form-group">
                    <label>Department</label>
                    <select name="department_id" class="form-control" required>
                        <option value="1" {{ $user->department_id == 1 ? 'selected' : '' }}>Admin</option>
                        <option value="2" {{ $user->department_id == 2 ? 'selected' : '' }}>Laboratory</option>
                        <option value="3" {{ $user->department_id == 3 ? 'selected' : '' }}>Doctor</option>
                    </select>
                </div>

                <div class="form-group">
                    <label>Gender</label>
                    <select name="gender_id" class="form-control" required>
                        <option value="1" {{ $user->gender_id == 1 ? 'selected' : '' }}>Male</option>
                        <option value="2" {{ $user->gender_id == 2 ? 'selected' : '' }}>Female</option>
                        <option value="3" {{ $user->gender_id == 3 ? 'selected' : '' }}>Other</option>
                    </select>
                </div>

                <div class="form-group">
                    <label>Marital Status</label>
                    <select name="marital_status_id" class="form-control" required>
                        <option value="1" {{ $user->marital_status_id == 1 ? 'selected' : '' }}>Single</option>
                        <option value="2" {{ $user->marital_status_id == 2 ? 'selected' : '' }}>Married</option>
                        <option value="3" {{ $user->marital_status_id == 3 ? 'selected' : '' }}>Divorced</option>
                    </select>
                </div>

                <div class="form-group">
                    <label>Address</label>
                    <input type="text" name="address" class="form-control" value="{{ old('address', $user->address) }}" required>
                </div>

                <div class="form-group">
                    <label>Contact No</label>
                    <input type="text" name="contact_no" class="form-control" value="{{ old('contact_no', $user->contact_no) }}" required>
                </div>

                <div class="form-group">
                    <label>Alternative No</label>
                    <input type="text" name="alternative_no" class="form-control" value="{{ old('alternative_no', $user->alternative_no) }}">
                </div>
            </div>

            <!-- Right Side -->
            <div class="col-md-6">
                <div class="form-group">
                    <label>Email</label>
                    <input type="email" name="email" class="form-control" value="{{ old('email', $user->email) }}" required>
                </div>

                <div class="form-group">
                    <label>Date of Joining</label>
                    <input type="date" name="date_of_joining" class="form-control" value="{{ old('date_of_joining', $user->date_of_joining) }}" required>
                </div>

                <div class="form-group">
                    <label>Date of Birth</label>
                    <input type="date" name="dob" class="form-control" value="{{ old('dob', $user->dob) }}" required>
                </div>

                <div class="form-group">
                    <label>Remarks</label>
                    <textarea name="remarks" class="form-control">{{ old('remarks', $user->remarks) }}</textarea>
                </div>

                <div class="form-group">
                    <label>Profile Picture</label>
                    <input type="file" name="profile_picture" class="form-control">
                    @if($user->profile_picture)
                    <img src="{{ asset('storage/'.$user->profile_picture) }}" alt="Profile Picture" class="mt-2" style="max-width: 100px;">
                    @endif
                </div>

                <div class="form-group">
                    <label>Branch</label>
                    <select name="branch" class="form-control" required>
                        <option value="3" {{ $user->branch == '3' ? 'selected' : '' }}>Head Office</option>
                        <option value="Branch 1" {{ $user->branch == 'Branch 1' ? 'selected' : '' }}>Branch 1</option>
                        <option value="Branch 2" {{ $user->branch == 'Branch 2' ? 'selected' : '' }}>Branch 2</option>
                    </select>
                </div>

                <div class="form-group form-check">
                    <input type="hidden" name="scan_user" value="0">
                    <input type="checkbox" name="scan_user" class="form-check-input" value="1" {{ $user->scan_user_status == 1 ? 'checked' : '' }}>
                    <label class="form-check-label">Scan User</label>
                </div>

                <button type="submit" class="btn btn-success mt-3">Update</button>

                <a href="{{ url()->previous() }}" class="btn btn-secondary mt-3">Back</a>
            </div>
        </div>
    </form>
    </form>
</div>
@endsection
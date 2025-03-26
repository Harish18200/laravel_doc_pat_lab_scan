<?php

namespace App\Http\Controllers\Doctor;

use App\Http\Controllers\Controller;
use App\Models\Doctor;
use Illuminate\Http\Request;
use App\Models\Patient;
use App\Models\Appointment;

class DoctorController extends Controller
{
    public function PatientList()
    {
        $patients = Patient::get();
        return view('Doctors.patient-list', compact('patients'));
    }

    public function viewAppointment()
    {
        $user_id = session('user_id');
        $appointments = Appointment::where('doctor_id', $user_id)->get();
        return view('Doctors.appointment-list', compact('appointments'));
    }
}

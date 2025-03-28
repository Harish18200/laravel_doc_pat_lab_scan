<?php

namespace App\Http\Controllers\Patients;

use App\Http\Controllers\Controller;
use App\Models\Appointment;
use App\Models\Doctor;
use Illuminate\Http\Request;
use Carbon\Carbon;


class PatientController extends Controller
{
    public function patientMakeAppointment()
    {
        $user_id = session('user_id');
        $appointments = Appointment::where('patient_id', $user_id)->get();
        return view('Patients.add_appointment', compact('appointments'));
    }
    public function editAppointments($id)
    {
        $appointments = Appointment::findOrFail($id);
        $doctors = Doctor::get();
        return view('Patients.edit', compact('appointments', 'doctors'));
    }


    public function  createAppointments()
    {
        $doctors = Doctor::get();
        return view('Patients.create', compact('doctors'));
    }
    public function  storeAppointments(Request $request)
    {

        Appointment::create([
            'patientName' => $request->patientName ?? null,
            'patient_id' => $request->patientId ?? null,
            'doctor_id' => $request->doctor_id ?? null,
            'problem' => $request->problem ?? null,
            'appointment_date' => Carbon::parse($request->appointment_date)->format('Y-m-d'),
            'appointment_time' => Carbon::parse($request->appointment_time)->format('H:i:s'),
            'appointment_status' => $request->status ?? null,
        ]);

        return redirect()->route('patientMakeAppointment')->with('success', 'Appointment added successfully!');
    }

    public function  deleteAppointments(Request $request)
    {
        $appointment = Appointment::find($request->appointment_id);
        if ($appointment) {
            $appointment->delete();
            return redirect()->route('patientMakeAppointment')->with('success', 'Appointment deleted successfully!');
        }

        return redirect()->route('patientMakeAppointment')->with('error', 'Appointment not found!');
    }


    public function  home()
    {

        return view('Patients.home');
    }

    public function  aboutUs()
    {

        return view('Patients.aboutUs');
    }
}

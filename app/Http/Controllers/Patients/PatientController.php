<?php

namespace App\Http\Controllers\Patients;

use App\Http\Controllers\Controller;
use App\Models\Appointment;
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
        return view('Patients.edit', compact('appointments'));
    }


    public function  createAppointments()
    {

        return view('Patients.create');
    }
    public function  storeAppointments(Request $request)
    {

        Appointment::create([
            'patientName' => $request->patientName,
            'patient_id' => $request->patientId,
            'doctor_id' => $request->doctor_id,
            'problem' => $request->problem ?? null,
            'appointment_date' => Carbon::parse($request->appointment_date)->format('Y-m-d'),
            'appointment_time' => Carbon::parse($request->appointment_time)->format('H:i:s'),
            'status' => $request->status ?? null,
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

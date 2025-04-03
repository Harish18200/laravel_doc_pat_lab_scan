<?php

namespace App\Http\Controllers\Patients;

use App\Http\Controllers\Controller;
use App\Models\Admission;
use App\Models\Appointment;
use App\Models\Doctor;
use App\Models\PhysicalExamination;
use App\Models\PatientDisease;
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

    public function  admissionStore(Request $request)
    {

        $request->validate([
            'consultant' => 'required|string|max:255',
            'admission_date' => 'required|date',
            'discharge_date' => 'nullable|date',
            'ip_op' => 'required|string|max:255',
            'informant' => 'nullable|string|max:255',
            'arrival_mode' => 'nullable|string|max:255',
            'allergies' => 'nullable|string',
            'immunization_utd' => 'nullable|string|max:255',
        ]);
        Admission::create([
            'patient_id' => $request->patient_id,
            'primary_consultant' => $request->consultant,
            'admission_date' => $request->admission_date,
            'discharge_date' => $request->discharge_date,
            'ip_op' => $request->ip_op,
            'informant' => $request->informant,
            'arrival_mode' => $request->arrival_mode,
            'allergies' => $request->allergies,
            'immunization_utd' => $request->immunization_utd,
        ]);
        return redirect()->back()->with('success', 'Admission details saved successfully!');
    }
    public function  physicalExaminationStore(Request $request)
    {
        $request->validate([
            'patient_id' => 'required|integer|exists:patients,id',
            'weight' => 'required|numeric',
            'temperature' => 'required|string',
            'pulse' => 'required|integer',
            'bp_left' => 'required|string',
            'bp_right' => 'required|string',
            'respiratory_rate' => 'required|integer',
            'spo2' => 'required|integer',
            'pain_scale' => 'required|integer',
            'grbs' => 'required|string',
        ]);

        // Store the data
        PhysicalExamination::create([
            'patient_id' => $request->patient_id,
            'weight' => $request->weight,
            'temperature' => $request->temperature,
            'pulse' => $request->pulse,
            'bp_left' => $request->bp_left,
            'bp_right' => $request->bp_right,
            'respiratory_rate' => $request->respiratory_rate,
            'spo2' => $request->spo2,
            'pain_scale' => $request->pain_scale,
            'grbs' => $request->grbs,
        ]);

        // Redirect back with success message
        return redirect()->back()->with('successMessage', 'Physical Examination recorded successfully!');
    }

    public function  patientDiseaseStore(Request $request)
    {
        $request->validate([
            'patient_id' => 'required',
            'symptoms'   => 'required|string',
            'disease'    => ['required', 'string', function ($attribute, $value, $fail) {
                if ($value === "No matching disease found") {
                    $fail("Invalid disease. Please enter a valid disease.");
                }
            }],
        ]);

        // Store only if validation passes
        PatientDisease::create([
            'patient_id' => $request->patient_id,
            'symptoms'   => $request->symptoms,
            'diseases'   => $request->disease,
        ]);

        return redirect()->back()->with('StoreMessage', 'Patient disease recorded successfully!');
    }
}

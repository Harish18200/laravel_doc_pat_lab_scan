<?php

namespace App\Http\Controllers\Doctor;

use App\Http\Controllers\Controller;
use App\Models\Doctor;
use Illuminate\Http\Request;
use App\Models\Patient;
use App\Models\Appointment;
use Illuminate\Support\Facades\Hash;
use Faker\Factory as Faker;

class DoctorController extends Controller
{
    public function PatientList()
    {
        $patients = Patient::get();
        return view('Doctors.patient-list', compact('patients'));
    }

    public function patientsCreate()
    {

        return view('Doctors.create_patient');
    }

    public function viewAppointment()
    {
        // $user_id = session('user_id');
        $appointments = Appointment::get();

        return view('Doctors.appointment-list', compact('appointments'));
    }

    public function patientStore(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email',
            'mobile' => 'required|string|max:15',
            'age' => 'required|integer|min:1',
            'gender' => 'required|string|in:Male,Female',
        ]);

        if (isset($request->patientId)) {
            $model = Patient::findOrFail($request->patientId);
            $message = "Patient updated successfully.";
        } else {
            $model = new Patient();
            $message = "Patient added successfully.";
        }

        $model->name = $request->name;
        $model->email = $request->email;
        $model->mobile = $request->mobile;
        $model->age = $request->age;
        $model->gender = $request->gender;
        $model->problem = $request->problem ?? null;
        $model->address = $request->address ?? null;
        $model->dob = $request->dob ?? null;

        // If creating a new patient, hash the password
        if (!$model->exists) {
            $model->password = isset($request->password) ? Hash::make($request->password) : Hash::make('12345678');
        }

        // Save the model
        $model->save();

        return redirect()->route('PatientList')->with('success', $message);
    }

    public function edit($id)
    {
        $patient = Patient::findOrFail($id);
        return view('Doctors.edit', compact('patient'));
    }

    public function destroy($id)
    {
        Patient::findOrFail($id)->delete();
        return redirect()->route('PatientList')->with('success', 'Patient deleted successfully.');
    }
    public function approvalAppointment($id)
    {
        Appointment::where('id', $id)->update(['appointment_status' => 1]);
        return redirect()->route('viewAppointment')->with('success', 'Appointment approved successfully.');
    }
}

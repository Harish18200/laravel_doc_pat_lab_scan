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
        $patients = Appointment::with('patients')->get(); 
        return view('Doctors.patient-list', compact('patients'));
    }

    public function patientsCreate()
    {

        return view('Doctors.create_patient');
    }
    public function PatientDetails($id)
    {
        $patients = Patient::where('id', $id)->first();
        $doctorLists = Doctor::get();
        return view('Doctors.PatientDetails', compact('patients','doctorLists'));
    }
    public function searchPatientDetails($id)
    {
        $patients = Patient::where('id', $id)->first();
        $doctorLists = Doctor::get();
        return view('Doctors.search_patient_detail', compact('patients','doctorLists'));
    }

    public function schedulePatient($id)
    {
        $patients = Patient::where('id', $id)->first();
     
        return view('Doctors.schedule_patient', compact('patients'));
    }

    public function viewAppointment()
    {
        // $user_id = session('user_id');
        $appointments = Appointment::get();

        return view('Doctors.appointment-list', compact('appointments'));
    }

    public function patientStore(Request $request)
    {

        $patientId = isset($request->patientId) ? $request->patientId : null;


        if ($patientId) {
            $model = Patient::findOrFail($patientId);
            $message = "Patient updated successfully.";
        } else {
            $model = new Patient();
            $message = "Patient added successfully.";
        }

        $model->patient_name = $request->patient_name ?? null;
        $model->email = $request->email ?? null;
        $model->mobile = $request->contact_no ?? null;
        $model->gender = $request->gender ?? null;
        $model->address = $request->address ?? null;
        $model->dob = $request->dob ?? null;
        $model->martial_status = $request->marital_status ?? null;
        $model->alternate_no = $request->alternate_no ?? null;
        $model->caregiver_name = $request->caregiver_name ?? null;
        $model->relationship = $request->relationship ?? null;
        $model->remarks = $request->remark ?? null;
        $model->refferred_by = $request->referred_by ?? null;



        if (!$model->exists) {
            $model->password = isset($request->password) ? Hash::make($request->password) : Hash::make('12345678');
        }


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

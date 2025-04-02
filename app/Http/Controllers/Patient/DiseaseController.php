<?php

namespace App\Http\Controllers\Patient;

use App\Http\Controllers\Controller;
use App\Models\Disease;
use App\Models\Appointment;
use Illuminate\Http\Request;

class DiseaseController extends Controller
{
    public function diseasesView()
    {
        $diseases = Disease::all();
        return view('diseases.index', compact('diseases'));
    }
    public function dashboard()
    {
        $sessionId = session('user_id');
        $appointments = Appointment::select(
            'patients.name',
            'patients.age',
            'patients.gender',
            'patients.mobile',
            'patients.id',
            'appointments.appointment_date'
        )
            ->leftJoin('patients', 'appointments.patient_id', '=', 'patients.id')
            ->where('appointments.doctor_id', $sessionId)
            ->get();
        $outPatients = Appointment::select(
            'patients.name',
            'patients.age',
            'patients.gender',
            'patients.mobile',
            'patients.id',
        )
            ->leftJoin('patients', 'appointments.patient_id', '=', 'patients.id')
            ->where('appointments.appointment_status', 1)
            ->get();;
        $inPatients = [];
        return view('Doctors.dashboard', compact('appointments', 'outPatients', 'inPatients'));
    }

    public function promptSearch()
    {
        $diseases = Disease::all();
        return view('diseases.promptSerach', compact('diseases'));
    }
    public function searchDiseases(Request $request)
    {
        $query = $request->input('query');
        $patientDetails = Appointment::select('patientName as name', 'patient_id as id', 'problem as details')
            ->where('problem', 'LIKE', "%{$query}%")
            ->get();

        $disease = Disease::select('diseases as name', 'treatment', 'description as details')
            ->where('symptoms', $query)
            ->first();
        if ($disease) {
            $patientDetails->each(function ($patient) use ($disease) {
                $patient->disease_name = $disease->name;
                $patient->disease_treatment = $disease->treatment;
                $patient->disease_details = $disease->details;
            });
        }

        return response()->json($patientDetails);
    }
}

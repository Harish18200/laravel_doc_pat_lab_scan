<?php

namespace App\Http\Controllers\Patient;

use App\Http\Controllers\Controller;
use App\Models\Disease;
use App\Models\Appointment;
use App\Models\PatientDisease;
use App\Models\SymptomDisease;
use Illuminate\Http\Request;
use App\Models\KmfDisease;
use App\Models\KmfSymptom;
use App\Models\KmfSymptomMapDisease;


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
            'patients.patient_name',
            'patients.gender',
            'patients.mobile',
            'patients.id',
            'appointments.appointment_date'
        )
            ->leftJoin('patients', 'appointments.patient_id', '=', 'patients.id')
            ->where('appointments.doctor_id', $sessionId)
            ->get();
        $outPatients = Appointment::select(
            'patients.patient_name',
            'patients.gender',
            'patients.mobile',
            'patients.id',
        )
            ->leftJoin('patients', 'appointments.patient_id', '=', 'patients.id')
            ->where('appointments.appointment_status', 1)
            ->get();
        $inPatients = PatientDisease::select(
            'patients.patient_name',
            'patients.gender',
            'patients.mobile',
            'patients.id',
        )
            ->leftJoin('patients', 'patient_diseases.patient_id', '=', 'patients.id')
            ->get();
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

    public function getDisease(Request $request)
    {
        $symptomInput = $request->input('symptom');
    
        // Convert string to array
        $symptomArray = explode(',', $symptomInput);
        $symptomArray = array_map('trim', $symptomArray);
        $symptomArray = array_filter($symptomArray);
    
        if (count($symptomArray) === 0) {
            return response()->json(['error' => 'No valid symptoms provided'], 400);
        }
    
        $firstSymptom = $symptomArray[0];
        $lastSymptom = $symptomArray[count($symptomArray) - 1];
    
        $firstSymptomModel = KmfSymptom::where('name', $firstSymptom)->first();
        $lastSymptomModel = KmfSymptom::where('name', $lastSymptom)->first();
    
        if (!$firstSymptomModel || !$lastSymptomModel) {
            return response()->json(['error' => 'Symptoms not found'], 404);
        }
    
        if ($firstSymptom !== $lastSymptom) {
            $query = KmfSymptomMapDisease::with('diseaseName')
                ->where('symptom_id', $firstSymptomModel->id)
                ->where('symptom_map_id', $lastSymptomModel->id)
                ->first();
        } else {
            $query = KmfSymptomMapDisease::with('diseaseName')
                ->where('symptom_id', $firstSymptomModel->id)
                ->first();
        }
    
        if (!$query) {
            return response()->json(['disease_name' => ['disease' => 'No matching disease found']]);
        }
    
        return response()->json(['disease_name' => $query->diseaseName]);
    }
    
    
    // public function getDisease(Request $request)
    // {
    //     $symptom = $request->symptom;

    //     $disease = Disease::where('symptoms', $symptom)->first();

    //     if ($disease) {
    //         return response()->json(['disease' => $disease->diseases]);
    //     } else {
    //         return response()->json(['disease' => 'No matching disease found']);
    //     }
    // }
}

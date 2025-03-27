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

<?php

namespace App\Http\Controllers\Lab;

use App\Http\Controllers\Controller;
use App\Models\Appointment;
use App\Models\LabDetails;
use App\Models\LabMaster;
use App\Models\LabApplication;
use Illuminate\Http\Request;


class LabController extends Controller
{
    public function LabView()
    {

        $labs = LabMaster::all();
        $labDetails = LabDetails::all(); 
        return view('lab.index', compact('labs', 'labDetails'));
    }

    public function labCreate()
    {
        $lab_masters =LabMaster::all();
        return view('lab.create',compact('lab_masters'));
    }
    public function labStore(Request $request)
    {
        $request->validate([
            'lab_master_id' => 'required',
            'lab_details' => 'required|string',
            'normal_range' => 'nullable|string',
            'unit' => 'nullable|string',
            'price' => 'required|string',
            'child' => 'nullable|string',
        ]);
    
        if ($request->filled('labApplication_id')) {
            $lab = LabDetails::find($request->labApplication_id);
            if ($lab) {
                $lab->update([
                    'lab_select_id' => $request->lab_master_id,
                    'lab_details' => $request->lab_details,
                    'normal_range' => $request->normal_range,
                    'unit' => $request->unit,
                    'price' => $request->price,
                    'child' => $request->Child,
                ]);
                return redirect()->route('LabView')->with('success', 'Lab updated successfully');
            } else {
                return redirect()->route('LabView')->with('error', 'Lab not found');
            }
        } else {
            LabDetails::create([
                'lab_select_id' => $request->lab_master_id,
                'lab_details' => $request->lab_details,
                'normal_range' => $request->normal_range,
                'unit' => $request->unit,
                'price' => $request->price,
                'child' => $request->Child,
            ]);
            return redirect()->route('LabView')->with('success', 'Lab created successfully');
        }
    }
    


    public function labsEdit($id)
    {
        $lab_masters =LabMaster::all();
        
        $labApplication = LabDetails::findOrFail($id);
        return view('lab.edit', compact('labApplication','lab_masters'));
    }

   

    public function labsDelete(Request $request)
    {
      
        $labAppointment = LabDetails::find($request->lab_id);
        if ($labAppointment) {
            $labAppointment->delete();
        }


        return redirect()->route('LabView')->with('success', 'Lab deleted successfully');
    }

    public function getLabDetails(Request $request)
    {
        $lab_select_id = $request->lab_select_id;
        $labDetails = LabDetails::where('lab_select_id', $lab_select_id)->get();
        return response()->json($labDetails);
    }
}

<?php

namespace App\Http\Controllers\Lab;

use App\Http\Controllers\Controller;
use App\Models\Appointment;
use App\Models\LabDetails;
use App\Models\LabApplication;
use Illuminate\Http\Request;
use App\Models\LabMaster;

class LabController extends Controller
{
    public function LabView()
    {

        $labs = LabMaster::all();
        $labDetails = LabDetails::all(); // Fetch all data initially
        return view('lab.index', compact('labs', 'labDetails'));
    }

    public function labCreate()
    {

        return view('lab.create');
    }
    public function labStore(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'address' => 'nullable|string|max:255',
            'phone' => 'nullable|string|max:20',
        ]);
        if ($request->filled('labApplication_id')) {
            $lab = LabApplication::find($request->labApplication_id);
            if ($lab) {
                $lab->update($request->only(['name', 'address', 'phone']));
                return redirect()->route('LabView')->with('success', 'Lab updated successfully');
            } else {
                return redirect()->route('LabView')->with('error', 'Lab not found');
            }
        } else {
            LabApplication::create($request->only(['name', 'address', 'phone']));
            return redirect()->route('LabView')->with('success', 'Lab created successfully');
        }
    }



    public function labsEdit($id)
    {
        $labApplication = LabApplication::findOrFail($id);
        return view('lab.edit', compact('labApplication'));
    }

    public function update(Request $request, LabApplication $lab)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'address' => 'nullable|string|max:255',
            'phone' => 'nullable|string|max:20',
        ]);

        $lab->update($request->all());

        return redirect()->route('labs.index')->with('success', 'Lab updated successfully');
    }

    public function labsDelete(Request $request)
    {

        $labAppointment = LabApplication::find($request->lab_id);
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

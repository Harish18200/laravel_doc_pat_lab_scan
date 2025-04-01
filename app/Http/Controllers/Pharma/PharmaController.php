<?php

namespace App\Http\Controllers\Pharma;

use App\Http\Controllers\Controller;
use App\Models\BillMaster;
use App\Models\PharmaApplication;
use App\Models\modalityMaster;
use Illuminate\Http\Request;
use App\Models\TherapyMaster;
use App\Models\BillType;

class PharmaController extends Controller
{
    public function pharmaView()
    {

        $pharmas = PharmaApplication::get();
        return view('pharma.index', compact('pharmas'));
    }

    public function pharmaCreate()
    {
        return view('pharma.create');
    }

    public function pharmaStore(Request $request)
    {

        if (isset($request->pharma_id)) {
            $pharma = PharmaApplication::find($request->id);
            if ($pharma) {
                $pharma->update($request);
                return redirect()->route('pharmaView')->with('success', 'Pharma product updated successfully');
            }
        }
        PharmaApplication::create($request);

        return redirect()->route('pharmaView')->with('success', 'Pharma product added successfully');
    }

    public function pharmaEdit($id)
    {
        $pharma = PharmaApplication::findOrFail($id);
        return view('pharma.edit', compact('pharma'));
    }


    public function pharmaDelete(Request $request)
    {
        $pharma = PharmaApplication::find($request->pharma_id);
        if ($pharma) {
            $pharma->delete();
        }
        return redirect()->route('pharmaView')->with('success', 'Pharma product deleted successfully');
    }

    public function modalityMaster()
    {
        $modality_masters = ModalityMaster::all();
        return view('pharma.modality_master', compact('modality_masters'));
    }


    public function editModality($id)
    {
        $modality = ModalityMaster::findOrFail($id);
        return view('pharma.edit_modality_master', compact('modality'));
    }

    public function updateModality(Request $request, $id)
    {
        $request->validate([
            'modality_details' => 'required|string|max:255',
            'price' => 'required|numeric',
        ]);

        $modality = ModalityMaster::findOrFail($id);
        $modality->update([
            'modality_details' => $request->modality_details,
            'price' => $request->price,
        ]);

        return redirect()->route('modalityMaster')->with('success', 'Modality updated successfully!');
    }

    public function storeModality(Request $request)
    {
        $request->validate([
            'modality_details' => 'required|string|max:255',
            'price' => 'required|numeric',
        ]);

        ModalityMaster::create([
            'modality_details' => $request->modality_details,
            'price' => $request->price,
        ]);

        return redirect()->route('modalityMaster')->with('success', 'Modality created successfully!');
    }

    public function createModality()
    {
        return view('pharma.create_modality_master');
    }
    public function therapyMaster()
    {
        $therapy_masters = TherapyMaster::all();
        return view('pharma.therapy_master', compact('therapy_masters'));
    }

    // Show Create Therapy Form
    public function createTherapy()
    {
        return view('pharma.create_therapy_master');
    }

    // Store Therapy Data
    public function storeTherapy(Request $request)
    {
        $request->validate([
            'therapy_details' => 'required|string|max:255',
            'price' => 'required|numeric',
        ]);

        TherapyMaster::create([
            'therapy_details' => $request->therapy_details,
            'price' => $request->price,
        ]);

        return redirect()->route('therapy.master')->with('success', 'Therapy created successfully!');
    }
    public function editTherapy($id)
    {
        $therapy = TherapyMaster::findOrFail($id);
        return view('pharma.edit_therapy_master', compact('therapy'));
    }

    // Update Therapy Data
    public function updateTherapy(Request $request, $id)
    {
        $request->validate([
            'therapy_details' => 'required|string|max:255',
            'price' => 'required|numeric',
        ]);

        $therapy = TherapyMaster::findOrFail($id);
        $therapy->update([
            'therapy_details' => $request->therapy_details,
            'price' => $request->price,
        ]);

        return redirect()->route('therapy.master')->with('success', 'Therapy updated successfully!');
    }

    public function billMaster()
    {
        $bill_masters = BillMaster::with('billType')->get();
        return view('pharma.bill_master', compact('bill_masters'));
    }

    public function createBill()
    {
        $bill_types = BillType::get();
        return view('pharma.create_bill_master', compact('bill_types'));
    }

    public function storeBill(Request $request)
    {
        BillMaster::create($request->all());

        return redirect()->route('bill.master')->with('success', 'Bill created successfully!');
    }

    public function editBill($id)
    {
        $bill = BillMaster::findOrFail($id);
        $bill_types = BillType::get();
        return view('pharma.edit_bill_master', compact('bill', 'bill_types'));
    }

    public function updateBill(Request $request, $id)
    {
        $request->validate([
            'bill_details' => 'required|string|max:255',
            'amount' => 'required|numeric',
        ]);

        $bill = BillMaster::findOrFail($id);
        $bill->update($request->all());

        return redirect()->route('bill.master')->with('success', 'Bill updated successfully!');
    }
}

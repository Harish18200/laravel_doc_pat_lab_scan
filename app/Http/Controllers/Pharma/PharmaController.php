<?php

namespace App\Http\Controllers\Pharma;

use App\Http\Controllers\Controller;
use App\Models\PharmaApplication;
use Illuminate\Http\Request;

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
}

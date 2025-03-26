<?php

namespace App\Http\Controllers\ScanInvoice;

use App\Http\Controllers\Controller;
use App\Models\ScanInvoice;
use Illuminate\Http\Request;

class ScanInvoiceController extends Controller
{
    public function scanInvoiceView()
    {
        $invoices = ScanInvoice::all();
        return view('Scaninvoices.index', compact('invoices'));
    }

    public function scanInvoiceCreate()
    {
        return view('Scaninvoices.create');
    }

    public function scanInvoiceStore(Request $request)
    {


        $request->validate([
            'invoice_number' => 'required',
            'invoice_date' => 'required',
            'amount' => 'required|numeric',
            'customer_name' => 'required|string',

        ]);


        try {
            $invoice = ScanInvoice::updateOrCreate(
                ['id' => $request->invoice_id], // Check if invoice exists by ID
                [
                    'invoice_number' => $request->invoice_number,
                    'invoice_date' => $request->invoice_date,
                    'amount' => $request->amount,
                    'customer_name' => $request->customer_name,
                ]
            );

            if ($invoice->wasRecentlyCreated) {

                $message = 'Invoice added successfully.';
            } else {
                $message = 'Invoice updated successfully.';
            }

            return redirect()->route('scanInvoiceView')->with('success', $message);
        } catch (\Exception $e) {
            return redirect()->back()->withErrors(['error' => 'An error occurred while saving the invoice.']);
        }
    }



    public function scanInvoiceEdit($id)
    {
        $scanInvoice = ScanInvoice::findOrFail($id);

        return view('Scaninvoices.edit', compact('scanInvoice'));
    }



    public function scanInvoiceDelete(Request $request)
    {
        $scanInvoice = ScanInvoice::find($request->invoice_id);
        if ($scanInvoice) {
            $scanInvoice->delete();
        }
        return redirect()->route('scanInvoiceView')->with('success', 'Invoice deleted successfully');
    }
}

<?php

namespace App\Http\Controllers;

use App\Mail\ExpenseReportMail;
use App\Models\Expenses;
use App\Models\ExpensesMaster;
use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Facades\Mail;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;


class ExpenseController extends Controller
{
    public function expensesView()
    {
        $expenses = Expenses::all();
        $expensesMasters = ExpensesMaster::all();

        return view('expenses.index', compact('expenses', 'expensesMasters'));
    }
    public function ReportView()
    {


        return view('expenses.reportView');
    }
    public function medicinePurchase()
    {


        return view('expenses.medicinePurchase');
    }


    public function expensesMasterIndex()
    {
        $expensesMasters = ExpensesMaster::all();

        return view('expenses.masterIndex', compact('expensesMasters'));
    }
    public function expensesMasterEdit($id)
    {
        $expenseMaster = ExpensesMaster::findOrFail($id);
        return view('expenses.editMaster', compact('expenseMaster'));
    }

    public function expensesCreate()
    {
        return view('expenses.create');
    }
    public function expensesMaster()
    {

        return view('expenses.addMaster');
    }

    public function expensesMasterStore(Request $request)
    {
        $request->validate([
            'expenses_detail' => 'required|string|max:255',
            'description' => 'nullable|string',
        ]);
        $expense = ExpensesMaster::updateOrCreate(
            ['id' => $request->expensesMaster_id],
            [
                'expenses_detail' => $request->expenses_detail,
                'description' => $request->description,
            ]
        );
        return  redirect()->route('expensesMasterIndex');
    }
    public function expensesStore(Request $request)
    {

        $validatedData = $request->validate([
            'date' => 'required|date',
            'ebbill' => 'nullable|numeric',
            'physio_expenses' => 'nullable|numeric',
            'salary' => 'nullable|numeric',
            'tv' => 'nullable|numeric',
            'tea' => 'nullable|numeric',
            'phone_bill' => 'nullable|numeric',
            'food' => 'nullable|numeric',
            'biscuit' => 'nullable|numeric',
            'cool_drinks' => 'nullable|numeric',
            'service' => 'nullable|numeric',
            'work' => 'nullable|numeric',
            'milk' => 'nullable|numeric',
            'amazon' => 'nullable|numeric',
            'out_side_lab' => 'nullable|numeric',
            'medicine_company' => 'nullable|numeric',
            'laundry' => 'nullable|numeric',
            'car' => 'nullable|numeric',
            'flower' => 'nullable|numeric',
            'manju' => 'nullable|numeric',
            'courier' => 'nullable|numeric',
            'desil' => 'nullable|numeric',
            'bio_waste' => 'nullable|numeric',
            'autitor' => 'nullable|numeric',
        ]);


        if ($request->filled('expenses_id')) {
            $expense = Expenses::findOrFail($request->expenses_id); // Find the record
            $expense->update($validatedData); // Update the record
            $message = 'Expense updated successfully.';
        } else {
            Expenses::create($validatedData); // Create a new record
            $message = 'Expense added successfully.';
        }

        return redirect()->route('expensesView')->with('success', $message);
    }


    public function expensesEdit($id)
    {
        $expense = Expenses::findOrFail($id);
        return view('expenses.edit', compact('expense'));
    }

    public function expensesDelete(Request $request)
    {
        $expenses =  Expenses::find($request->expenses_id);
        if ($expenses) {
            $expenses->delete();
            return redirect()->route('expensesView')->with('success', 'Expenses deleted successfully.');
        }
        return redirect()->route('expensesView')->with('error', 'Expenses not found!');
    }
    public function expensesMaterDelete(Request $request)
    {
        $expenses =  ExpensesMaster::find($request->expensesMaster_id);
        if ($expenses) {
            $expenses->delete();
            return redirect()->route('expensesMasterIndex')->with('success', 'Expenses deleted successfully.');
        }
        return redirect()->route('expensesMasterIndex')->with('error', 'Expenses not found!');
    }

    public function generatePdf(Request $request)
    {

        $expenses = Expenses::where('date', $request->reportDate)->first();
        if (!$expenses) {
            return redirect()->back()->with('error', 'No expenses found for the selected date.');
        }
        $pdf = Pdf::loadView('expenses.expense_report', [
            'expense' => $expenses->toArray(),
            'date' => $request->reportDate
        ]);
        if ($request->pdf === 'pdf') {

            return $pdf->download('Expense_Report_' . $request->reportDate . '.pdf');
        } elseif ($request->report === 'report') {
            $email = $request->email ?? null;

            Mail::to($email)->send(new ExpenseReportMail($pdf, $request->reportDate, $expenses));

            return back()->with('success', 'Expense report sent to mail successfully!');
        } elseif ($request->excel === 'excel') {
        
            $spreadsheet = new Spreadsheet();
            $sheet = $spreadsheet->getActiveSheet();
        
            $expensesArray = $expenses->toArray();
        
            function columnLetter($index) {
                $alphabet = range('A', 'Z');
                $letter = '';
                while ($index >= 0) {
                    $letter = $alphabet[$index % 26] . $letter;
                    $index = intval($index / 26) - 1;
                }
                return $letter;
            }
        
            $i = 0;
            foreach (array_keys($expensesArray) as $key) {
                $column = columnLetter($i);
                $sheet->setCellValue($column . '1', $key);
                $i++;
            }
        
            $i = 0;
            foreach (array_values($expensesArray) as $value) {
                $column = columnLetter($i);
                $sheet->setCellValue($column . '2', $value);
                $i++;
            }
        
            $filename = 'Expense_Report_' . $request->reportDate . '.xlsx';
           
            $path = storage_path('app/public/' . $filename);
            $writer = new Xlsx($spreadsheet);
            $writer->save($path);
        
            return redirect()->route('expensesMasterIndex')->with('success', 'Excel report generated!')->with('download_link', asset('storage/' . $filename));
        }
        
    }
}
    

    // public function generatePdf(Request $request)
    // {
    //     $expenses = Expenses::where('date', $request->reportDate)->first();

    //     if (!$expenses) {
    //         return redirect()->back()->with('error', 'No expenses found for the selected date.');
    //     }

    //     $pdf = Pdf::loadView('expenses.expense_report', [
    //         'expense' => $expenses->toArray(),
    //         'date' => $request->reportDate
    //     ]);

    //     return $pdf->download('Expense_Report_' . $request->reportDate . '.pdf');
    // }

<?php

namespace App\Http\Controllers;

use App\Models\Expenses;
use Illuminate\Http\Request;

class ExpenseController extends Controller
{
    public function expensesView()
    {
        $expenses = Expenses::all();

        return view('expenses.index', compact('expenses'));
    }

    public function expensesCreate()
    {
        return view('expenses.create');
    }

    public function expensesStore(Request $request)
    {
        // Validate the request
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
            'cooldrinks' => 'nullable|numeric',
            'service' => 'nullable|numeric',
            'work' => 'nullable|numeric',
            'milk' => 'nullable|numeric',
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
}

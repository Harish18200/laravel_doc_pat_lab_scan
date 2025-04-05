<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class ExpenseReportMail extends Mailable
{
    use Queueable, SerializesModels;

    public $pdf;
    public $reportDate;
    public $expenses;

    public function __construct($pdf, $reportDate, $expenses)
    {
        $this->pdf = $pdf;
        $this->reportDate = $reportDate;
        $this->expenses = $expenses;
    }

    public function build()
    {
        return $this->subject('Expense Report - ' . $this->reportDate)
            ->view('expenses.expense_report', ['expense' => $this->expenses])
            ->attachData($this->pdf->output(), 'Expense_Report_' . $this->reportDate . '.pdf', [
                'mime' => 'application/pdf',
            ]);
    }
}

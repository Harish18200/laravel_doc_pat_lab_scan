@extends('layouts.app')

@section('content')


<!DOCTYPE html>
<html>
<head>
    <title>Patient Invoice</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            margin: 20px;
        }
        .header, .invoice-info, .form-row, table, .actions {
            margin-bottom: 20px;
        }
        .header {
            display: flex;
            justify-content: space-between;
        }
        .form-row {
            display: flex;
            gap: 10px;
        }
        input, select {
            padding: 6px;
            width: 100%;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table th, table td {
            border: 1px solid #ddd;
            padding: 8px;
        }
        .summary td {
            border: none;
        }
        .btn {
            padding: 10px 15px;
            background-color: #8e24aa;
            color: white;
            border: none;
            cursor: pointer;
            margin-right: 10px;
        }
        .btn:hover {
            background-color: #6a1b9a;
        }
        .right-align {
            text-align: right;
        }
    </style>
</head>
<body>
    <div id="pdfContent" class="container">
        <h3>Patient Details</h3>
        
        <div class="header">
            <div>
                <strong>Kalai Medical Foundation</strong><br>
                No 22. Dhanarathinam Nagar,<br>
                Trichy 620 008.
            </div>
            <div class="right-align">
                <strong>Invoice No:</strong> 208103<br>
                <strong>Invoice Date:</strong> 07/04/2025<br>
                Consultant: Dr. Bagyavasan. K, FRSPH (UK), FCR, PGDD (UK),<br>
                GR. DIP SONO (AUS),<br>
                Consultant in Diabetes, Sonology and Homoeopathy
            </div>
        </div>

        <div class="form-row">
            <input type="text" placeholder="Name">
            <input type="text" placeholder="Age">
            <input type="text" placeholder="Gender">
            <input type="text" placeholder="Phone">
        </div>

        <table>
            <thead>
                <tr>
                    <th>S.No</th>
                    <th>Medicine / Potency</th>
                    <th>Batch No.</th>
                    <th>Mfg. / Exp. Date</th>
                    <th>Cost</th>
                    <th>Quantity</th>
                    <th>Amount</th>
                    <th><button class="btn">Add</button></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td><input type="text"></td>
                    <td><input type="text"></td>
                    <td><select><option>SELECT</option></select></td>
                    <td><input type="number" step="0.01"></td>
                    <td><input type="number"></td>
                    <td><input type="number" step="0.01"></td>
                    <td></td>
                </tr>
            </tbody>
        </table>

        <table class="summary">
            <tr>
                <td class="right-align" colspan="6"><strong>(a)Total</strong></td>
                <td><input type="text" value="0.00" readonly></td>
            </tr>
            <tr>
                <td class="right-align" colspan="6"><strong>Paid</strong></td>
                <td><input type="text" value="0.00"></td>
            </tr>
            <tr>
                <td class="right-align" colspan="6"><strong>Balance</strong></td>
                <td><input type="text" value="0.00" readonly></td>
            </tr>
        </table>

        <div class="actions">
        <button class="btn" onclick="generatePDF()">PRINT BILL</button>


        </div>
    </div>
</body>
</html>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js"></script>
<script>
    function generatePDF() {
        const element = document.getElementById('pdfContent');

        const opt = {
            margin:       0.5,
            filename:     'invoice.pdf',
            image:        { type: 'jpeg', quality: 0.98 },
            html2canvas:  { scale: 2 },
            jsPDF:        { unit: 'in', format: 'a4', orientation: 'portrait' },
        };

        html2pdf().from(element).set(opt).toPdf().get('pdf').then(function (pdf) {
            const blob = pdf.output('blob');
            const url = URL.createObjectURL(blob);
            window.open(url);
        });
    }
</script>


@endsection
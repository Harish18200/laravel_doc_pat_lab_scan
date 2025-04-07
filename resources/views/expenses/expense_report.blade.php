<!DOCTYPE html>
<html>
<head>
    <title>Expense Report</title>
    <style>
        body { font-family: sans-serif; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { border: 1px solid #333; padding: 8px; text-align: left; }
    </style>
</head>
<body>
    <h2>KALAI MEDICAL FOUNDATION HOSPITAL</h2>

    <p><strong>Billed To:</strong><br>
    SCAN ME RADIOLOGY LIMITED<br>
    Klinik Mediviron (Jalan Tun Sambanthan)<br>
    17, Jalan Tun Sambanthan 7, 50470 WP Kuala Lumpur,<br>
    Malaysia</p>

    <p><strong>Invoice Date:</strong> 01 - April - 2025<br>
    <strong>Invoice Number:</strong> SMR/03/2025-2026<br>
    <strong>Invoice Period:</strong> March / 2025</p>

    <table>
        <thead>
            <tr>
                <th>Description</th>
                <th>Amount (MYR)</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>SCAN (3) AND ECHO (0) AND PoC (0)</td>
                <td>-1000</td>
            </tr>
            <tr>
                <td>TAX in Australia</td>
                <td>NIL</td>
            </tr>
            <tr>
                <th>Total</th>
                <th>-1000</th>
            </tr>
        </tbody>
    </table>

    <p><strong>Amount in Words:</strong> MYR NEGATIVE ONE THOUSAND</p>

    <h3>Account Details</h3>
    <p>
        <strong>Name:</strong> BAGYAVASAN KANNAN<br>
        <strong>BSB:</strong> 065-106<br>
        <strong>Account Number:</strong> 10610906<br>
        <strong>BIC/SWIFT Code:</strong> CTBAAU2S<br>
        <strong>Bank:</strong> COMMONWEALTH BANK<br>
        <strong>Branch:</strong> Prospect Northpark Branch<br>
        Shop 9, Northpark Shopping Centre, 264 Main North Rd, Prospect SA 5082
    </p>

    <p><strong>For Scan Me Radiology / Signature:</strong><br>
    Dr. Bagyavasan. K, FRSHP (UK), PGDD(UK), GR.Dip .Sono (Aus)<br>
    ASAR registration no: 10157</p>

    <p><strong>Company Address:</strong><br>
    SCAN ME RADIOLOGY<br>
    No. 51 Albert Street<br>
    Windsor Gardens<br>
    South Australia - 5087</p>

    <p><strong>Note:</strong> TAX INVOICE</p>

    <h2>Detailed Expenses</h2>
    <table>
        <thead>
            <tr>
                <th>Expense Type</th>
                <th>Amount</th>
            </tr>
        </thead>
        <tbody>
            @foreach($expense as $key => $value)
                @if(!in_array($key, ['id', 'created_at', 'updated_at', 'date']))
                    <tr>
                        <td>{{ ucfirst(str_replace('_', ' ', $key)) }}</td>
                        <td>{{ $value }}</td>
                    </tr>
                @endif
            @endforeach
        </tbody>
    </table>
</body>
</html>

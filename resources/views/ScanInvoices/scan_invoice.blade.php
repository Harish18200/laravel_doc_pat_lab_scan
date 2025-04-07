<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tax Invoice</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            font-size: 12px;
            margin: 40px;
            color: #000;
        }
        .header, .footer {
            text-align: center;
        }
        .title {
            font-size: 20px;
            font-weight: bold;
            margin-bottom: 20px;
            text-align: center;
            text-transform: uppercase;
        }
        .section {
            margin-bottom: 20px;
        }
        .section h4 {
            margin-bottom: 5px;
            font-weight: bold;
        }
        .table, .details-table {
            width: 100%;
            border-collapse: collapse;
        }
        .table th, .table td, .details-table th, .details-table td {
            border: 1px solid #000;
            padding: 6px;
            text-align: left;
        }
        .details-table th {
            background-color: #f0f0f0;
        }
        .signature {
            margin-top: 40px;
        }
        .signature p {
            margin-bottom: 3px;
        }
    </style>
</head>
<body>

    <div class="header">
        <div class="title">TAX INVOICE</div>
        <p><strong>SCAN ME RADIOLOGY</strong><br>
        No. 51 Albert Street<br>
        Windsor Gardens<br>
        South Australia - 5087</p>
    </div>

    <div class="section">
        <h4>Billed To:</h4>
        <p><strong>SCAN ME RADIOLOGY LIMITED</strong><br>
        Klinik Mediviron (Jalan Tun Sambanthan)<br>
        17, Jalan Tun Sambanthan 7, 50470 WP Kuala Lumpur,<br>
        Malaysia</p>
    </div>

    <div class="section">
        <table class="details-table">
            <tr>
                <th>Invoice Date</th>
                <td>01 - April - 2025</td>
                <th>Invoice Number</th>
                <td>SMR/03/2025-2026</td>
            </tr>
            <tr>
                <th>Invoice Period</th>
                <td colspan="3">March / 2025</td>
            </tr>
        </table>
    </div>

    <div class="section">
        <table class="table">
            <thead>
                <tr>
                    <th>DESCRIPTION</th>
                    <th>AMOUNT (MYR)</th>
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
                    <th>TOTAL</th>
                    <th>-1000</th>
                </tr>
            </tbody>
        </table>
    </div>

    <div class="section">
        <p><strong>AMOUNT IN WORDS:</strong> MYR NEGATIVE ONE THOUSAND</p>
    </div>

    <div class="section">
        <h4>ACCOUNT DETAILS:</h4>
        <p>
            BAGYAVASAN KANNAN<br>
            BSB: 065-106<br>
            ACCOUNT NUMBER: 10610906<br>
            BIC/SWIFT CODE: CTBAAU2S<br>
            BANK DETAILS: COMMONWEALTH BANK<br><br>
            BANK ADDRESS:<br>
            PROSPECT NORTHPARK BRANCH<br>
            Shop 9, Northpark Shopping Centre<br>
            264 Main North Rd<br>
            Prospect SA 5082
        </p>
    </div>

    <div class="signature">
        <p>For Scan Me Radiology / Signature:</p>
        <p><strong>Dr. Bagyavasan. K, FRSHP (uk).,</strong></p>
        <p>PGDD(UK)., GR.Dip .Sono (Aus)</p>
        <p>ASAR registration no: 10157</p>
        <br>
        <p>Signature: _________________________</p>
    </div>

</body>
</html>

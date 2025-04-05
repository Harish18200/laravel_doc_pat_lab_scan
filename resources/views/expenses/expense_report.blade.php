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
    <h2>Expense Report </h2>
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

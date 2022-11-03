<!DOCTYPE html>
<html>

<head>
    <title>Hi</title>
</head>

<body>
    <h1>Invoice Details</h1>
    <p>{{ $date }}</p>

    <table>
        <thead>
            <tr>
                <th>Invoice ID</th>
                <th>Discount</th>
                <th>Total Amount</th>
                <th>Amount Pay</th>
                <th>Amount Due</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>{{ $invoice_id }}</td>
                <td>{{ $discount }}</td>
                <td>{{ $total_amount }}</td>
                <td>{{ $amount_pay }}</td>
                <td>{{ $amount_due }}</td>
            </tr>
        </tbody>
    </table>
</body>

</html>
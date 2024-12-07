<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Orders Page</title>
    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
</head>
<body>
    <div>
        <table>
            <tr>
                <td>Name:</td>
                <td>
                    <input type="text" name="name" id="name" class="form-control" required />
                </td>
            </tr>
            <tr>
                <td>Email:</td>
                <td>
                    <input type="email" name="email" id="email" class="form-control" required />
                </td>
            </tr>
            <tr>
                <td>Amount:</td>
                <td>
                    <input type="number" name="amount" id="amount" class="form-control" required />
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <button id="rzp-button1" class="btn btn-primary">Proceed To Pay</button>
                </td>
            </tr>
        </table>
    </div>

    <script>
        async function createOrder() {
            const response = await fetch("<%= request.getContextPath() %>/createOrder", {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    name: document.getElementById('name').value,
                    email: document.getElementById('email').value,
                    amount: document.getElementById('amount').value
                })
            });
            const order = await response.json();
            return order;
        }

        document.getElementById('rzp-button1').onclick = async function(e) {
            const order = await createOrder();

            var options = {
                "key": "rzp_test_VfDnABLjynnWfn", // your Razorpay key ID
                "amount": order.amount,
                "currency": "INR",
                "name": "", // Name of your Razorpay account
                "description": "Order for Test",
                "order_id": order.razorpayOrderId,
                "reciept": order.email,
                "callback_url": "<%= request.getContextPath() %>/paymentCallback",
                "prefill": {
                    "name": order.name,
                    "email": order.email
                },
                "theme": {
                    "color": "#339900"
                }
            };

            var rzp1 = new Razorpay(options);
            rzp1.open();
            e.preventDefault();
        }
    </script>
</body>
</html>
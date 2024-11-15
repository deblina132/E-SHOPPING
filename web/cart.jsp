<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Shopping Cart</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('Handshake.gif'); /* Path to your GIF */
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            color: #333;
            margin: 0;
            padding: 20px;
            position: relative;
        }
        #overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(255, 255, 255, 0.8); /* Adjust opacity */
            z-index: -1;
        }
        h1, h2 {
            text-align: center;
        }
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: white;
            border-radius: 5px;
        }
        th, td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ddd;
        }
        th {
            background-color: #f4f4f4;
        }
        .cart-button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
            display: inline-block;
        }
        .cart-button:hover {
            background-color: #45a049;
        }
        #total-price {
            font-size: 20px;
            font-weight: bold;
            margin-top: 20px;
            text-align: center;
        }
        .payment-form {
            width: 60%; /* Reduced from 80% */
            max-width: 500px; /* Sets a maximum width for smaller screens */
            margin: 20px auto;
            padding: 15px; /* Reduced padding */
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #fff;
        }
        .payment-form label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }
        .payment-form input[type="text"], .payment-form input[type="number"] {
            width: 100%;
            padding: 8px; /* Reduced padding */
            margin-bottom: 15px;
            border-radius: 5px;
            border: 1px solid #ddd;
        }
        .payment-options {
            display: flex;
            justify-content: center;
            margin-bottom: 20px;
        }
        .payment-options label {
            margin-right: 15px;
        }
    </style>
</head>
<body>
    <div id="overlay"></div>

    <h1>Your Shopping Cart</h1>

    <table id="cart-table">
        <thead>
            <tr>
                <th>Item</th>
                <th>Price</th>
                <th>Remove</th>
            </tr>
        </thead>
        <tbody id="cart-items-list">
            <!-- Cart items will be dynamically added here -->
        </tbody>
    </table>

    <p id="total-price">Total: $0.00</p>

    <div class="payment-form">
        <h2>Proceed to Payment</h2>
        
        <div class="payment-options">
            <label>
                <input type="radio" name="paymentMethod" value="card" checked> Credit/Debit Card
            </label>
            <label>
                <input type="radio" name="paymentMethod" value="upi"> UPI
            </label>
            <label>
                <input type="radio" name="paymentMethod" value="cod"> Cash on Delivery (COD)
            </label>
        </div>
        
        <form id="paymentForm" onsubmit="processPayment(event)">
            <div id="cardPaymentFields">
                <label for="cardNumber">Card Number</label>
                <input type="text" id="cardNumber" placeholder="1234 5678 9012 3456" required>

                <label for="expiryDate">Expiry Date</label>
                <input type="text" id="expiryDate" placeholder="MM/YY" required>

                <label for="cvv">CVV</label>
                <input type="number" id="cvv" placeholder="123" required>
            </div>

            <div id="upiPaymentField" style="display: none;">
                <label for="upi">UPI ID</label>
                <input type="text" id="upi" placeholder="example@upi">
            </div>

            <button type="submit" class="cart-button">Make Payment</button>
        </form>
    </div>

    <a href="login.jsp" class="cart-button">Back to Shop</a>

    <script>
        function updateCart() {
            const cart = JSON.parse(localStorage.getItem('cart')) || [];
            const cartItemsList = document.getElementById('cart-items-list');
            const totalPriceElement = document.getElementById('total-price');

            cartItemsList.innerHTML = '';
            let totalPrice = 0;

            cart.forEach((item, index) => {
                const row = document.createElement('tr');
                row.innerHTML = `
                    <td>${item.name}</td>
                    <td>$${item.price.toFixed(2)}</td>
                    <td><button onclick="removeItem(${index})">Remove</button></td>
                `;
                cartItemsList.appendChild(row);
                totalPrice += item.price;
            });

            totalPriceElement.textContent = `Total: $${totalPrice.toFixed(2)}`;
        }

        function removeItem(index) {
            const cart = JSON.parse(localStorage.getItem('cart')) || [];
            cart.splice(index, 1);
            localStorage.setItem('cart', JSON.stringify(cart));
            updateCart();
        }

        document.querySelectorAll('input[name="paymentMethod"]').forEach((input) => {
            input.addEventListener('change', togglePaymentFields);
        });

        function togglePaymentFields() {
            const selectedMethod = document.querySelector('input[name="paymentMethod"]:checked').value;
            document.getElementById('cardPaymentFields').style.display = selectedMethod === 'card' ? 'block' : 'none';
            document.getElementById('upiPaymentField').style.display = selectedMethod === 'upi' ? 'block' : 'none';
            
            if (selectedMethod === 'cod') {
                alert("You've selected Cash on Delivery. Please ensure payment on delivery.");
            }
        }

        function processPayment(event) {
            event.preventDefault();
            const paymentMethod = document.querySelector('input[name="paymentMethod"]:checked').value;

            if (paymentMethod === 'cod') {
                alert("Order placed successfully! Please keep cash ready for payment on delivery.");
            } else if (paymentMethod === 'upi') {
                const upiId = document.getElementById('upi').value;
                alert(`Payment processed successfully with UPI ID: ${upiId}`);
            } else {
                const cardNumber = document.getElementById('cardNumber').value;
                alert(`Payment processed successfully with card ending in ${cardNumber.slice(-4)}`);
            }
        }

        updateCart();
    </script>
</body>
</html>

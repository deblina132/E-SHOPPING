<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Grocery Collection</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            background-image: url('women gif.gif');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            margin: 0;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        h1 {
            color: #333;
            margin-bottom: 30px;
        }

        .items-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            gap: 20px;
            width: 100%;
            max-width: 1000px;
        }

        .item-card {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            overflow: hidden;
            text-align: center;
            transition: transform 0.2s;
        }

        .item-card:hover {
            transform: scale(1.05);
        }

        .item-image {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .item-details {
            padding: 15px;
        }

        .item-name {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 10px;
            color: #333;
        }

        .item-price {
            font-size: 16px;
            color: #4CAF50;
            font-weight: bold;
            margin-bottom: 15px;
        }

        .buy-now-btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.2s;
            cursor: pointer;
        }

        .buy-now-btn:hover {
            background-color: #45a049;
        }

        .cart-icon {
            position: fixed;
            top: 20px;
            right: 20px;
            background-color: #f39c12;
            color: white;
            padding: 15px;
            border-radius: 50%;
            font-size: 18px;
            cursor: pointer;
        }

        .cart-btn {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #f39c12;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .cart-btn:hover {
            background-color: #e67e22;
        }

        .cart-items {
            margin-top: 30px;
            background-color: #fff;
            padding: 15px;
            width: 300px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <h1>Grocery Collection</h1>

    <!-- Cart Icon -->
    <div id="cart-icon" class="cart-icon" onclick="viewCart()">
        Cart (<span id="cart-count">0</span>)
    </div>

    <!-- Items grid -->
    <div class="items-grid">
        <!-- Sample item card -->
        <div class="item-card">
            <img src="rice.jpeg" alt="Casual Dress" class="item-image">
            <div class="item-details">
                <p class="item-name">rice </p>
                <p class="item-price">&#8377;96</p>
                <button class="buy-now-btn" onclick="addToCart('Casual Dress', '&#8377;629')">Buy Now</button>
            </div>
        </div>

        <div class="item-card">
            <img src="women formal.jpeg" alt="Formal Dress" class="item-image">
            <div class="item-details">
                <p class="item-name">Formal Dress</p>
                <p class="item-price">&#8377;1599</p>
                <button class="buy-now-btn" onclick="addToCart('Formal Dress', '&#8377;1599')">Buy Now</button>
            </div>
        </div>

        <div class="item-card">
            <img src="women shoes.jpeg" alt="Women Shoes" class="item-image">
            <div class="item-details">
                <p class="item-name">Women Shoes</p>
                <p class="item-price">&#8377;745</p>
                <button class="buy-now-btn" onclick="addToCart('Women Shoes', '&#8377;745')">Buy Now</button>
            </div>
        </div>

        <div class="item-card">
            <img src="women handbag.jpeg" alt="Handbag" class="item-image">
            <div class="item-details">
                <p class="item-name">Handbag</p>
                <p class="item-price">&#8377;999</p>
                <button class="buy-now-btn" onclick="addToCart('Handbag', '&#8377;999')">Buy Now</button>
            </div>
        </div>

        <!-- Additional items -->
        <div class="item-card">
            <img src="women jacket.jpeg" alt="Women Jacket" class="item-image">
            <div class="item-details">
                <p class="item-name">Women Jacket</p>
                <p class="item-price">&#8377;3216</p>
                <button class="buy-now-btn" onclick="addToCart('Women Jacket', '&#8377;3216')">Buy Now</button>
            </div>
        </div>

        <div class="item-card">
            <img src="women sunglasses.jpeg" alt="Sunglasses" class="item-image">
            <div class="item-details">
                <p class="item-name">Sunglasses</p>
                <p class="item-price">&#8377;589</p>
                <button class="buy-now-btn" onclick="addToCart('Sunglasses', '&#8377;589')">Buy Now</button>
            </div>
        </div>

        <div class="item-card">
            <img src="Ethnic dress.jpeg" alt="Ethnic dresses" class="item-image">
            <div class="item-details">
                <p class="item-name">Ethnic dresses</p>
                <p class="item-price">&#8377;1244</p>
                <button class="buy-now-btn" onclick="addToCart('Ethnic dresses', '&#8377;1244')">Buy Now</button>
            </div>
        </div>

        <div class="item-card">
            <img src="SweatShirts.jpeg" alt="SweatShirts" class="item-image">
            <div class="item-details">
                <p class="item-name">SweatShirts</p>
                <p class="item-price">&#8377;899</p>
                <button class="buy-now-btn" onclick="addToCart('SweatShirts', '&#8377;899')">Buy Now</button>
            </div>
        </div>
    </div>

    <!-- Cart Button to view cart items -->
    <a href="#" class="cart-btn" onclick="viewCart()">View Cart</a>

    <!-- Cart display -->
    <div id="cart" class="cart-items" style="display: none;">
        <h3>Cart Items</h3>
        <ul id="cart-list"></ul>
        <button onclick="clearCart()">Clear Cart</button>
    </div>

    <script>
        function addToCart(itemName, itemPrice) {
            let cart = JSON.parse(localStorage.getItem('cart')) || [];
            cart.push({ name: itemName, price: itemPrice });
            localStorage.setItem('cart', JSON.stringify(cart));
            updateCartIcon();
        }

        function updateCartIcon() {
            const cart = JSON.parse(localStorage.getItem('cart')) || [];
            document.getElementById('cart-count').textContent = cart.length;
        }

        function viewCart() {
            const cartList = document.getElementById('cart-list');
            cartList.innerHTML = '';
            const cart = JSON.parse(localStorage.getItem('cart')) || [];
            if (cart.length === 0) {
                cartList.innerHTML = '<li>Your cart is empty!</li>';
            } else {
                cart.forEach(item => {
                    const li = document.createElement('li');
                    li.textContent = `${item.name} - ${item.price}`;
                    cartList.appendChild(li);
                });
            }
            document.getElementById('cart').style.display = 'block';
        }

        function clearCart() {
            localStorage.removeItem('cart');
            updateCartIcon();
            viewCart();
        }

        window.onload = function() {
            updateCartIcon();
        }
    </script>
</body>
</html>

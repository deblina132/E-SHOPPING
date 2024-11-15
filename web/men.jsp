<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Men's Collection</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            background-image: url('Web Banner men.jpeg'); /* Add your background image URL here */
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

        /* Cart Icon Styling */
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
    <h1>Men's Collection</h1>

    <!-- Cart Icon -->
    <div id="cart-icon" class="cart-icon" onclick="viewCart()">
        Cart (<span id="cart-count">0</span>)
    </div>

    <!-- Items grid -->
    <div class="items-grid">
        <div class="item-card">
            <img src="men casual shirt.jpeg" alt="Casual Shirt" class="item-image">
            <div class="item-details">
                <p class="item-name">Casual Shirt</p>
                <p class="item-price">&#8377;729</p>
                <button class="buy-now-btn" onclick="addToCart('Casual Shirt', '&#8377;729')">Buy Now</button>
            </div>
        </div>

        <div class="item-card">
            <img src="formal shirt.jpeg" alt="Formal Shirt" class="item-image">
            <div class="item-details">
                <p class="item-name">Formal Shirt</p>
                <p class="item-price">&#8377;1239</p>
                <button class="buy-now-btn" onclick="addToCart('Formal Shirt', '&#8377;1239')">Buy Now</button>
            </div>
        </div>

        <div class="item-card">
            <img src="jeans.jpeg" alt="Blue Jeans" class="item-image">
            <div class="item-details">
                <p class="item-name">Blue Jeans</p>
                <p class="item-price">&#8377;849</p>
                <button class="buy-now-btn" onclick="addToCart('Blue Jeans', '&#8377;849')">Buy Now</button>
            </div>
        </div>

        <div class="item-card">
            <img src="leather jacket.jpeg" alt="Leather Jacket" class="item-image">
            <div class="item-details">
                <p class="item-name">Leather Jacket</p>
                <p class="item-price">&#8377;3258</p>
                <button class="buy-now-btn" onclick="addToCart('Leather Jacket', '&#8377;3258')">Buy Now</button>
            </div>
        </div>

        <!-- Additional items -->
        <div class="item-card">
            <img src="shoes men.jpeg" alt="Men Shoes" class="item-image">
            <div class="item-details">
                <p class="item-name">Men's Shoes</p>
                <p class="item-price">&#8377;9676</p>
                <button class="buy-now-btn" onclick="addToCart('Men\'s Shoes', '&#8377;9676')">Buy Now</button>
            </div>
        </div>

        <div class="item-card">
            <img src="men watch.jpeg" alt="Men Watch" class="item-image">
            <div class="item-details">
                <p class="item-name">Men's Watch</p>
                <p class="item-price">&#8377;8589</p>
                <button class="buy-now-btn" onclick="addToCart('Men\'s Watch', '&#8377;8589')">Buy Now</button>
            </div>
        </div>
        
        <div class="item-card">
            <img src="Perfume men.jpeg" alt="Men perfume" class="item-image">
            <div class="item-details">
                <p class="item-name">Men's Perfume</p>
                <p class="item-price">&#8377;589</p>
                <button class="buy-now-btn" onclick="addToCart('Men\'s Perfume', '&#8377;589')">Buy Now</button>
            </div>
        </div>
        
         <div class="item-card">
            <img src="face wash men.jpeg" alt="Men face wash" class="item-image">
            <div class="item-details">
                <p class="item-name">Men's face wash</p>
                <p class="item-price">&#8377;189</p>
                <button class="buy-now-btn" onclick="addToCart('Men\'s Perfume', '&#8377;189')">Buy Now</button>
            </div>
        </div>
    </div>

    <!-- Cart Button to view cart items -->
    <a href="#" class="cart-btn" onclick="viewCart()">View Cart</a>

    <!-- Cart display -->
    <div id="cart" class="cart-items" style="display: none;">
        <h3>Cart Items</h3>
        <ul id="cart-list">
            <!-- Cart items will be displayed here -->
        </ul>
    </div>

    <script>
        // Function to add an item to the cart
        function addToCart(itemName, itemPrice) {
            // Get the current cart from localStorage
            let cart = JSON.parse(localStorage.getItem('cart')) || [];

            // Add the new item to the cart
            cart.push({ name: itemName, price: itemPrice });

            // Save the updated cart back to localStorage
            localStorage.setItem('cart', JSON.stringify(cart));

            // Update cart icon with the new number of items
            updateCartIcon();
        }

        // Function to update the cart icon with the number of items
        function updateCartIcon() {
            const cart = JSON.parse(localStorage.getItem('cart')) || [];
            const cartCount = cart.length;
            document.getElementById('cart-count').textContent = cartCount;
        }

        // Function to view the cart
        function viewCart() {
            const cart = JSON.parse(localStorage.getItem('cart')) || [];
            const cartList = document.getElementById('cart-list');
            const cartDisplay = document.getElementById('cart');
            cartList.innerHTML = '';  // Clear the current list

            if (cart.length === 0) {
                cartList.innerHTML = '<li>Your cart is empty</li>';
            } else {
                cart.forEach(item => {
                    const li = document.createElement('li');
                    li.textContent = `${item.name} - ${item.price}`;
                    cartList.appendChild(li);
                });
            }

            // Toggle visibility of cart display
            cartDisplay.style.display = cartDisplay.style.display === 'none' ? 'block' : 'none';
        }

        // Initialize the cart icon on page load
        window.onload = function() {
            updateCartIcon();
        }
    </script>
</body>
</html>

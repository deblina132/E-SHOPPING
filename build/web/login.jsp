<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-Shopping Home</title>
    <style>
        /* Reset some default browser styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
        }

        /* Styling for the navigation bar with background image */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 40px;
            background-image: url('Background upper.gif'); /* Path to background image */
            background-size: cover;
            background-position: center;
            height: 150px;
        }

        .navbar ul {
            list-style: none;
            display: flex;
            align-items: center;
        }

        .navbar ul li {
            position: relative;
            margin: 0 20px;
            display: flex;
            align-items: center;
        }

        .navbar ul li img {
            width: 50px;
            height: 50px;
            margin-right: 8px;
        }

        .navbar ul li a {
            text-decoration: none;
            font-weight: bold;
            color: white;
        }

        /* Updated Logo GIF styling */
        .logo-gif {
            width: 150px;
            height: auto;
            margin-right: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        /* Settings Button styling */
        .settings-btn {
            padding: 10px 20px;
            font-size: 16px;
            background-color: transparent;
            border: 2px solid white;
            color: white;
            cursor: pointer;
            border-radius: 5px;
            font-weight: bold;
        }

        .settings-btn:hover {
            border-color: #45a049;
            color: #45a049;
        }

        /* Dropdown menu styling */
        .dropdown-content {
            display: none;
            position: absolute;
            top: 100%; /* Position the dropdown below the Categories link */
            background-color: #f9f9f9;
            min-width: 200px;
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
            z-index: 1;
            padding: 10px 0;
        }

        .dropdown-content a {
            color: black;
            padding: 10px 20px;
            text-decoration: none;
            display: block;
        }

        .dropdown-content a:hover {
            background-color: #ddd;
        }

        /* Show dropdown on hover */
        .navbar ul li:hover .dropdown-content {
            display: block;
        }

        /* Main section style with GIF background */
        .main {
            position: relative;
            height: 80vh;
            background-image: url('GIF SHOPPING.gif'); /* Path to background GIF */
            background-size: cover;
            background-position: center;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            color: black;
            text-align: center;
        }

        /* Style for the search bar */
        .search-bar {
            margin-bottom: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .search-bar input[type="text"] {
            padding: 10px;
            width: 300px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px 0 0 5px;
            outline: none;
        }

        .search-bar button {
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
            border-radius: 0 5px 5px 0;
        }

        .search-bar button:hover {
            background-color: #45a049;
        }

        /* Register button with margin */
        .register-btn {
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            background-color: #FF5722;
            color: white;
            cursor: pointer;
            border-radius: 5px;
            margin-left: 20px; /* Add space between search and register buttons */
        }

        .register-btn:hover {
            background-color: #E64A19;
        }

        /* Footer section */
        .footer {
            padding: 20px;
            text-align: center;
            background-color: #f1f1f1;
            font-size: 14px;
            color: #666;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar">
        <div class="logo">
            <img src="E-SHOPLOGO.gif" alt="E-Shopping Logo" class="logo-gif">
        </div>
        <ul>
            <li><a href="loginfrom.jsp"><img src="login final.gif" alt="Login Icon">Login</a></li>
            <li><a href="cart.jsp"><img src="cart.gif" alt="Cart Icon">Cart</a></li>
            <li><a href="men.jsp"><img src="Hi.gif" alt="Men Icon">Men</a></li>
            <li><a href="women.jsp"><img src="women shopping.gif" alt="Women Icon">Women</a></li>
            <li><a href="newarrivals.jsp"><img src="New arrival.gif" alt="New Arrivals Icon">New Arrivals</a></li>

            <!-- Categories Dropdown -->
            <li>
                <a href="categories.jsp"><img src="Categories.gif" alt="Categories Icon">Categories</a>
                <div class="dropdown-content">
                    <a href="grocery.jsp">Grocery</a>
                    <a href="fashion.jsp">Fashion</a>
                    <a href="appliances.jsp">Appliances</a>
                    <a href="mobiles.jsp">Mobiles</a>
                    <a href="electronics.jsp">Electronics</a>
                    <a href="smartgadgets.jsp">Smart Gadgets</a>
                    <a href="home.jsp">Home</a>
                    <a href="beauty.jsp">Beauty & Personality</a>
                    <a href="toyskids.jsp">Toys & Kids</a>
                    <a href="foodhealthcare.jsp">Food & Healthcare</a>
                    <a href="sports.jsp">Sports Hub</a>
                    <a href="furniture.jsp">Furniture</a>
                </div>
            </li>
            <li><a href="stores.jsp"><img src="STORE.gif" alt="Stores Icon">Stores</a></li>
        </ul>
        <!-- Settings Button -->
        <button class="settings-btn">Settings</button>
    </nav>

    <!-- Main section with search bar -->
    <section class="main">
        <div class="search-bar">
            <input type="text" id="search-bar" placeholder="Search for products...">
            <button type="button" onclick="searchProduct()">Search</button>
            <a href="register.jsp">
                <button class="register-btn">Register Yourself</button>
            </a>
        </div>
    </section>
    
    <!-- Footer -->
    <footer class="footer">
        <p>&copy; 2024 E-Shopping Website | Designed by DEBLINA CHOUBAY</p>
    </footer>

    <script>
        function searchProduct() {
            var searchQuery = document.getElementById('search-bar').value.toLowerCase();

            // Check if the search term is "men collection"
            if (searchQuery.includes('men collection')) {
                // Redirect to the men collection page (men.jsp)
                window.location.href = 'men.jsp';
            } else {
                // Handle case where no matching product is found
                alert('No matching products found!');
            }
        }
        function searchProduct() {
            var searchQuery = document.getElementById('search-bar').value.toLowerCase();

            // Check if the search term is "men collection"
            if (searchQuery.includes('women collection')) {
                // Redirect to the men collection page (men.jsp)
                window.location.href = 'women.jsp';
            } else {
                // Handle case where no matching product is found
                alert('No matching products found!');
            }
        }
    </script>
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stores - E-Shopping</title>
    <style>
        /* Basic reset and body styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px;
            background-color: #333;
            color: white;
        }

        .navbar ul {
            list-style: none;
            display: flex;
            align-items: center;
        }

        .navbar ul li {
            margin: 0 20px;
        }

        .navbar ul li a {
            color: white;
            text-decoration: none;
            font-weight: bold;
        }

        /* Poster and offers section */
        .offers-section {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: space-between;
            margin-top: 20px;
        }

        .offer-card {
            width: 30%;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        .offer-card img {
            width: 100%;
            height: auto;
            object-fit: cover;
        }

        .offer-card .content {
            padding: 20px;
            text-align: center;
        }

        .offer-card .content h3 {
            font-size: 24px;
            color: #333;
        }

        .offer-card .content p {
            font-size: 16px;
            color: #666;
            margin: 10px 0;
        }

        .offer-card .content button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        .offer-card .content button:hover {
            background-color: #45a049;
        }

        /* Footer section */
        .footer {
            padding: 20px;
            text-align: center;
            background-color: #333;
            color: white;
            margin-top: 20px;
        }
    </style>
</head>
<body>

    <!-- Offers and Store Section -->
    <div class="offers-section">
        <!-- Offer 1 -->
        <div class="offer-card">
            <img src="offer1.jpg" alt="Special Offer 1">
            <div class="content">
                <h3>Summer Collection</h3>
                <p>Get up to 50% off on all summer dresses.</p>
                <button onclick="window.location.href='buy_now_page.jsp'">Buy Now</button>
            </div>
        </div>
        
        <!-- Offer 2 -->
        <div class="offer-card">
            <img src="offer2.jpg" alt="Special Offer 2">
            <div class="content">
                <h3>Exclusive Offer on Dresses</h3>
                <p>Latest collection of dresses at discounted prices.</p>
                <button onclick="window.location.href='buy_now_page.jsp'">Buy Now</button>
            </div>
        </div>

        <!-- Offer 3 -->
        <div class="offer-card">
            <img src="offer3.jpg" alt="Special Offer 3">
            <div class="content">
                <h3>Clearance Sale</h3>
                <p>Up to 70% off on selected items. Don't miss out!</p>
                <button onclick="window.location.href='buy_now_page.jsp'">Buy Now</button>
            </div>
        </div>
    </div>
</body>
</html>

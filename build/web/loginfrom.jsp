<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Animated Login Page</title>
    <style>
        body, html {
            height: 100%;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Arial', sans-serif;
            background-color: #eaf4fc;
        }

        .container {
            text-align: center;
            background: white;
            padding: 20px 40px;
            border-radius: 10px;
            box-shadow: 0 10px 15px rgba(0, 0, 0, 0.1);
            position: relative;
        }

        .container h2 {
            margin-bottom: 20px;
            font-weight: normal;
        }

        .container img {
            width: 100px;
            height: 100px;
            margin-bottom: 20px;
        }

        .input-group {
            margin: 15px 0;
        }

        .input-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            margin-top: 5px;
        }

        .button {
            width: 100%;
            padding: 10px;
            background-color: #3b3b3b;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        .button:hover {
            background-color: #262626;
        }

        .forgot-password {
            margin-top: 15px;
            display: block;
            text-decoration: none;
            color: #3b3b3b;
        }

        /* Character Animation */
        .container img {
            animation: wave 2s infinite ease-in-out;
        }

        @keyframes wave {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-10px); }
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Replace with your own character image URL -->
        <img src="login anotherpage.gif" alt="Login Logo" class="logo-gif">
        <h2>Welcome Back!</h2>
        <form onsubmit="handleLogin(event)">
            <div class="input-group">
                <input type="text" name="username" placeholder="Username" required>
            </div>
            <div class="input-group">
                <input type="password" name="password" placeholder="Password" required>
            </div>
            <button type="submit" class="button">Login</button>
            <a href="#" class="forgot-password" onclick="forgotPassword()">Forgot Password?</a>
        </form>
    </div>

    <script>
        // Function to handle the login button
        function handleLogin(event) {
            event.preventDefault(); // Prevent actual form submission
            alert("Login button pressed!");
        }

        // Function to handle the 'Forgot Password' link
        function forgotPassword() {
            alert("Forgot Password link clicked!");
        }
    </script>
</body>
</html>

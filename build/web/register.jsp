<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
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

        form {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 400px;
        }

        label {
            font-size: 14px;
            font-weight: bold;
            margin-bottom: 6px;
            display: block;
            color: #333;
        }

        input[type="text"], input[type="password"], select {
            width: 100%;
            padding: 10px;
            margin: 10px 0 20px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="submit"], input[type="reset"] {
            width: 48%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        input[type="submit"]:hover, input[type="reset"]:hover {
            background-color: #45a049;
        }

        .form-actions {
            display: flex;
            justify-content: space-between;
        }

        .login-link {
            margin-top: 20px;
            text-align: center;
            font-size: 14px;
        }

        .login-link a {
            color: #4CAF50;
            text-decoration: none;
        }

        .login-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <h1>WELCOME To e-shopping REGISTRATION PROCESS</h1>

    <form method="post" action="registerservlet">
        <label for="email">Email-id:</label>
        <input type="text" id="email" name="email" required> <br>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required> <br>

        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required> <br>
        
        <div class="form-actions">
            <input type="submit" value="Submit">
            <input type="reset" value="Reset">
        </div>
    </form>

    <div class="login-link">
        Already have an account? <a href="login.jsp">Login</a>
    </div>

</body>
</html>

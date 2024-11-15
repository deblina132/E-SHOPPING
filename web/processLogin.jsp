<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-Shopping - Login Result</title>
</head>
<body>

<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    // Example: Dummy check for demonstration
    if (email.equals("user@example.com") && password.equals("password")) {
        session.setAttribute("userEmail", email); // Store email in session
        out.println("<h2>Welcome, " + email + "!</h2>");
        response.sendRedirect("home.jsp"); // Redirect to home page or dashboard
    } else {
        out.println("<h2 class='error'>Invalid email or password!</h2>");
        out.println("<a href='loginForm.jsp'>Try Again</a>");
    }
%>

</body>
</html>

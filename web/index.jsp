<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*, java.sql.*" %>
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

    // Dummy check for demonstration
    if (email.equals("user@example.com") && password.equals("password")) {
        out.println("<h2>Welcome, " + email + "!</h2>");
        // Redirect to home page or dashboard
        response.sendRedirect("home.jsp");
    } else {
        out.println("<h2>Invalid email or password!</h2>");
        out.println("<a href='login.jsp'>Try Again</a>");
    }
%>

</body>
</html>

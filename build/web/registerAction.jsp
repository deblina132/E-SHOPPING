<%@ page import="java.sql.*, java.io.*" %>
<%
    String username = request.getParameter("username");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String confirmPassword = request.getParameter("confirmPassword");

    if (password.equals(confirmPassword)) {
        try {
            // Load JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/your_database", "username", "password");

            // Prepare and execute SQL query
            String sql = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, username);
            stmt.setString(2, email);
            stmt.setString(3, password);
            int result = stmt.executeUpdate();

            if (result > 0) {
                out.println("Registration successful!");
            } else {
                out.println("Error in registration.");
            }

            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            out.println("An error occurred while registering.");
        }
    } else {
        out.println("Passwords do not match.");
    }
%>

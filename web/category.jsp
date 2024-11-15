<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Products</title>
</head>
<body>
    <h2>Products in <%= request.getParameter("cat") %> Category</h2>
    <ul>
        <% 
        String category = request.getParameter("cat");
        try {
            // Connect to database and fetch products
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/eshop", "root", "password");
            String query = "SELECT * FROM products WHERE category = ?";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, category);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
        %>
            <li><%= rs.getString("name") %> - $<%= rs.getDouble("price") %></li>
        <% 
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        %>
    </ul>
</body>
</html>

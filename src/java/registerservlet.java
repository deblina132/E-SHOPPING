import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class registerservlet extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        res.setContentType("text/html");
        PrintWriter pw1 = res.getWriter();

        // Retrieve form data
        String eid = req.getParameter("email");
        String pass = req.getParameter("password");
        String name = req.getParameter("name");

        Connection con = null;
        PreparedStatement ps = null;

        try {
            // Load the Oracle JDBC Driver
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "manager");

            // SQL query for insertion
            String q1 = "INSERT INTO Customer_info (email, password, name) VALUES (?, ?, ?)";

            ps = con.prepareStatement(q1);
            ps.setString(1, eid);
            ps.setString(2, pass);
            ps.setString(3, name);

            int x = ps.executeUpdate();
            if (x > 0) {
                // Success page with centered message and background GIF
                pw1.println("<html><head><title>Registration Success</title>");
                pw1.println("<style>");
                pw1.println("body, html { margin: 0; padding: 0; height: 100%; display: flex; align-items: center; justify-content: center; font-family: Arial, sans-serif; background: url('images/success.gif') no-repeat center center fixed; background-size: cover; }");
                pw1.println(".message-container { background: rgba(255, 255, 255, 0.8); padding: 30px; border-radius: 8px; box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.3); text-align: center; }");
                pw1.println("h2 { color: #333; margin-bottom: 20px; }");
                pw1.println("a { display: inline-block; margin-top: 15px; text-decoration: none; color: #3b3b3b; padding: 10px 20px; background-color: #4CAF50; color: white; border-radius: 5px; }");
                pw1.println("a:hover { background-color: #45a049; }");
                pw1.println("</style></head>");
                
                pw1.println("<body>");
                pw1.println("<div class='message-container'>");
                pw1.println("<h2>Registration successful!</h2>");
                pw1.println("<a href='login.jsp'>Go to Login Page</a>");
                pw1.println("</div>");
                pw1.println("</body></html>");
            } else {
                pw1.println("<html><body>");
                pw1.println("<h2>Registration unsuccessful. Please try again.</h2>");
                pw1.println("</body></html>");
            }
        } catch (SQLException | ClassNotFoundException e) {
            pw1.println("<html><body>");
            pw1.println("<h2>Error: " + e.getMessage() + "</h2>");
            pw1.println("</body></html>");
        } finally {
            try {
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (SQLException se) {
                pw1.println("<html><body>");
                pw1.println("<h2>Error closing resources: " + se.getMessage() + "</h2>");
                pw1.println("</body></html>");
            }
        }
    }
}

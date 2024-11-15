package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class loginfrom_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>Animated Login Page</title>\n");
      out.write("    <style>\n");
      out.write("        body, html {\n");
      out.write("            height: 100%;\n");
      out.write("            margin: 0;\n");
      out.write("            display: flex;\n");
      out.write("            justify-content: center;\n");
      out.write("            align-items: center;\n");
      out.write("            font-family: 'Arial', sans-serif;\n");
      out.write("            background-color: #eaf4fc;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .container {\n");
      out.write("            text-align: center;\n");
      out.write("            background: white;\n");
      out.write("            padding: 20px 40px;\n");
      out.write("            border-radius: 10px;\n");
      out.write("            box-shadow: 0 10px 15px rgba(0, 0, 0, 0.1);\n");
      out.write("            position: relative;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .container h2 {\n");
      out.write("            margin-bottom: 20px;\n");
      out.write("            font-weight: normal;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .container img {\n");
      out.write("            width: 100px;\n");
      out.write("            height: 100px;\n");
      out.write("            margin-bottom: 20px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .input-group {\n");
      out.write("            margin: 15px 0;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .input-group input {\n");
      out.write("            width: 100%;\n");
      out.write("            padding: 10px;\n");
      out.write("            border: 1px solid #ddd;\n");
      out.write("            border-radius: 5px;\n");
      out.write("            margin-top: 5px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .button {\n");
      out.write("            width: 100%;\n");
      out.write("            padding: 10px;\n");
      out.write("            background-color: #3b3b3b;\n");
      out.write("            color: #fff;\n");
      out.write("            border: none;\n");
      out.write("            border-radius: 5px;\n");
      out.write("            cursor: pointer;\n");
      out.write("            font-size: 16px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .button:hover {\n");
      out.write("            background-color: #262626;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .forgot-password {\n");
      out.write("            margin-top: 15px;\n");
      out.write("            display: block;\n");
      out.write("            text-decoration: none;\n");
      out.write("            color: #3b3b3b;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        /* Character Animation */\n");
      out.write("        .container img {\n");
      out.write("            animation: wave 2s infinite ease-in-out;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        @keyframes wave {\n");
      out.write("            0%, 100% { transform: translateY(0); }\n");
      out.write("            50% { transform: translateY(-10px); }\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <!-- Replace with your own character image URL -->\n");
      out.write("        <img src=\"login anotherpage.gif\" alt=\"Login Logo\" class=\"logo-gif\">\n");
      out.write("        <h2>Welcome Back!</h2>\n");
      out.write("        <form onsubmit=\"handleLogin(event)\">\n");
      out.write("            <div class=\"input-group\">\n");
      out.write("                <input type=\"text\" name=\"username\" placeholder=\"Username\" required>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"input-group\">\n");
      out.write("                <input type=\"password\" name=\"password\" placeholder=\"Password\" required>\n");
      out.write("            </div>\n");
      out.write("            <button type=\"submit\" class=\"button\">Login</button>\n");
      out.write("            <a href=\"#\" class=\"forgot-password\" onclick=\"forgotPassword()\">Forgot Password?</a>\n");
      out.write("        </form>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <script>\n");
      out.write("        // Function to handle the login button\n");
      out.write("        function handleLogin(event) {\n");
      out.write("            event.preventDefault(); // Prevent actual form submission\n");
      out.write("            alert(\"Login button pressed!\");\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        // Function to handle the 'Forgot Password' link\n");
      out.write("        function forgotPassword() {\n");
      out.write("            alert(\"Forgot Password link clicked!\");\n");
      out.write("        }\n");
      out.write("    </script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

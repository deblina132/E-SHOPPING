package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <title>E-Shopping Register</title>\n");
      out.write("    <style>\n");
      out.write("        /* Add your styles here */\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <!-- Registration Form -->\n");
      out.write("    <form action=\"RegisterServlet\" method=\"POST\">\n");
      out.write("        <h2>Register</h2>\n");
      out.write("        <label for=\"username\">Username:</label>\n");
      out.write("        <input type=\"text\" name=\"username\" id=\"username\" required><br><br>\n");
      out.write("        \n");
      out.write("        <label for=\"email\">Email:</label>\n");
      out.write("        <input type=\"email\" name=\"email\" id=\"email\" required><br><br>\n");
      out.write("        \n");
      out.write("        <label for=\"password\">Password:</label>\n");
      out.write("        <input type=\"password\" name=\"password\" id=\"password\" required><br><br>\n");
      out.write("        \n");
      out.write("        <label for=\"confirmPassword\">Confirm Password:</label>\n");
      out.write("        <input type=\"password\" name=\"confirmPassword\" id=\"confirmPassword\" required><br><br>\n");
      out.write("        \n");
      out.write("        <button type=\"submit\">Register</button>\n");
      out.write("    </form>\n");
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

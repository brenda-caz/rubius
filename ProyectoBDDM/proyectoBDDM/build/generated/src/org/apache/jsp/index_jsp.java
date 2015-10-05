package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\r\n");
      out.write("<!--\r\n");
      out.write("To change this license header, choose License Headers in Project Properties.\r\n");
      out.write("To change this template file, choose Tools | Templates\r\n");
      out.write("and open the template in the editor.\r\n");
      out.write("-->\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>proyecto BDDM</title>\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <link href=\"Css/css.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    </head>\r\n");
      out.write("\r\n");
      out.write("    <body>\r\n");
      out.write("       \r\n");
      out.write("        <div class=\"modal\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <div class=\"w-container container\">\r\n");
      out.write("                    <h1 class=\"logo\">Happy ShopShop</h1>\r\n");
      out.write("                    <p class=\"subtitle\">El mundo en tus manos</p>\r\n");
      out.write("                    <div class=\"w-clearfix join-wrapper\">\r\n");
      out.write("                        <div class=\"beta-line\"></div>\r\n");
      out.write("                        <p class=\"join\">¡BIENVENIDOS!</p>\r\n");
      out.write("                        <div class=\"beta-line\"></div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <form method=\"post\">\r\n");
      out.write("                    <div class=\"containerb\">\r\n");
      out.write("                        <input name=\"email\" type=\"text\" placeholder=\"Correo Electronico\">\r\n");
      out.write("                        <input name=\"password\" type=\"password\" placeholder=\"Contraseña\">\r\n");
      out.write("                        <input id=\"login-button\" type=\"submit\" value=\"Entrar\"/>\r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                </form>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div> \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
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

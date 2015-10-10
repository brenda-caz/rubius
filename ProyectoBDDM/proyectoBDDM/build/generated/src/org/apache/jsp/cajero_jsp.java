package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class cajero_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>Happy ShopShop </title>\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        \r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("        <link href=\"Css/otroEstilo.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("       \r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div style=\"\r\n");
      out.write("    \r\n");
      out.write("    width: 950px;\r\n");
      out.write("    position: relative;\r\n");
      out.write("    float: left;\r\n");
      out.write("\r\n");
      out.write("\">\r\n");
      out.write("         <div id=\"menu\" class=\"menuCaja\">\r\n");
      out.write("<ul>\r\n");
      out.write("  <li class=\"nivel1\"><a href=\"#\" class=\"nivel1\"></a>\r\n");
      out.write("\r\n");
      out.write("\t<ul>\r\n");
      out.write("\t\t <li>  <a href=\"index.jsp\" align=\"left\">Cerrar Sesión</a></li>\r\n");
      out.write("\t</ul>\r\n");
      out.write("\r\n");
      out.write("  </li>\r\n");
      out.write("</ul>\r\n");
      out.write("</div>\r\n");
      out.write("        <img id=\"logito\"align=\"left\" title=\"Logo Happy ShopShop\"  alt=\"Logo Happy ShopShop\" src = \"Css/logoHappy.png\"/>\r\n");
      out.write("        <img id=\"corpo1\" align=\"rigth\" title=\"Imagen Corporativa\" style=\"\r\n");
      out.write("    position: relative;\r\n");
      out.write("    left: 175px;\r\n");
      out.write("\" alt=\"Imagen Corporativa\" src = \"Css/corporativo2.jpg\"/> <br><br>\r\n");
      out.write(" \r\n");
      out.write("        \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        \r\n");
      out.write("         <div clas=\"TICKET\">  \r\n");
      out.write("          \r\n");
      out.write("         <fieldset class=\"fieldset\" id=\"fiTicket\">\r\n");
      out.write("             <legend align=\"left\">Productos</legend>\r\n");
      out.write("        <table  border=\"2\" align=\"left\" id=\"Products\">\r\n");
      out.write("     \r\n");
      out.write("  <tr>\r\n");
      out.write("    <th scope=\"col\">CODIGO</th>\r\n");
      out.write("    <th scope=\"col\">DESCRIPCION</th>\r\n");
      out.write("    <th scope=\"col\">CANTIDAD</th>\r\n");
      out.write("    <th scope=\"col\">SUBTOTAL</th>\r\n");
      out.write("     <th scope=\"col\">TOTAL</th>\r\n");
      out.write("    <th scope=\"col\">BORRAR</th>\r\n");
      out.write("  </tr>\r\n");
      out.write(" \r\n");
      out.write("  <tr>\r\n");
      out.write("    <td>1234</td>\r\n");
      out.write("    <td>Ipad Mini</td>\r\n");
      out.write("    <td>1</td>\r\n");
      out.write("    <td>192.02</td>\r\n");
      out.write("    <td>192.02</td>\r\n");
      out.write("  </tr>\r\n");
      out.write(" \r\n");
      out.write("  <tr>\r\n");
      out.write("    <td>5467</td>\r\n");
      out.write("    <td>LG L90</td>\r\n");
      out.write("    <td>3</td>\r\n");
      out.write("    <td>500.00</td>\r\n");
      out.write("    <td>1500.00</td>\r\n");
      out.write("  </tr>\r\n");
      out.write(" \r\n");
      out.write("  <tr>\r\n");
      out.write("      <td>9578</td>\r\n");
      out.write("    <td>Laptop HP</td>\r\n");
      out.write("    <td>2</td>\r\n");
      out.write("    <td>3,000.00</td>\r\n");
      out.write("    <td>6,000.00</td>\r\n");
      out.write("  </tr>\r\n");
      out.write(" \r\n");
      out.write("  <tr>\r\n");
      out.write("    <th scope=\"row\">TOTAL</th>\r\n");
      out.write("    <td>-</td>\r\n");
      out.write("     <td>6</td>\r\n");
      out.write("    <td>-</td>\r\n");
      out.write("    <td><strong>7,692.51</strong></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("        </table>\r\n");
      out.write("             <div id=\"textoBuscar\">\r\n");
      out.write("                 <input id=\"txt\" class=\"Texto\" align=\"center\" type=\"text\" name=\"Buscar\" placeholder=\"Buscar Articulo\">\r\n");
      out.write("             </div>\r\n");
      out.write("        </fieldset>\r\n");
      out.write(" \r\n");
      out.write("              \r\n");
      out.write("            \r\n");
      out.write("    \r\n");
      out.write("         <div class=\"contentTotales\">\r\n");
      out.write("         <div class=\"clTotales\">\r\n");
      out.write("             <fieldset class=\"fieldset\" id=\"fiTotales\" align=\"left\">\r\n");
      out.write("              <img id=\"corpo1\" align=\"left\"  title=\"Imagen Corporativa\" alt=\"Imagen Corporativa\" src = \"Css/corporativa1.jpg\"/>\r\n");
      out.write("         <form id=\"formtotales\">\r\n");
      out.write("             &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Subtotal:  &nbsp;&nbsp;&nbsp;&nbsp;<input  id=\"txt\" align=\"center\" type=\"text\" name=\"subtotal\"><br><br>\r\n");
      out.write("             &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Descuento:&nbsp;&nbsp;&nbsp;&nbsp; <input id=\"txt\" type=\"text\" name=\"descuento\"><br><br>\r\n");
      out.write("  &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Impuesto Total: &nbsp;&nbsp;&nbsp;&nbsp; <input id=\"txt\" type=\"text\" name=\"descuento\">\r\n");
      out.write("</form>\r\n");
      out.write("              <h2 align=\"right\" class=\"Total\">TOTAL</h2>\r\n");
      out.write("              <h1 align=\"right\" class=numTotal\"\">23.01.13</h1>\r\n");
      out.write("         </fieldset>\r\n");
      out.write("         </div>\r\n");
      out.write("    \r\n");
      out.write("         </div>\r\n");
      out.write("    \r\n");
      out.write("                \r\n");
      out.write("         </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div style=\"\r\n");
      out.write(" \r\n");
      out.write("    position: relative;\r\n");
      out.write("    left: 950px;\r\n");
      out.write("    width: 100px;\r\n");
      out.write("\r\n");
      out.write("\">\r\n");
      out.write(" <div id=\"IMG\" style=\"\r\n");
      out.write("    width: 410px;\r\n");
      out.write("    height: 320px;\r\n");
      out.write("\r\n");
      out.write("    \">\r\n");
      out.write("            \r\n");
      out.write("        </div>\r\n");
      out.write("          <div id=\"VID\" style=\"\r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("    width: 410px;\r\n");
      out.write("    height: 320px;\r\n");
      out.write("    \"\r\n");
      out.write("    ><video src=\"Css/video1.mp4\" width=\"390px\" height=\"320px\"  autoplay muted loop ></video></div>\r\n");
      out.write("    </div>\r\n");
      out.write("    </body>\r\n");
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

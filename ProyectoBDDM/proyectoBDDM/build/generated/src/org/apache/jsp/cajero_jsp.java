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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Happy ShopShop </title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        \n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link href=\"Css/otroEstilo.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("       \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div style=\"\n");
      out.write("    \n");
      out.write("    width: 950px;\n");
      out.write("    position: relative;\n");
      out.write("    float: left;\n");
      out.write("\n");
      out.write("\">\n");
      out.write("         <div id=\"menu\" class=\"menuCaja\">\n");
      out.write("<ul>\n");
      out.write("  <li class=\"nivel1\"><a href=\"#\" class=\"nivel1\"></a>\n");
      out.write("\n");
      out.write("\t<ul>\n");
      out.write("\t\t <li>  <a href=\"index.jsp\" align=\"left\">Cerrar Sesión</a></li>\n");
      out.write("\t</ul>\n");
      out.write("\n");
      out.write("  </li>\n");
      out.write("</ul>\n");
      out.write("</div>\n");
      out.write("        <img id=\"logito\"align=\"left\" title=\"Logo Happy ShopShop\"  alt=\"Logo Happy ShopShop\" src = \"Css/logoHappy.png\"/>\n");
      out.write("        <img id=\"corpo1\" align=\"rigth\" title=\"Imagen Corporativa\" style=\"\n");
      out.write("    position: relative;\n");
      out.write("    left: 175px;\n");
      out.write("\" alt=\"Imagen Corporativa\" src = \"Css/corporativo2.jpg\"/> <br><br>\n");
      out.write(" \n");
      out.write("        \n");
      out.write("\n");
      out.write("\n");
      out.write("        \n");
      out.write("         <div clas=\"TICKET\">  \n");
      out.write("          \n");
      out.write("         <fieldset class=\"fieldset\" id=\"fiTicket\">\n");
      out.write("             <legend align=\"left\">Productos</legend>\n");
      out.write("        <table  border=\"2\" align=\"left\" id=\"Products\">\n");
      out.write("     \n");
      out.write("  <tr>\n");
      out.write("    <th scope=\"col\">CODIGO</th>\n");
      out.write("    <th scope=\"col\">DESCRIPCION</th>\n");
      out.write("    <th scope=\"col\">CANTIDAD</th>\n");
      out.write("    <th scope=\"col\">SUBTOTAL</th>\n");
      out.write("     <th scope=\"col\">TOTAL</th>\n");
      out.write("    <th scope=\"col\">BORRAR</th>\n");
      out.write("  </tr>\n");
      out.write(" \n");
      out.write("  <tr>\n");
      out.write("    <td>1234</td>\n");
      out.write("    <td>Ipad Mini</td>\n");
      out.write("    <td>1</td>\n");
      out.write("    <td>192.02</td>\n");
      out.write("    <td>192.02</td>\n");
      out.write("  </tr>\n");
      out.write(" \n");
      out.write("  <tr>\n");
      out.write("    <td>5467</td>\n");
      out.write("    <td>LG L90</td>\n");
      out.write("    <td>3</td>\n");
      out.write("    <td>500.00</td>\n");
      out.write("    <td>1500.00</td>\n");
      out.write("  </tr>\n");
      out.write(" \n");
      out.write("  <tr>\n");
      out.write("      <td>9578</td>\n");
      out.write("    <td>Laptop HP</td>\n");
      out.write("    <td>2</td>\n");
      out.write("    <td>3,000.00</td>\n");
      out.write("    <td>6,000.00</td>\n");
      out.write("  </tr>\n");
      out.write(" \n");
      out.write("  <tr>\n");
      out.write("    <th scope=\"row\">TOTAL</th>\n");
      out.write("    <td>-</td>\n");
      out.write("     <td>6</td>\n");
      out.write("    <td>-</td>\n");
      out.write("    <td><strong>7,692.51</strong></td>\n");
      out.write("  </tr>\n");
      out.write("        </table>\n");
      out.write("             <div id=\"textoBuscar\">\n");
      out.write("                 <input id=\"txt\" class=\"Texto\" align=\"center\" type=\"text\" name=\"Buscar\" placeholder=\"Buscar Articulo\">\n");
      out.write("             </div>\n");
      out.write("        </fieldset>\n");
      out.write(" \n");
      out.write("              \n");
      out.write("            \n");
      out.write("    \n");
      out.write("         <div class=\"contentTotales\">\n");
      out.write("         <div class=\"clTotales\">\n");
      out.write("             <fieldset class=\"fieldset\" id=\"fiTotales\" align=\"left\">\n");
      out.write("              <img id=\"corpo1\" align=\"left\"  title=\"Imagen Corporativa\" alt=\"Imagen Corporativa\" src = \"Css/corporativa1.jpg\"/>\n");
      out.write("         <form id=\"formtotales\">\n");
      out.write("             &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Subtotal:  &nbsp;&nbsp;&nbsp;&nbsp;<input  id=\"txt\" align=\"center\" type=\"text\" name=\"subtotal\"><br><br>\n");
      out.write("             &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Descuento:&nbsp;&nbsp;&nbsp;&nbsp; <input id=\"txt\" type=\"text\" name=\"descuento\"><br><br>\n");
      out.write("  &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Impuesto Total: &nbsp;&nbsp;&nbsp;&nbsp; <input id=\"txt\" type=\"text\" name=\"descuento\">\n");
      out.write("</form>\n");
      out.write("              <h2 align=\"right\" class=\"Total\">TOTAL</h2>\n");
      out.write("              <h1 align=\"right\" class=numTotal\"\">23.01.13</h1>\n");
      out.write("         </fieldset>\n");
      out.write("         </div>\n");
      out.write("    \n");
      out.write("         </div>\n");
      out.write("    \n");
      out.write("                \n");
      out.write("         </div>\n");
      out.write("        </div>\n");
      out.write("        <div style=\"\n");
      out.write(" \n");
      out.write("    position: relative;\n");
      out.write("    left: 950px;\n");
      out.write("    width: 100px;\n");
      out.write("\n");
      out.write("\">\n");
      out.write(" <div id=\"IMG\" style=\"\n");
      out.write("    width: 410px;\n");
      out.write("    height: 320px;\n");
      out.write("\n");
      out.write("    \">\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("          <div id=\"VID\" style=\"\n");
      out.write("    \n");
      out.write("\n");
      out.write("    width: 410px;\n");
      out.write("    height: 320px;\n");
      out.write("    \"\n");
      out.write("    ><video src=\"Css/video1.mp4\" width=\"390px\" height=\"320px\"  autoplay muted loop ></video></div>\n");
      out.write("    </div>\n");
      out.write("    </body>\n");
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

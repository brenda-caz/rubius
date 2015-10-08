package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class consultaArticulos_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>Articulos</title>\r\n");
      out.write("        <link href=\"Css/estiloAdmi.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("         <img align=\"left\" title=\"Logo Happy ShopShop\" alt=\"Logo Happy ShopShop\" src = \"Css/logoHappy.png\"  />\r\n");
      out.write("           <div id=\"menu\">\r\n");
      out.write("<ul>\r\n");
      out.write("    <li class=\"nivel1\"><a href=\"#\" class=\"nivel1\">Empleados</a>\r\n");
      out.write("\t<ul>\r\n");
      out.write("\t<li><a href=\"consuUsuario.jsp\" align=\"left\">Consultar Empleados</a></li>\t\r\n");
      out.write("            <li>  <a href=\"gestionUsuarios.jsp\" align=\"left\">Agregar Empleado</a></li>\r\n");
      out.write("                <li><a href=\"modUsuario.jsp\" align=\"left\">Editar Empleado</a></li>\r\n");
      out.write("                <li><a href=\"#\">Borrar Empleado</a></li>  \r\n");
      out.write("                <!--<li><a href=\"http://www.idplus.org\">idplus.org</a></li>-->\r\n");
      out.write("\t</ul>\r\n");
      out.write("\r\n");
      out.write("  </li>\r\n");
      out.write("  <li class=\"nivel1\"><a href=\"#\" class=\"nivel1\">Articulos</a>\r\n");
      out.write("\r\n");
      out.write("\t<ul>\r\n");
      out.write("\t<li><a href=\"consultaArticulos.jsp\" align=\"left\">Consultar Articulos</a></li>\t\r\n");
      out.write("            <li><a href=\"gestionArticulos.jsp\" align=\"left\">Agregar Articulos</a></li>\r\n");
      out.write("\t\t<li><a href=\"modArticulos.jsp\" align=\"left\">Editar Articulos</a></li>\r\n");
      out.write("\t\t<li><a href=\"#\">Borrar Articulos</a></li>\r\n");
      out.write("\t</ul>\r\n");
      out.write("\r\n");
      out.write("</li>\r\n");
      out.write("  <li class=\"nivel1\"><a href=\"#\" class=\"nivel1\">Videos e imagenes</a>\r\n");
      out.write("\r\n");
      out.write("\t<ul>\r\n");
      out.write("\t\t<li><a href=\"gestionImagenVideo.jsp\" align=\"left\">Videos e imagenes</a></li>\r\n");
      out.write("\t</ul>\r\n");
      out.write("\r\n");
      out.write("</li>\r\n");
      out.write("  <li class=\"nivel1\"><a href=\"#\" class=\"nivel1\"> Reportes</a>\r\n");
      out.write("\r\n");
      out.write("\t<ul>\r\n");
      out.write("\t\t<li><a href=\"reporteVentas.jsp\" align=\"left\">Generar reportes</a></li>\r\n");
      out.write("\t</ul>\r\n");
      out.write("\r\n");
      out.write("</li>\r\n");
      out.write("  <li class=\"nivel1\"><a href=\"#\" class=\"nivel1\">Sucursales</a>\r\n");
      out.write("\r\n");
      out.write("\t<ul>\r\n");
      out.write("            <li><a href=\"gestionsucursal.jsp\" align=\"left\">Agregar Sucursal</a></li>\r\n");
      out.write("\t<li><a href=\"consultaDepartamento.jsp\" align=\"left\">Consultar Departamentos</a></li>\t\r\n");
      out.write("            <li><a href=\"gestionDepartamento.jsp\" align=\"left\">Agregar Departamentos</a></li>\r\n");
      out.write("\t\t<li><a href=\"modDepartamento.jsp\" align=\"left\">Editar Departamentos</a></li>\r\n");
      out.write("\t\t<li><a href=\"#\">Borrar Departamentos</a></li>\r\n");
      out.write("\t</ul>\r\n");
      out.write("\r\n");
      out.write("</li>\r\n");
      out.write("</ul>\r\n");
      out.write("</div>\r\n");
      out.write("        <br><br>\r\n");
      out.write("        <br><br><br><br>   <h2>Consulta de Articulos</h2>\r\n");
      out.write("        <br> <fieldset id=\"f1\"><br>\r\n");
      out.write("        <table id=\"grid\" border=\"1\" align=\"left\">\r\n");
      out.write("            <caption>Articulos</caption>\r\n");
      out.write("            <tr>\r\n");
      out.write("            <th>Editar</th>\r\n");
      out.write("            <th>Borrar</th>\r\n");
      out.write("            <th>ID</th>\r\n");
      out.write("            <th>Codigo</th>\r\n");
      out.write("            <th>Descripcion Corta</th>\r\n");
      out.write("            <th>Precio</th>\r\n");
      out.write("            <th>Existencia</th>\r\n");
      out.write("            </tr>\r\n");
      out.write("            \r\n");
      out.write("        <tr>\r\n");
      out.write("            <td><input type=\"submit\" value=\"Editar\" /></td>\r\n");
      out.write("            <td><input type=\"submit\" value=\"Borrar\" /></td>\r\n");
      out.write("            <td>1</td>\r\n");
      out.write("            <td>34657</td>\r\n");
      out.write("            <td>Laptop HP</td>\r\n");
      out.write("            <td>5,000</td>\r\n");
      out.write("            <td>15</td>\r\n");
      out.write("        </tr> \r\n");
      out.write("        \r\n");
      out.write("         <tr>\r\n");
      out.write("            <td><input type=\"submit\" value=\"Editar\" /></td>\r\n");
      out.write("            <td><input type=\"submit\" value=\"Borrar\" /></td>\r\n");
      out.write("            <td>2</td>\r\n");
      out.write("            <td>98463</td>\r\n");
      out.write("            <td>Celular LG L90</td>\r\n");
      out.write("            <td>3,000</td>\r\n");
      out.write("            <td>40</td>\r\n");
      out.write("        </tr> \r\n");
      out.write("        </table>\r\n");
      out.write("           \r\n");
      out.write("            \r\n");
      out.write("            \r\n");
      out.write("         <input id=\"botones\" type=\"submit\" value=\"Aceptar\" />\r\n");
      out.write("\r\n");
      out.write("<input id=\"botones\" type=\"reset\" value=\"Cancelar\"/>\r\n");
      out.write("        </fieldset>\r\n");
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

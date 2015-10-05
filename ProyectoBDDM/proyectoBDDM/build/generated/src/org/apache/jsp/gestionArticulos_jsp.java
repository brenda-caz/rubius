package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class gestionArticulos_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Articulos</title>\n");
      out.write("\n");
      out.write("    <link href=\"Css/estiloAdmi.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("<img align=\"left\" title=\"Logo Happy ShopShop\" alt=\"Logo Happy ShopShop\" src = \"Css/logoHappy.png\"/>\n");
      out.write("        \n");
      out.write("          <div id=\"menu\">\n");
      out.write("<ul>\n");
      out.write("    <li class=\"nivel1\"><a href=\"#\" class=\"nivel1\">Empleados</a>\n");
      out.write("\t<ul>\n");
      out.write("\t<li><a href=\"consuUsuario.jsp\" align=\"left\">Consultar Empleados</a></li>\t\n");
      out.write("            <li>  <a href=\"gestionUsuarios.jsp\" align=\"left\">Agregar Empleado</a></li>\n");
      out.write("                <li><a href=\"modUsuario.jsp\" align=\"left\">Editar Empleado</a></li>\n");
      out.write("                <li><a href=\"#\">Borrar Empleado</a></li>  \n");
      out.write("                <!--<li><a href=\"http://www.idplus.org\">idplus.org</a></li>-->\n");
      out.write("\t</ul>\n");
      out.write("\n");
      out.write("  </li>\n");
      out.write("  <li class=\"nivel1\"><a href=\"#\" class=\"nivel1\">Articulos</a>\n");
      out.write("\n");
      out.write("\t<ul>\n");
      out.write("\t<li><a href=\"consultaArticulos.jsp\" align=\"left\">Consultar Articulos</a></li>\t\n");
      out.write("            <li><a href=\"gestionArticulos.jsp\" align=\"left\">Agregar Articulos</a></li>\n");
      out.write("\t\t<li><a href=\"modArticulos.jsp\" align=\"left\">Editar Articulos</a></li>\n");
      out.write("\t\t<li><a href=\"#\">Borrar Articulos</a></li>\n");
      out.write("\t</ul>\n");
      out.write("\n");
      out.write("</li>\n");
      out.write("  <li class=\"nivel1\"><a href=\"#\" class=\"nivel1\">Videos e imagenes</a>\n");
      out.write("\n");
      out.write("\t<ul>\n");
      out.write("\t\t<li><a href=\"gestionImagenVideo.jsp\" align=\"left\">Videos e imagenes</a></li>\n");
      out.write("\t</ul>\n");
      out.write("\n");
      out.write("</li>\n");
      out.write("  <li class=\"nivel1\"><a href=\"#\" class=\"nivel1\"> Reportes</a>\n");
      out.write("\n");
      out.write("\t<ul>\n");
      out.write("\t\t<li><a href=\"reporteVentas.jsp\" align=\"left\">Generar reportes</a></li>\n");
      out.write("\t</ul>\n");
      out.write("\n");
      out.write("</li>\n");
      out.write("  <li class=\"nivel1\"><a href=\"#\" class=\"nivel1\">Departamentos</a>\n");
      out.write("\n");
      out.write("\t<ul>\n");
      out.write("\t<li><a href=\"consultaDepartamento.jsp\" align=\"left\">Consultar Departamentos</a></li>\t\n");
      out.write("            <li><a href=\"gestionDepartamento.jsp\" align=\"left\">Agregar Departamentos</a></li>\n");
      out.write("\t\t<li><a href=\"modDepartamento.jsp\" align=\"left\">Editar Departamentos</a></li>\n");
      out.write("\t\t<li><a href=\"#\">Borrar Departamentos</a></li>\n");
      out.write("\t</ul>\n");
      out.write("\n");
      out.write("</li>\n");
      out.write("</ul>\n");
      out.write("</div>\n");
      out.write("              \n");
      out.write("<br><br><br><br><h2>Agregar Articulos</h2>\n");
      out.write("<form id=\"agregarArticulos\">\n");
      out.write("        <br> <fieldset id=\"f1\"><br>\n");
      out.write("<legend>Introduce la siguiente informaci&oacuten</legend> \n");
      out.write("\n");
      out.write("Codigo del articulo: <input id=\"txt\"  type=\"text\"><br><br>\n");
      out.write("Precio: <input id=\"txt\"  type=\"text\" ><br><br>\n");
      out.write("Descripcion corta: <input id=\"txt\"  type=\"text\"><br><br>\n");
      out.write("Descripcion larga: <input id=\"txt\"  type=\"text\"><br><br>\n");
      out.write("Departamento: <input id=\"txt\"  type=\"text\"><br><br>\n");
      out.write("Unidad de medida: <input id=\"txt\"  type=\"text\"><br><br>\n");
      out.write("Existencia: <input id=\"txt\"  type=\"text\"><br><br>\n");
      out.write("\n");
      out.write("<caption>¿Aplica impuesto? &nbsp;</caption><br>\n");
      out.write("<input type=\"radio\" name=\"siImpuesto\" checked>SI &nbsp;\n");
      out.write("<input type= \"radio\" name= \"noImpuesto\" >NO<br><br>\n");
      out.write("\n");
      out.write("Impuesto: <input id=\"txt\"  type=\"text\"><br><br>\n");
      out.write("Descuento: <input id=\"txt\"  type=\"text\"><br><br>\n");
      out.write("\n");
      out.write("<input id=\"botones\" type=\"submit\" value=\"Agregar\" />\n");
      out.write("\n");
      out.write("<input id=\"botones\" type=\"reset\" value=\"Cancelar\"/>\n");
      out.write("\n");
      out.write("       \n");
      out.write("\n");
      out.write("</fieldset>\n");
      out.write("</form>\n");
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

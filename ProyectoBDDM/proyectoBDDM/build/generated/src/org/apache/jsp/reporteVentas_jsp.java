package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class reporteVentas_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Ventas</title>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"./jquery.datetimepicker.css\"/>\r\n");
      out.write("<link href=\"Css/estiloAdmi.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("<link href=\"Css/chosen.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("<script src=\"Css/chosen.jquery.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<script src=\"Css/chosen.proto.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>  <img align=\"left\" title=\"Logo Happy ShopShop\" alt=\"Logo Happy ShopShop\" src = \"Css/logoHappy.png\"/>\r\n");
      out.write("            <div id=\"menu\">\r\n");
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
      out.write("        <br><br><br><br>   <h2>Reportes</h2>\r\n");
      out.write("        <fieldset id=\"f1\">\r\n");
      out.write("            <legend>Buscar Reporte por:</legend> <br>\r\n");
      out.write("            <fieldset id=\"f2\">\r\n");
      out.write("                <legend>Rango de fechas</legend> \r\n");
      out.write("                <br>\r\n");
      out.write("                Fecha Inicial: <input type=\"text\" id=\"date_timepicker_start\" name=\"E1\">\r\n");
      out.write("                Fecha Final: <input type=\"text\" id=\"date_timepicker_end\" name=\"E2\"> <br>\r\n");
      out.write("             \r\n");
      out.write("                \r\n");
      out.write("                 Sucursal: \r\n");
      out.write("                 <select class=\"chosen-select\">\r\n");
      out.write("                    <option value=\"1\">Monterrey</option>\r\n");
      out.write("                    <option value=\"2\">San Nicolas</option>\r\n");
      out.write("                    <option value=\"3\">Santa Catarina</option>\r\n");
      out.write("                </select><br><br>\r\n");
      out.write("                \r\n");
      out.write("                \r\n");
      out.write("                 Departamento:  \r\n");
      out.write("                <select>\r\n");
      out.write("                    <option value=\"1\">Perfumeria</option>\r\n");
      out.write("                    <option value=\"2\">Niñas</option>\r\n");
      out.write("                    <option value=\"3\">Lenceria</option>\r\n");
      out.write("                </select><br><br>\r\n");
      out.write("                \r\n");
      out.write("                Cajero \r\n");
      out.write("                <select>\r\n");
      out.write("                    <option value=\"1\">Juan Martinez</option>\r\n");
      out.write("                    <option value=\"2\">Raul Chapa</option>\r\n");
      out.write("                    <option value=\"3\">Francisquina Melendez</option>\r\n");
      out.write("                </select><br><br>\r\n");
      out.write("\r\n");
      out.write("                 Metodo de Pago \r\n");
      out.write("                <select>\r\n");
      out.write("                    <option value=\"1\">Efectivo</option>\r\n");
      out.write("                    <option value=\"2\">Tarjeta Credito</option>\r\n");
      out.write("                    <option value=\"3\">Tarjeta Debito</option><br><br>\r\n");
      out.write("<input id=\"botones\" type=\"reset\" value=\"Cancelar\"/>\r\n");
      out.write("<br><input id=\"botones\" type=\"submit\" value=\"Agregar\" />\r\n");
      out.write("            </fieldset><br>\r\n");
      out.write("           \r\n");
      out.write("           \r\n");
      out.write("            \r\n");
      out.write("            \r\n");
      out.write("        </fieldset>\r\n");
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("<script src=\"./jquery.js\"></script>\r\n");
      out.write("<script src=\"./jquery.datetimepicker.js\"></script>\r\n");
      out.write("<script>\r\n");
      out.write("    $( document ).ready(function() {\r\n");
      out.write("        alert('hola');\r\n");
      out.write("    $(\".chosen-select\").chosen(); \r\n");
      out.write("});\r\n");
      out.write("     \r\n");
      out.write("jQuery(function(){\r\n");
      out.write(" jQuery('#date_timepicker_start').datetimepicker({\r\n");
      out.write("      lang:'es',\r\n");
      out.write("  format:'Y/m/d',\r\n");
      out.write("  onShow:function( ct ){\r\n");
      out.write("   this.setOptions({\r\n");
      out.write("    maxDate:jQuery('#date_timepicker_end').val()?jQuery('#date_timepicker_end').val():false\r\n");
      out.write("   })\r\n");
      out.write("  },\r\n");
      out.write("  timepicker:false\r\n");
      out.write(" });\r\n");
      out.write(" jQuery('#date_timepicker_end').datetimepicker({\r\n");
      out.write("  lang:'es',\r\n");
      out.write(" format:'Y/m/d',\r\n");
      out.write("  onShow:function( ct ){\r\n");
      out.write("   this.setOptions({\r\n");
      out.write("    minDate:jQuery('#date_timepicker_start').val()?jQuery('#date_timepicker_start').val():false\r\n");
      out.write("   })\r\n");
      out.write("  },\r\n");
      out.write("  timepicker:false\r\n");
      out.write(" });\r\n");
      out.write("});\r\n");
      out.write("</script>\r\n");
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

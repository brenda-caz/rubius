package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class gestionUsuarios_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Usuarios</title>\n");
      out.write("        <link href=\"Css/estiloAdmi.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       <img align=\"left\" title=\"Logo Happy ShopShop\" alt=\"Logo Happy ShopShop\" src = \"Css/logoHappy.png\"/>\n");
      out.write("            \n");
      out.write("                  <div id=\"menu\">\n");
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
      out.write("  <li class=\"nivel1\"><a href=\"#\" class=\"nivel1\">Sucursales</a>\n");
      out.write("\n");
      out.write("\t<ul>\n");
      out.write("            <li><a href=\"gestionsucursal.jsp\" align=\"left\">Agregar Sucursal</a></li>\n");
      out.write("\t<li><a href=\"consultaDepartamento.jsp\" align=\"left\">Consultar Departamentos</a></li>\t\n");
      out.write("            <li><a href=\"gestionDepartamento.jsp\" align=\"left\">Agregar Departamentos</a></li>\n");
      out.write("\t\t<li><a href=\"modDepartamento.jsp\" align=\"left\">Editar Departamentos</a></li>\n");
      out.write("\t\t<li><a href=\"#\">Borrar Departamentos</a></li>\n");
      out.write("\t</ul>\n");
      out.write("\n");
      out.write("</li>\n");
      out.write("</ul>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("      <br><br><br><br>  <h2>Agregar Empleados</h2>\n");
      out.write("       \n");
      out.write("<fieldset id=\"f1\">\n");
      out.write("<legend>Introduce la siguiente informaci&oacuten</legend> \n");
      out.write("<br><h3>Datos Personales</h3><br>\n");
      out.write("<img align=\"right\" title=\"Fotografia empledo\" alt=\"Agregar foto usuario\" src = \"Css/foto.jpg\"/>\n");
      out.write("\n");
      out.write("Nombre: <input id=\"txt\"  type=\"text\" name=\"E2\"><br><br>\n");
      out.write("Apellido Paterno: <input id=\"txt\"  type=\"text\"><br><br>\n");
      out.write("Apellido Materno: <input id=\"txt\"  type=\"text\"><br><br>\n");
      out.write("\n");
      out.write("<caption>Sexo: &nbsp;</caption><br>\n");
      out.write("<input type=\"radio\" name=\"sexo\" checked>Femenino &nbsp;\n");
      out.write("<input type= \"radio\" name= \"sexo\" >Masculino<br><br>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<caption>Fecha de nacimiento: &nbsp;</caption>\n");
      out.write("<br>\n");
      out.write("<select>\n");
      out.write("<caption>Dia:</caption>\n");
      out.write("<option value=\"1\">1</option>\n");
      out.write("<option value=\"2\">2</option>\n");
      out.write("<option value=\"3\">3</option>\n");
      out.write("<option value=\"4\">4</option>\n");
      out.write("<option value=\"5\">5</option>\n");
      out.write("<option value=\"6\">6</option>\n");
      out.write("<option value=\"7\">7</option>\n");
      out.write("<option value=\"8\">8</option>\n");
      out.write("<option value=\"9\">9</option>\n");
      out.write("<option value=\"10\">10</option>\n");
      out.write("<option value=\"11\">11</option>\n");
      out.write("<option value=\"12\">12</option>\n");
      out.write("<option value=\"13\">13</option>\n");
      out.write("<option value=\"14\">14</option>\n");
      out.write("<option value=\"15\">15</option>\n");
      out.write("<option value=\"16\">16</option>\n");
      out.write("<option value=\"17\">17</option>\n");
      out.write("<option value=\"18\">18</option>\n");
      out.write("<option value=\"19\">19</option>\n");
      out.write("<option value=\"20\">20</option>\n");
      out.write("<option value=\"21\">21</option>\n");
      out.write("<option value=\"22\">22</option>\n");
      out.write("<option value=\"23\">23</option>\n");
      out.write("<option value=\"24\">24</option>\n");
      out.write("<option value=\"25\">25</option>\n");
      out.write("<option value=\"26\">26</option>\n");
      out.write("<option value=\"27\">27</option>\n");
      out.write("<option value=\"28\">28</option>\n");
      out.write("<option value=\"29\">29</option>\n");
      out.write("<option value=\"30\">30</option>\n");
      out.write("<option value=\"31\">31</option>\n");
      out.write("</select>\n");
      out.write("\n");
      out.write("<caption>&nbsp;Mes:</caption>\n");
      out.write("\n");
      out.write("<select>\n");
      out.write("<option value=\"m1\">Enero</option>\n");
      out.write("<option value=\"m2\">Febrero</option>\n");
      out.write("<option value=\"m3\">Marzo</option>\n");
      out.write("<option value=\"m4\">Abril</option>\n");
      out.write("<option value=\"m5\">Mayo</option>\n");
      out.write("<option value=\"m6\">Junio</option>\n");
      out.write("<option value=\"m7\">Julio</option>\n");
      out.write("<option value=\"m8\">Agosto</option>\n");
      out.write("<option value=\"m9\">Septiembre</option>\n");
      out.write("<option value=\"m10\">Octubre</option>\n");
      out.write("<option value=\"m11\">Noviembre</option>\n");
      out.write("<option value=\"m12\">Diciembre</option>\n");
      out.write("</select>\n");
      out.write("\t\t\t\t\n");
      out.write("A&ntildeo: <input id=\"txt\"  type=\"text\"><br><br>\n");
      out.write("CURP:<input id=\"txt\" type=\"text\"><br><br>\n");
      out.write("Correo Electronico: <input id=\"txt\"  type=\"text\"><br><br>\n");
      out.write("\n");
      out.write("<legend>Domicilio </legend>\n");
      out.write("Calle:<input id=\"txt\"  type=\"text\" name=\"E3\"><br><br>\n");
      out.write("Numero:<input id=\"txt\"  type=\"text\"><br><br>\n");
      out.write("Colonia:<input id=\"txt\"  type=\"text\"><br><br>\n");
      out.write("Ciudad:<input id=\"txt\"  type=\"text\"><br><br>\n");
      out.write("Estado:<input id=\"txt\"  type=\"text\"><br><br>\n");
      out.write("Codigo postal:<input id=\"txt\"  type=\"text\"><br><br>\n");
      out.write("Nivel academico <br>\n");
      out.write("\t\t\t\t<select>\n");
      out.write("\t\t\t\t\t<option>Seleccionar...</option>\n");
      out.write("\t\t\t\t\t<option value=\"jardin\">Jardin de niños</option>\n");
      out.write("\t\t\t\t\t<option value=\"Primaria\">Primaria</option>\n");
      out.write("\t\t\t\t\t<option value=\"Secundaria\">Secundaria</option>\n");
      out.write("\t\t\t\t\t<option value=\"Prepa\">Preparatoria</option>\n");
      out.write("\t\t\t\t\t<option value=\"Uni\">Universidad</option>\n");
      out.write("\t\t\t\t\t<option value=\"Maestria\">Maestria</option>\n");
      out.write("\t\t\t\t\t<option value=\"Doctorado\">Doctorado</option>\n");
      out.write("\t\t\t\t\t<option value=\"ninguno\">Ninguno</option>\n");
      out.write("\t\t\t    </select>\n");
      out.write("<br><br>Puesto: <input id=\"txt\"  type=\"text\"><br><br>\n");
      out.write("RFC: <input id=\"txt\"  type=\"text\"><br><br>\n");
      out.write("Numero de nomina: <input id=\"txt\"  type=\"text\"><br><br>\n");
      out.write("\n");
      out.write("<input id=\"botones\" type=\"submit\" value=\"Agregar\" />\n");
      out.write("\n");
      out.write("<input id=\"botones\" type=\"reset\" value=\"Cancelar\"/>\n");
      out.write("</fieldset>\n");
      out.write("\n");
      out.write("\n");
      out.write("      \n");
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

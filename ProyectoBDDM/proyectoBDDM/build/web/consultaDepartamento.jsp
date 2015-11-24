<%-- 
    Document   : consultaDepartamento
    Created on : 06-sep-2015, 16:33:18
    Author     : BrendaCázares
--%>

<%@page import="java.util.List"%>
<%@page import="model.Departamento"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
               <link rel="icon" type="image/png" href="Css/icono.png" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Departamentos</title>
        <link href="Css/estiloAdmi.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <img align="left" title="Logo Happy ShopShop" alt="Logo Happy ShopShop" src = "Css/logoHappy.png"/>
     <div id="cabezita"> <img alt="Logo Happy ShopShop" src = "Css/logocabeza.png"/></div>
 <div id="menu">
            <ul>
                <li class="nivel1"><a href="#" class="nivel1">Empleados</a>
                    <ul>
                          <li><a href="usuarioConsultaServlet" align="left">Gestión Empleados</a></li>	
                        <li>  <a href="usuarioInsertarServlet?inicio=no&id=0" align="left">Agregar Empleado</a></li>


                        <!--<li><a href="http://www.idplus.org">idplus.org</a></li>-->
                    </ul>

                </li>
                <li class="nivel1"><a href="#" class="nivel1">Artículos</a>

                    <ul>
                        <li><a href="articuloConsultaServlet" align="left">Gestión Artículos</a></li>	
                         <li><a href="articuloInsertarServlet?inicio=no&id=0" align="left">Agregar Artículos</a></li>
                    </ul>

                </li>
                <li class="nivel1"><a href="#" class="nivel1">Videos </a>

                    <ul>
          <li><a href="imagenesVideosServlet" align="left">Videos</a></li>
                    </ul>

                </li>
                <li class="nivel1"><a href="#" class="nivel1"> Reportes</a>

                    <ul>
                     <li><a href="reporteServlet" align="left">Generar reportes</a></li>
                    </ul>

                </li>
                <li class="nivel1"><a href="#" class="nivel1">Tiendas</a>

                    <ul>
                        <li><a href="sucursalConsultaServlet" align="left">Gestión Sucursal</a></li>
                        <li><a href="departamentoConsultaServlet" align="left">Gestión Departamentos</a></li>	

                    </ul>

                </li>
                
                <li class="nivel1"><a href="#" class="nivel1" > Cerrar Sesión</a>

                    <ul>
                        <li>  <a href="<%= request.getServletContext().getContextPath()%>/indexServlet?accion=borrar" align="left">Cerrar Sesión</a></li>
                    </ul>


                </li>
            </ul>
        </div>
        <br><br> <br><br>  <h2 id="encabezado"> Consulta de Departamentos</h2>
        <br> <fieldset id="f1"><br>
            <table id="grid" border="1" align="left">
                <caption>Departamentos</caption>
                <tr> 
                    <th>Editar</th>
                    <th>Borrar</th>
                    <th>Nombre</th>
                </tr>

                <%
                    List<Departamento> departamentos = (List<Departamento>) request.getAttribute("departamentos");
                    if (departamentos != null) {
                        for (Departamento depa : departamentos) {
                %>            
                <tr>
                    <td>
                        <a href="<%= request.getServletContext().getContextPath()%>/departamentoConsultaServlet?accion=editar&id=<%= depa.getIdDepartamento()%>">
                            <img src="Css/pencil-1.png" alt="Editar"/>
                        </a>
                    </td>
                    <td>
                        <a href="<%= request.getServletContext().getContextPath()%>/departamentoConsultaServlet?accion=borrar&id=<%= depa.getIdDepartamento()%>">
                            <img src="Css/bote-1.png" alt="Borrar"/>
                        </a> 
                    </td>

                    <td><%= depa.getNombreDepartamento()%></td>

                </tr>
                <%      }
                    }
                %>

            </table>
            <input id="botones" type="submit" value="Aceptar" />

            <input id="botones" type="reset" value="Cancelar"/>
        </fieldset>
    </body>
</html>

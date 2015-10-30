<%-- 
    Document   : consultaArticulos
    Created on : 06-sep-2015, 16:26:37
    Author     : BrendaCázares
--%>

<%@page import="model.Articulo"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Articulos</title>
        <link href="Css/estiloAdmi.css" rel="stylesheet" type="text/css"/>
        
         <!-- Copiar estos dos para el estilo tablas -->
        <link href="Css/jquery-ui.css" rel="stylesheet" type="text/css"/>
        <link href="Css/dataTables.jqueryui.min.css" rel="stylesheet" type="text/css"/>
        <!-- Copiar estos dos para el estilo tablas -->
        <script src="jquery-1.11.3.min.js" type="text/javascript"></script>
        <script src="jquery.js" type="text/javascript"></script>
        
         <!-- Copiar estos dos estilo tabla en este orden -->
        <script src="Css/jquery.dataTables.min.js" type="text/javascript"></script>
        <script src="Css/dataTables.jqueryui.min.js" type="text/javascript"></script>
    </head>
    <body>
        <img align="left" title="Logo Happy ShopShop" alt="Logo Happy ShopShop" src = "Css/logoHappy.png"  />
      <div id="cabezita"> <img alt="Logo Happy ShopShop" src = "Css/logocabeza.png"/></div>
        <div id="menu">
            <ul>
                <li class="nivel1"><a href="#" class="nivel1">Empleados</a>
                    <ul>
                        <li><a href="usuarioConsultaServlet" align="left">Gestion Empleados</a></li>	
                        <li>  <a href="gestionUsuarios.jsp" align="left">Agregar Empleado</a></li>

                        <!--<li><a href="http://www.idplus.org">idplus.org</a></li>-->
                    </ul>

                </li>
                <li class="nivel1"><a href="#" class="nivel1">Articulos</a>

                    <ul>
                        <li><a href="articuloConsultaServlet" align="left">Gestion Articulos</a></li>	
                        <li><a href="articuloInsertarServlet?inicio=no&id=0" align="left">Agregar Articulos</a></li>

                    </ul>

                </li>
                <li class="nivel1"><a href="#" class="nivel1">Videos</a>

                    <ul>
                        <li><a href="imagenesVideosServlet" align="left">Videos</a></li>
                    </ul>

                </li>
                <li class="nivel1"><a href="#" class="nivel1"> Reportes</a>

                    <ul>
                        <li><a href="reporteVentas.jsp" align="left">Generar reportes</a></li>
                    </ul>

                </li>
                <li class="nivel1"><a href="#" class="nivel1">Sucursales</a>

                    <ul>
                        <li><a href="sucursalConsultaServlet" align="left">Gestion Sucursal</a></li>
                        <li><a href="departamentoConsultaServlet" align="left">Gestion Departamentos</a></li>	


                    </ul>

                </li>

                <li class="nivel1"><a href="#" class="nivel1" > Cerrar Sesión</a>

                    <ul>
                        <li>  <a href="<%= request.getServletContext().getContextPath()%>/indexServlet?accion=borrar" align="left">Cerrar Sesión</a></li>
                    </ul>


                </li>


            </ul>
        </div>
        <br><br>
        <br><br><br><br>   <h2>Consulta de Articulos</h2>
        <br> <fieldset id="f1"><br>
            <table class="example" id="grid" border="1" align="left">
                <thead>
                <tr>
                    <th style="width: 0.1px;">Editar</th>
                    <th style="width: 0.1px;">Borrar</th>
                    <th>Codigo</th>
                    <th>Descripcion Corta</th>
                    <th>Precio</th>
                    <th>Existencia</th>
                    <th>Impuesto</th>
                    <th>Descuento</th>
                </tr>
                   </thead>
                   
                   <tbody>

                <%
                    List<Articulo> articulos = (List<Articulo>) request.getAttribute("articulos");
                    if (articulos != null) {
                        for (Articulo artis : articulos) {
                %>            
                <tr>
                    <td>
                        <a href="<%= request.getServletContext().getContextPath()%>/articuloConsultaServlet?accion=editar&id=<%= artis.getIdArticulo()%>">
                            <img src="Css/pencil-1.png" alt="Editar"/>
                        </a>
                    </td>
                    <td>
                        <a href="<%= request.getServletContext().getContextPath()%>/articuloConsultaServlet?accion=borrar&id=<%= artis.getIdArticulo()%>">
                            <img src="Css/bote-1.png" alt="Borrar"/>
                        </a> 
                    </td>

                    <td><%= artis.getCodigoArticulo()%></td>
                    <td><%= artis.getDescripcionCorta()%></td>
                    <td><%= artis.getPrecioPublico()%></td>
                    <td><%= artis.getExistencia()%></td>
                    <td><%= artis.getImpuesto()%></td>
                    <td><%= artis.getDescuento()%></td>                        
                </tr>
                <%      }
                    }
                %>

                   </tbody>
            </table>
        </fieldset>
                
                    <!-- Todo la etiqueta script -->
        <script type="text/javascript">

            $('.example').DataTable();

        </script>
    </body>
</html>

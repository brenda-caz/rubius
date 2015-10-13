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
    </head>
    <body>
         <img align="left" title="Logo Happy ShopShop" alt="Logo Happy ShopShop" src = "Css/logoHappy.png"  />
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
            <li><a href="gestionArticulos.jsp" align="left">Agregar Articulos</a></li>
		
	</ul>

</li>
  <li class="nivel1"><a href="#" class="nivel1">Videos e imagenes</a>

	<ul>
		<li><a href="gestionImagenVideo.jsp" align="left">Videos e imagenes</a></li>
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
</ul>
</div>
        <br><br>
        <br><br><br><br>   <h2>Consulta de Articulos</h2>
        <br> <fieldset id="f1"><br>
        <table id="grid" border="1" align="left">
            <caption>Articulos</caption>
            <tr>
            <th>Editar</th>
            <th>Borrar</th>
            <th>Codigo</th>
            <th>Descripcion Corta</th>
            <th>Precio</th>
            <th>Existencia</th>
            <th>Impuesto</th>
            <th>Descuento</th>
            </tr>
            
            <%
                List<Articulo> articulos = (List<Articulo>) request.getAttribute("articulos");
                if (articulos != null) {
                    for (Articulo arti : articulos) {  
            %>            
                        <tr>
                            <td>
                               editar
                            </td>
                            <td>
                              <a href="<%= request.getServletContext().getContextPath()%>/articuloConsultaServlet?accion=borrar&id=<%= arti.getIdArticulo()%>">
                                    <img src="Css/bote-1.png" alt="Borrar"/>
                                </a> 
                            </td>
                            
                            <td><%= arti.getCodigoArticulo()%></td>
                            <td><%= arti.getDescripcionCorta()%></td>
                            <td><%= arti.getPrecioPublico()%></td>
                            <td><%= arti.getExistencia()%></td>
                            <td><%= arti.getImpuesto()%></td>
                            <td><%= arti.getDescuento()%></td>                        
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

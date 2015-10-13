<%-- 
    Document   : consuUsuario
    Created on : 06-sep-2015, 15:57:46
    Author     : BrendaCázares
--%>

<%@page import="model.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Css/estiloAdmi.css" rel="stylesheet" type="text/css"/>
        <title>Empleados</title>
    </head>
    <body>
        <img align="left" title="Logo Happy ShopShop" alt="Logo Happy ShopShop" src = "Css/logoHappy.png"/>
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
        
        <br><br><br><br><h2>Consultar Empleados</h2>
        <br> <fieldset id="f1"> <br>
        <table id="grid" border="1" align="left">
            <caption>Empleados</caption>
            <tr> 
            <th>Editar</th>
            <th>Borrar</th>
            <th>Nombre</th>
            <th>Apellido Paterno</th>
            <th>Apellido Materno</th>
            <th>Puesto</th>
            <th>Numero de nomina</th>
            <th>Email</th>
            </tr>
            
             <%
                List<Usuario> usuarios = (List<Usuario>) request.getAttribute("usuarios");
                if (usuarios != null) {
                    for (Usuario usua : usuarios) {  
            %>            
                        <tr>
                            <td>
                               <a href="<%= request.getServletContext().getContextPath()%>/usuarioConsultaServlet?accion=editar&id=<%= usua.getId() %>">
                                    <img src="Css/pencil-1.png" alt="Editar"/>
                                </a> 
                            </td>
                            <td>
                                <a href="<%= request.getServletContext().getContextPath()%>/usuarioConsultaServlet?accion=borrar&id=<%= usua.getId() %>">
                                    <img src="Css/bote-1.png" alt="Borrar"/>
                                </a>                     
                            </td>
                            
                            <td><%= usua.getNombre()%></td>
                            <td><%= usua.getApellidoPaterno()%></td>
                            <td><%= usua.getApellidoMaterno()%></td>
                            <td><%= usua.getPuesto()%></td>
                            <td><%= usua.getNomina()%></td>
                            <td><%= usua.getEmail()%></td>                        
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

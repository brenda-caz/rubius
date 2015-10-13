<%-- 
    Document   : gestionDepartamento
    Created on : 05-sep-2015, 19:16:25
    Author     : BrendaCázares
--%>

<%@page import="java.util.List"%>
<%@page import="model.Departamento"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Departamento</title>
        <link href="Css/estiloAdmi.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
    <img align="left" title="Logo Happy ShopShop" alt="Logo Happy ShopShop" src = "Css/logoHappy.png"/>
    
        <div id="menu">
<ul>
    <li class="nivel1"><a href="#" class="nivel1">Empleados</a>
	<ul>
	<li><a href="consuUsuario.jsp" align="left">Gestion Empleados</a></li>	
            <li>  <a href="gestionUsuarios.jsp" align="left">Agregar Empleado</a></li>
 
                <!--<li><a href="http://www.idplus.org">idplus.org</a></li>-->
	</ul>

  </li>
  <li class="nivel1"><a href="#" class="nivel1">Articulos</a>

	<ul>
	<li><a href="consultaArticulos.jsp" align="left">Gestion Articulos</a></li>	
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
  <li class="nivel1"><a href="#" class="nivel1">Tiendas</a>

	<ul>
            <li><a href="sucursalConsultaServlet" align="left">Gestion Sucursal</a></li>
	<li><a href="departamentoConsultaServlet" align="left">Gestion Departamentos</a></li>	
     
	</ul>

</li>
</ul>
</div>

      <br><br><br><br><h2>Agregar Departamento</h2>
       
<fieldset id="f1">
<legend>Introduce la siguiente informaci&oacuten</legend> 
<form method="post" action="departamentoInsertarServlet">
<h3>Departamento</h3><br>

Nombre: <input id="txt"  type="text" name="agregarDepartamento"><br><br>

<table id="grid" border="1" align="left">
            <caption>Departamento</caption>
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
                               editar
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
<input id="botones" type="submit" value="Agregar" />
<input id="botones" type="reset" value="Cancelar"/>
</form>
</fieldset>
       
    </body>
</html>

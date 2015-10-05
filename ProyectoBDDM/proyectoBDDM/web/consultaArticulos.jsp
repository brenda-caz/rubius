<%-- 
    Document   : consultaArticulos
    Created on : 06-sep-2015, 16:26:37
    Author     : BrendaCázares
--%>

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
	<li><a href="consuUsuario.jsp" align="left">Consultar Empleados</a></li>	
            <li>  <a href="gestionUsuarios.jsp" align="left">Agregar Empleado</a></li>
                <li><a href="modUsuario.jsp" align="left">Editar Empleado</a></li>
                <li><a href="#">Borrar Empleado</a></li>  
                <!--<li><a href="http://www.idplus.org">idplus.org</a></li>-->
	</ul>

  </li>
  <li class="nivel1"><a href="#" class="nivel1">Articulos</a>

	<ul>
	<li><a href="consultaArticulos.jsp" align="left">Consultar Articulos</a></li>	
            <li><a href="gestionArticulos.jsp" align="left">Agregar Articulos</a></li>
		<li><a href="modArticulos.jsp" align="left">Editar Articulos</a></li>
		<li><a href="#">Borrar Articulos</a></li>
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
            <li><a href="gestionsucursal.jsp" align="left">Agregar Sucursal</a></li>
	<li><a href="consultaDepartamento.jsp" align="left">Consultar Departamentos</a></li>	
            <li><a href="gestionDepartamento.jsp" align="left">Agregar Departamentos</a></li>
		<li><a href="modDepartamento.jsp" align="left">Editar Departamentos</a></li>
		<li><a href="#">Borrar Departamentos</a></li>
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
            <th>ID</th>
            <th>Codigo</th>
            <th>Descripcion Corta</th>
            <th>Precio</th>
            <th>Existencia</th>
            </tr>
            
        <tr>
            <td><input type="submit" value="Editar" /></td>
            <td><input type="submit" value="Borrar" /></td>
            <td>1</td>
            <td>34657</td>
            <td>Laptop HP</td>
            <td>5,000</td>
            <td>15</td>
        </tr> 
        
         <tr>
            <td><input type="submit" value="Editar" /></td>
            <td><input type="submit" value="Borrar" /></td>
            <td>2</td>
            <td>98463</td>
            <td>Celular LG L90</td>
            <td>3,000</td>
            <td>40</td>
        </tr> 
        </table>
           
            
            
         <input id="botones" type="submit" value="Aceptar" />

<input id="botones" type="reset" value="Cancelar"/>
        </fieldset>
    </body>
</html>

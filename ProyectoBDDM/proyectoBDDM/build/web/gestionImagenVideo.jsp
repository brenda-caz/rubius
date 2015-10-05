<%-- 
    Document   : gestionImagenVideo
    Created on : 05-sep-2015, 19:21:38
    Author     : BrendaCázares
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Imagenes y Videos</title>
        <link href="Css/estiloAdmi.css" rel="stylesheet" type="text/css"/>
    </head>
    <body> <img align="left" title="Logo Happy ShopShop" alt="Logo Happy ShopShop" src = "Css/logoHappy.png"/>
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

       <br><br><br><br> <h2>Programaci&oacuten de video e imagenes</h2>
        
       <fieldset id="f1">
<legend>Introduce la siguiente informaci&oacuten</legend> 
<fieldset id="f2">
<legend>Imagenes</legend> 

Fecha: <input id="txt"  type="text" name="E2"><br><br>
Hora: <input id="txt"  type="text" name="E3">

<input id="botones" type="submit" value="Agregar" />

<input id="botones" type="reset" value="Cancelar"/>
</fieldset><br><br>
<fieldset id="f3">
<legend>Videos</legend> 

Fecha: <input id="txt"  type="text" name="E4"><br><br>
Hora: <input id="txt"  type="text" name="E5">
<input id="botones" type="submit" value="Agregar" />

<input id="botones" type="reset" value="Cancelar"/>
</fieldset><br><br>
</fieldset>
    </body>
</html>

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
	<li><a href="consuUsuario.jsp" align="left">Gestion Empleados</a></li>	
            <li>  <a href="gestionUsuarios.jsp" align="left">Gestion Empleado</a></li>
           
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

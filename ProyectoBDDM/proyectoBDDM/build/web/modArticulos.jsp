<%-- 
    Document   : gestionArticulos
    Created on : 05-sep-2015, 17:29:29
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
        <img align="left" title="Logo Happy ShopShop" alt="Logo Happy ShopShop" src = "Css/logoHappy.png"/>
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
              
      <br><br>  <h2>Editar Articulos</h2>
       
<fieldset id="f1">
<legend>Introduce la siguiente informaci&oacuten</legend> 
<h3>Articulos</h3>

Codigo del articulo: <input id="txt"  type="text"><br><br>
Precio: <input id="txt"  type="text" ><br><br>
Descripcion corta: <input id="txt"  type="text"><br><br>
Descripcion larga: <input id="txt"  type="text"><br><br>
Departamento: <input id="txt"  type="text"><br><br>
Unidad de medida: <input id="txt"  type="text"><br><br>
Existencia: <input id="txt"  type="text"><br><br>

<caption>¿Aplica impuesto? &nbsp;</caption><br>
<input type="radio" name="siImpuesto" checked>SI &nbsp;
<input type= "radio" name= "noImpuesto" >NO<br><br>

Impuesto: <input id="txt"  type="text"><br><br>
Descuento: <input id="txt"  type="text"><br><br>

<input id="botones" type="submit" value="Aceptar" />

<input id="botones" type="reset" value="Cancelar"/>
</fieldset>
    </body>
</html>

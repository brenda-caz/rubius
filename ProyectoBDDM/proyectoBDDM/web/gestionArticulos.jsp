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
	<li><a href="consuUsuario.jsp" align="left">Gestion Empleados</a></li>	
            <li>  <a href="gestionUsuarios.jsp" align="left">Agregar Empleado</a></li>
              
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
            <li><a href="gestionsucursal.jsp" align="left">Gestion Sucursal</a></li>
	<li><a href="consultaDepartamento.jsp" align="left">Gestion Departamentos</a></li>	

	</ul>

</li>
</ul>
</div>
              
<br><br><br><br><h2>Agregar Articulos</h2>
<form id="agregarArticulos">
        <br> <fieldset id="f1"><br>
<legend>Introduce la siguiente informaci&oacuten</legend> 

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

<input id="botones" type="submit" value="Agregar" />

<input id="botones" type="reset" value="Cancelar"/>

       

</fieldset>
</form>
    </body>
</html>

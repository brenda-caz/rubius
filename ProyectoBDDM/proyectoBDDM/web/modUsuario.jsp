<%-- 
    Document   : gestionArticulos
    Created on : 05-sep-2015, 17:29:29
    Author     : BrendaCázares
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
               <link rel="icon" type="image/png" href="Css/icono.png" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuarios</title>
        <link href="Css/estiloAdmi.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        < <img align="left" title="Logo Happy ShopShop" alt="Logo Happy ShopShop" src = "Css/logoHappy.png"/>
            <div id="cabezita"> <img alt="Logo Happy ShopShop" src = "Css/logocabeza.png"/></div>
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
	  <li><a href="imagenesVideosServlet" align="left">Videos</a></li>
	</ul>

</li>
  <li class="nivel1"><a href="#" class="nivel1"> Reportes</a>

	<ul>
		 <li><a href="reporteServlet" align="left">Generar reportes</a></li>
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

     <br><br><br><br>   <h2 id="encabezado">Editar Empleados</h2>
       
<fieldset id="f1">
<legend>Introduce la siguiente informaci&oacuten</legend> 
<br><h3>Datos Personales</h3><br><br>
<img align="right" title="Fotografia empledo" alt="Foto NO disponible" src = "Css/foto.jpg"/>

Nombre: <input id="txt"  type="text" name="E2"><br><br>
Apellido Paterno: <input id="txt"  type="text"><br><br>
Apellido Materno: <input id="txt"  type="text"><br><br>

<caption>Sexo: &nbsp;</caption><br>
<input type="radio" name="sexo" checked>Femenino &nbsp;
<input type= "radio" name= "sexo" >Masculino<br><br>



<caption>Fecha de nacimiento: &nbsp;</caption>
<br>
<select>
<caption>Dia:</caption>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select>

<caption>&nbsp;Mes:</caption>

<select>
<option value="m1">Enero</option>
<option value="m2">Febrero</option>
<option value="m3">Marzo</option>
<option value="m4">Abril</option>
<option value="m5">Mayo</option>
<option value="m6">Junio</option>
<option value="m7">Julio</option>
<option value="m8">Agosto</option>
<option value="m9">Septiembre</option>
<option value="m10">Octubre</option>
<option value="m11">Noviembre</option>
<option value="m12">Diciembre</option>
</select>
				
A&ntildeo: <input id="txt"  type="text"><br><br>
CURP:<input id="txt"  type="text"><br><br>

<legend>Domicilio </legend>
Calle:<input id="txt"  type="text" name="E3"><br><br>
Numero:<input id="txt"  type="text"><br><br>
Colonia:<input id="txt"  type="text"><br><br>
Ciudad:<input id="txt"  type="text"><br><br>
Estado:<input id="txt"  type="text"><br><br>
Codigo postal:<input id="txt"  type="text"><br><br>
Nivel academico <br>
				<select>
					<option>Seleccionar...</option>
					<option value="jardin">Jardin de niños</option>
					<option value="Primaria">Primaria</option>
					<option value="Secundaria">Secundaria</option>
					<option value="Prepa">Preparatoria</option>
					<option value="Uni">Universidad</option>
					<option value="Maestria">Maestria</option>
					<option value="Doctorado">Doctorado</option>
					<option value="ninguno">Ninguno</option>
			    </select>
<br><br>Puesto: <input id="txt" type="text"><br><br>
RFC: <input id="txt"  type="text"><br><br>
Numero de nomina: <input id="txt"  type="text"><br><br>

<input id="botones" type="submit" value="Aceptar" />

<input id="botones" type="reset" value="Cancelar"/>

</fieldset>

      
    </body>
</html>

<%-- 
    Document   : gestionArticulos
    Created on : 05-sep-2015, 17:29:29
    Author     : BrendaCázares
--%>

<%@page import="model.Articulo"%>
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
	<li><a href="usuarioConsultaServlet" align="left">Gestion Empleados</a></li>	
            <li>  <a href="gestionUsuarios.jsp" align="left">Agregar Empleado</a></li>
              
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
  <li class="nivel1"><a href="#" class="nivel1">Tiendas</a>

	<ul>
            <li><a href="sucursalConsultaServlet" align="left">Gestion Sucursal</a></li>
	<li><a href="departamentoConsultaServlet" align="left">Gestion Departamentos</a></li>	

	</ul>

</li>
</ul>
</div>
              
<br><br><br><br><h2>Agregar Articulos</h2>
<%
                Articulo artis = (Articulo) request.getAttribute("articulo");
                int id = 0;
                String codigoArticulo = "";
                String descriCorta = "";
                String descriLarga = "";
                double precio = 0;
                String medida = "";
                int existencia = 0;
                int impuesto = 0;
                int descuento = 0;
                int deptoId = 0;

                if (artis != null) {
                    id = artis.getIdArticulo();
                    codigoArticulo = artis.getCodigoArticulo()!= null ? artis.getCodigoArticulo() : "";
                    descriCorta = artis.getDescripcionCorta()!= null ? artis.getDescripcionCorta() : "";
                    descriLarga = artis.getDescripcionLarga()!= null ? artis.getDescripcionLarga() : "";
                    precio = artis.getPrecioPublico();
                    medida = artis.getMedida()!= null ? artis.getMedida() : "";
                    existencia = artis.getExistencia();
                    impuesto = artis.getImpuesto();
                    descuento = artis.getDescuento();
                    deptoId = artis.getDepartamento() != null ? artis.getDepartamento().getIdDepartamento(): 0;

                }
            %>

<form id="agregarArticulos" method="post" action="articuloInsertarServlet">
        <br> <fieldset id="f1"><br>
<legend>Introduce la siguiente informaci&oacuten</legend> 


Codigo del articulo: <input id="txt"  type="text" name="codigoArticulo" value="<%= codigoArticulo%>" ><br><br>
Precio: <input id="txt"  type="text" name="precioArticulo" value="<%= precio%>" ><br><br>
Descripcion corta: <input id="txt"  type="text" name="descriCorta" value="<%= descriCorta%>"><br><br>
Descripcion larga: <input id="txt"  type="text" name="descriLarga" value="<%= descriLarga%>"><br><br>
Departamento: <input id="txt"  type="text"  name="Departamento" value="<%= deptoId%>" ><br><br>
Unidad de medida: <input id="txt"  type="text"  name="medida" value="<%= medida%>"><br><br>
Existencia: <input id="txt"  type="text"  name="existencia" value="<%= existencia%>"><br><br>

<caption>¿Aplica impuesto? &nbsp;</caption><br>
<input type="radio" name="Impuestos" value="siI" checked>SI &nbsp;
<input type= "radio" name= "Impuestos"  value="noI"  >NO<br><br>

Impuesto: <input id="txt"  type="text"  name="impuesto" value="<%= impuesto%>"><br><br>
Descuento: <input id="txt"  type="text"  name="descuento" value="<%= descuento%>"><br><br>

<input id="botones" type="submit" value="Agregar" />

<input id="botones" type="reset" value="Cancelar"/>

       

</fieldset>
</form>
    </body>
</html>

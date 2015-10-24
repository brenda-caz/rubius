<%-- 
    Document   : gestionDepartamento
    Created on : 05-sep-2015, 19:16:25
    Author     : BrendaCázares
--%>

<%@page import="model.Sucursal"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sucursal</title>
        <link href="Css/estiloAdmi.css" rel="stylesheet" type="text/css"/>
        <link href="jquery.datetimepicker.css" rel="stylesheet" type="text/css"/>
        <script src="jquery-1.11.3.min.js" type="text/javascript"></script>
        <script src="jquery.js" type="text/javascript"></script>
        <script src="jquery.datetimepicker.js" type="text/javascript"></script>
        
         <script>
            function validarNum(e) {
                var key;
                if (window.event) // IE
                {
                    key = e.keyCode;
                }
                else if (e.which) // Netscape/Firefox/Opera
                {
                    key = e.which;
                }
                if (key < 48 || key > 57)
                {
                    if (key == 8) // Detectar backspace (retroceso)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                return true;
            }
            function validacion() {
                var nombreSucursal = document.forms["addUser"]["agregarSucursal"].value;
                var msj = "";
                 var booleana = 0;
              //  valor = new Date(fechaNacimiento);
 
//if( !isNaN(valor) ) {
  //return false;
//}
                
                
                if (nombreSucursal == null || nombreSucursal.length == 0 || /^\s+$/.test(nombreSucursal) || nombreSucursal == "") {
                     booleana = 1;
                     document.forms["addUser"]["agregarSucursal"].style.borderColor = "red";
                }
                else
                {
                    document.forms["addUser"]["agregarSucursal"].style.borderColor = "black";
                }
              
              
       
              
                if (booleana == 0) {
                    alert("Sucursal guardada exitosamente.");
                    return true;
                }
                else {
                    return false;
                }
            }


        </script>
        
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
            <li><a href="articuloInsertarServlet?inicio=no&id=0" align="left">Agregar Articulos</a></li>
		
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

       <br><br><br><br><h2>Agregar Sucursal</h2>
       
<fieldset id="f1">
<legend>Introduce la siguiente informaci&oacuten</legend> 
 <%
                Sucursal sucus = (Sucursal) request.getAttribute("sucursal");
                int id = 0;
                String nombreSucursal = "";

                if (sucus != null) {
                    id = sucus.getIdSucursal();
                    nombreSucursal = sucus.getNombreSucursal()!= null ? sucus.getNombreSucursal(): "";
                }
            %>
<form method="post" action="sucursalInsertarServlet" onsubmit="return validacion()" name="addUser">
<h3>Sucursal</h3><br>
<input type="hidden" name="idSucursal" value="<%= id%>">
Nombre: <input id="txt"  type="text" name="agregarSucursal" value="<%= nombreSucursal%>" maxlength="75" ><br><br>

<table id="grid" border="1" align="left">
            <caption>Sucursal</caption>
            <tr> 
                <th>Editar</th>
                <th>Borrar</th>
            <th>Nombre</th>
            </tr>
            
             <%
                List<Sucursal> sucursales = (List<Sucursal>) request.getAttribute("sucursales");
                if (sucursales != null) {
                    for (Sucursal sucu : sucursales) {  
            %>            
                        <tr>
                            <td>
                               <a href="<%= request.getServletContext().getContextPath()%>/sucursalConsultaServlet?accion=editar&id=<%= sucu.getIdSucursal()%>">
                                    <img src="Css/pencil-1.png" alt="Editar"/>
                            </td>
                            <td>
                               <a href="<%= request.getServletContext().getContextPath()%>/sucursalConsultaServlet?accion=borrar&id=<%= sucu.getIdSucursal()%>">
                                    <img src="Css/bote-1.png" alt="Borrar"/>
                                </a> 
                            </td>
                            
                            <td><%= sucu.getNombreSucursal()%></td>
                        
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

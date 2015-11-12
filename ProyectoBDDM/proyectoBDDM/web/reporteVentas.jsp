<%-- 
    Document   : reporteVentas
    Created on : 05-sep-2015, 19:30:33
    Author     : BrendaCázares
--%>

<%@page import="model.Venta"%>
<%@page import="model.Pago"%>
<%@page import="model.Usuario"%>
<%@page import="model.Departamento"%>
<%@page import="java.util.List"%>
<%@page import="model.Sucursal"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ventas</title>
        
         <link href="Css/estiloAdmi.css" rel="stylesheet" type="text/css"/>
        <link href="jquery.datetimepicker.css" rel="stylesheet" type="text/css"/>
        <link href="chosen.css" rel="stylesheet" type="text/css"/>
         <link href="Css/jquery-ui.css" rel="stylesheet" type="text/css"/>
        <link href="Css/dataTables.jqueryui.min.css" rel="stylesheet" type="text/css"/>
        

        <script src="jquery-1.11.3.min.js" type="text/javascript"></script>
        <script src="jquery.js" type="text/javascript"></script>
        <script src="jquery.datetimepicker.js" type="text/javascript"></script>
        <script src="chosen.jquery.js" type="text/javascript"></script>
        <script src="Css/jquery.dataTables.min.js" type="text/javascript"></script>
        <script src="Css/dataTables.jqueryui.min.js" type="text/javascript"></script>

    </head>
    <body>  <img align="left" title="Logo Happy ShopShop" alt="Logo Happy ShopShop" src = "Css/logoHappy.png"/>
        <div id="cabezita"> <img alt="Logo Happy ShopShop" src = "Css/logocabeza.png"/></div>
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
                <li class="nivel1"><a href="#" class="nivel1">Videos</a>

                    <ul>
            <li><a href="imagenesVideosServlet" align="left">Videos</a></li>
                    </ul>

                </li>
                <li class="nivel1"><a href="#" class="nivel1"> Reportes</a>

                    <ul>
                        <li><a href="reporteServlet" align="left">Generar reportes</a></li>
                    </ul>

                </li>
                <li class="nivel1"><a href="#" class="nivel1">Tiendas</a>

                    <ul>
                        <li><a href="sucursalConsultaServlet" align="left">Gestion Sucursal</a></li>
                        <li><a href="departamentoConsultaServlet" align="left">Gestion Departamentos</a></li>	

                    </ul>

                </li>
                
                <li class="nivel1"><a href="#" class="nivel1" > Cerrar Sesión</a>

                    <ul>
                        <li>  <a href="<%= request.getServletContext().getContextPath()%>/indexServlet?accion=borrar" align="left">Cerrar Sesión</a></li>
                    </ul>


                </li>
            </ul>
        </div>
        <br><br><br><br>   <h2 id="encabezado">Reportes</h2>
        <fieldset id="f1">
           
                <form method="post" action="">
                <table>
                     <tr>
                        <td class="estilotd">
                         Fecha Inicial:
                        </td>
                        <td>
                            <input id="txt" type="text" class="date_timepicker_start" name="E1">
                        </td>
                    </tr>
                    
                     <tr>
                        <td class="estilotd">
                         Fecha Final:
                        </td>
                        <td>
                           <input id="txt" type="text" class="date_timepicker_end" name="E2"> <br>
                        </td>
                    </tr>
                    
                     <tr>
                        <td class="estilotd">
                       Sucursal:
                        </td>
                        <td>
                            <select name="sucursalReporte">
                                <option value="0" selected>
                                    Seleccione una opcion...
                                </option>
                                <%
                                    List<Sucursal> suc = (List<Sucursal>) request.getAttribute("sucursales");
                                    if (suc != null) {
                                        for (Sucursal sucu : suc) {
                                %>
                                <option value="<%= sucu.getIdSucursal()%>"  >
                                    <%= sucu.getNombreSucursal()%>
                                </option>
                                <%
                                        }
                                    }
                                %>
                            </select>
                        </td>
                    </tr>
                    
                     <tr>
                        <td class="estilotd">
                       Departamento:
                        </td>
                        <td>
                           <select name="departamentoReporte">
                                <option value="0" selected>
                                    Seleccione una opcion...
                                </option>
                                <%
                                    List<Departamento> dep = (List<Departamento>) request.getAttribute("departamentos");
                                    if (suc != null) {
                                        for (Departamento depa : dep) {
                                %>
                                <option value="<%= depa.getIdDepartamento()%>"  >
                                    <%= depa.getNombreDepartamento()%>
                                </option>
                                <%
                                        }
                                    }
                                %>
                            </select>
                        </td>
                    </tr>
                    
                     <tr>
                        <td class="estilotd">
                     Cajero:
                        </td>
                        <td>
                            <select name="cajeroReporte">
                                <option value="0" selected>
                                    Seleccione una opcion...
                                </option>
                                <%
                                    List<Usuario> usu = (List<Usuario>) request.getAttribute("usuarios");
                                    if (usu != null) {
                                        for (Usuario usua : usu) {
                                %>
                                <option value="<%= usua.getId()%>"  >
                                    <%= usua.getNombre() + " " + usua.getApellidoPaterno()%>
                                </option>
                                <%
                                        }
                                    }
                                %>
                            </select>
                        </td>
                    </tr>
                    
                     <tr>
                        <td class="estilotd">
                     Metodo pago:
                        </td>
                        <td>
                         <select name="pagoReporte">
                                <option value="0" selected>
                                    Seleccione una opcion...
                                </option>
                                <%
                                    List<Pago> pag = (List<Pago>) request.getAttribute("pagos");
                                    if (pag != null) {
                                        for (Pago pags : pag) {
                                %>
                                <option value="<%= pags.getIdPago()%>"  >
                                    <%= pags.getNombrePago()%>
                                </option>
                                <%
                                        }
                                    }
                                %>
                            </select>
                        </td>
                    </tr>
                </table>
                            <input type="submit" value="Aceptar"/>
                            </form>
              
                    
                    <table class="example" id="grid" border="1" align="left">
                <thead>
                <tr>
                    <th>Fecha</th>
                    <th>Sucursal</th>
                    <th>Departamento</th>
                    <th>Cajero</th>
                    <th>Descripcion Corta</th>
                    <th>Descripcion Larga</th>
                    <th>Cantidad Venta</th>
                    <th>Precio</th>
                    <th>Decuento</th>
                    <th>Impuesto</th>
                     <th>Subtotal</th>
                    <th>Tipo de Pago</th>
             
                </tr>
                   </thead>
                   
                   <tbody>
                       
                                     <%
                    List<Venta> Ventas = (List<Venta>) request.getAttribute("Venta");
                    if (Ventas != null) {
                        for (Venta ve : Ventas) {
                %>            
                <tr>
                    <td><%= ve.getFecha()%></td>
                    <td><%= ve.getSucursalVenta().getNombreSucursal() %></td>
                    <td><%= ve.getDepartamentoVenta().getNombreDepartamento() %></td>
                    <td><%= ve.getUsuarioVenta().getNombre() %> </td>
                    <td><%= ve.getArticuloVenta().getDescripcionCorta() %></td>
                    <td><%= ve.getArticuloVenta().getDescripcionLarga()%></td>
                    <td><%= ve.getCantidadVenta() %></td>  
                    <td><%= ve.getArticuloVenta().getPrecioPublico() %></td>  
                    <td><%= ve.getArticuloVenta().getDescuento()%></td>  
                    <td><%= ve.getArticuloVenta().getImpuesto()%></td>  
                    <td><%= ve.getSubtotal() %></td>
                    <td><%= ve.getPagoVenta().getNombrePago() %></td>
                </tr>
                <%      }
                    }
                %>
                       
                   </tbody>
                    </table>
       
            </fieldset>
        
         <script>
                

        $("select").chosen();
   
                   
                   </script>
        
 <script type="text/javascript">

            $('.example').DataTable();

        </script>
    </body>
<script src="./jquery.js"></script>
<script src="./jquery.datetimepicker.js"></script>
<script>
   
jQuery(function(){
 jQuery('.date_timepicker_start').datetimepicker({
      lang:'es',
  format:'Y/m/d',
  onShow:function( ct ){
   this.setOptions({
    maxDate:jQuery('.date_timepicker_end').val()?jQuery('.date_timepicker_end').val():false
   })
  },
  timepicker:false
 });
 jQuery('.date_timepicker_end').datetimepicker({
  lang:'es',
 format:'Y/m/d',
  onShow:function( ct ){
   this.setOptions({
    minDate:jQuery('.date_timepicker_start').val()?jQuery('.date_timepicker_start').val():false
   })
  },
  timepicker:false
 });
});
</script>
</html>

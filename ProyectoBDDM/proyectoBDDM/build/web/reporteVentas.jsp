<%-- 
    Document   : reporteVentas
    Created on : 05-sep-2015, 19:30:33
    Author     : BrendaCázares
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ventas</title>
<link rel="stylesheet" type="text/css" href="./jquery.datetimepicker.css"/>
<link href="Css/estiloAdmi.css" rel="stylesheet" type="text/css"/>
<link href="Css/chosen.css" rel="stylesheet" type="text/css"/>
<script src="Css/chosen.jquery.min.js" type="text/javascript"></script>
<script src="Css/chosen.proto.min.js" type="text/javascript"></script>
    </head>
    <body>  <img align="left" title="Logo Happy ShopShop" alt="Logo Happy ShopShop" src = "Css/logoHappy.png"/>
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
        <br><br><br><br>   <h2>Reportes</h2>
        <fieldset id="f1">
            <legend>Buscar Reporte por:</legend> <br>
            <fieldset id="f2">
                <legend>Rango de fechas</legend> 
                <br>
                Fecha Inicial: <input type="text" id="date_timepicker_start" name="E1">
                Fecha Final: <input type="text" id="date_timepicker_end" name="E2"> <br>
             
                
                 Sucursal: 
                 <select class="chosen-select">
                    <option value="1">Monterrey</option>
                    <option value="2">San Nicolas</option>
                    <option value="3">Santa Catarina</option>
                </select><br><br>
                
                
                 Departamento:  
                <select>
                    <option value="1">Perfumeria</option>
                    <option value="2">Niñas</option>
                    <option value="3">Lenceria</option>
                </select><br><br>
                
                Cajero 
                <select>
                    <option value="1">Juan Martinez</option>
                    <option value="2">Raul Chapa</option>
                    <option value="3">Francisquina Melendez</option>
                </select><br><br>

                 Metodo de Pago 
                <select>
                    <option value="1">Efectivo</option>
                    <option value="2">Tarjeta Credito</option>
                    <option value="3">Tarjeta Debito</option><br><br>
<input id="botones" type="reset" value="Cancelar"/>
<br><input id="botones" type="submit" value="Agregar" />
            </fieldset><br>
           
           
            
            
        </fieldset>

    </body>
<script src="./jquery.js"></script>
<script src="./jquery.datetimepicker.js"></script>
<script>
    $( document ).ready(function() {
        alert('hola');
    $(".chosen-select").chosen(); 
});
     
jQuery(function(){
 jQuery('#date_timepicker_start').datetimepicker({
      lang:'es',
  format:'Y/m/d',
  onShow:function( ct ){
   this.setOptions({
    maxDate:jQuery('#date_timepicker_end').val()?jQuery('#date_timepicker_end').val():false
   })
  },
  timepicker:false
 });
 jQuery('#date_timepicker_end').datetimepicker({
  lang:'es',
 format:'Y/m/d',
  onShow:function( ct ){
   this.setOptions({
    minDate:jQuery('#date_timepicker_start').val()?jQuery('#date_timepicker_start').val():false
   })
  },
  timepicker:false
 });
});
</script>
</html>

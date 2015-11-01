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
                        <li><a href="gestionArticulos.jsp" align="left">Agregar Articulos</a></li>

                    </ul>

                </li>
                <li class="nivel1"><a href="#" class="nivel1">Videos</a>

                    <ul>
            <li><a href="imagenesVideosServlet" align="left">Videos</a></li>
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
                
                <li class="nivel1"><a href="#" class="nivel1" > Cerrar Sesión</a>

                    <ul>
                        <li>  <a href="<%= request.getServletContext().getContextPath()%>/indexServlet?accion=borrar" align="left">Cerrar Sesión</a></li>
                    </ul>


                </li>
            </ul>
        </div>
        <br><br><br><br>   <h2>Reportes</h2>
        <fieldset id="f1">
            <legend>Buscar Reporte por:</legend> <br>
            <fieldset id="f2">
                <table>
                     <tr>
                        <td>
                         Fecha Inicial:
                        </td>
                        <td>
                            <input id="txt" type="text" class="date_timepicker_start" name="E1">
                        </td>
                    </tr>
                    
                     <tr>
                        <td>
                         Fecha Final:
                        </td>
                        <td>
                           <input id="txt" type="text" class="date_timepicker_end" name="E2"> <br>
                        </td>
                    </tr>
                    
                     <tr>
                        <td>
                       Sucursal:
                        </td>
                        <td>
                             <select class="chosen-select">
                    <option value="1">Monterrey</option>
                    <option value="2">San Nicolas</option>
                    <option value="3">Santa Catarina</option>
                </select>
                        </td>
                    </tr>
                    
                     <tr>
                        <td>
                       Departamento:
                        </td>
                        <td>
                            <select>
                    <option value="1">Perfumeria</option>
                    <option value="2">Niñas</option>
                    <option value="3">Lenceria</option>
                </select>
                        </td>
                    </tr>
                    
                     <tr>
                        <td>
                     Cajero:
                        </td>
                        <td>
                           <select>
                    <option value="3">Francisquina Melendez</option>
                </select><br><br>
                        </td>
                    </tr>
                    
                     <tr>
                        <td>
                     Metodo pago:
                        </td>
                        <td>
                          <select>
                    <option value="1">Efectivo</option>
                    <option value="2">Tarjeta Credito</option>
                    <option value="3">Tarjeta Debito</option><br><br>
                </select>
                        </td>
                    </tr>
                    
                    
                </table>
              
                    
                    <table class="example" id="grid" border="1" align="left">
                <thead>
                <tr>
                    <th style="width: 0.1px;">Editar</th>
                    <th style="width: 0.1px;">Borrar</th>
                    <th>Fecha</th>
                    <th>Sucursal</th>
                    <th>Departamento</th>
                    <th>Cajero</th>
                    <th>Metodo de Pago</th>
             
                </tr>
                   </thead>
                   
                   <tbody>
                       
                   </tbody>
                    </table>
       
            </fieldset><br>
           
           
            
            
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

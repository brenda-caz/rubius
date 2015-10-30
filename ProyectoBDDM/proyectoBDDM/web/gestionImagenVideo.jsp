<%-- 
    Document   : gestionImagenVideo
    Created on : 05-sep-2015, 19:21:38
    Author     : BrendaCázares
--%>

<%@page import="model.Video"%>
<%@page import="java.util.List"%>
<%@page import="model.Imagen"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Imagenes y Videos</title>
        <link href="Css/estiloAdmi.css" rel="stylesheet" type="text/css"/>
        <link href="Css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="Css/bootstrap-modal.css" rel="stylesheet" type="text/css"/>
        
        <link href="Css/jquery-ui.css" rel="stylesheet" type="text/css"/>
        <link href="Css/dataTables.jqueryui.min.css" rel="stylesheet" type="text/css"/>
        
        <link href="jquery.datetimepicker.css" rel="stylesheet" type="text/css"/>
        <script src="jquery-1.11.3.min.js" type="text/javascript"></script>
        <script src="jquery.js" type="text/javascript"></script>
        <script src="jquery.datetimepicker.js" type="text/javascript"></script>
      
        <script src="Css/jquery.dataTables.min.js" type="text/javascript"></script>
      <script src="Css/dataTables.jqueryui.min.js" type="text/javascript"></script>
       
        
        
    </head>
    <body> <img align="left" title="Logo Happy ShopShop" alt="Logo Happy ShopShop" src = "Css/logoHappy.png"/>
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

       
        
       <br><br><br><br> <h2 style="color: white">Programaci&oacuten de videos</h2>
       <fieldset id="f1">

<fieldset id="f3">


 <table class="example" class="display" cellspacing="0"  width="100%">
         <thead>
            <tr> 
            <th style="width: 0.1px;">Editar</th>
            <th>Path</th>
            <th>Fecha</th>
            <th>Hora</th>
            </tr>
          </thead>
          <tbody>
             <%
                List<Video> videos = (List<Video>) request.getAttribute("videos");
                if (videos != null) {
                    for (Video vid : videos) {  
            %>            
                        <tr>
                            <td>
                                
                            <a data-toggle="modal" href="#stack1" onclick="pasarVid(<%= vid.getIdVideo() %>)"><img src="Css/relog.png" alt="Editar"/></a>
                            </td>
                           
                            
                            <td> <video src="<%= vid.getPathVideo()%>" width="100px" height="100px"  muted loop></video></td>
                            <td><%= vid.getFechaVideo()== null ? "Sin Programar" : vid.getFechaVideo()%></td>
                            <td><%= vid.getHoraVideo()== null ? "Sin Programar" : vid.getHoraVideo()%></td>                       
                        </tr>
            <%      }
                }
            %>
             </tbody>
        </table>

<!--
Fecha: <input id="txt"  type="text" name="E4"><br><br>
<input id="botones" type="submit" value="Agregar" />

<input id="botones" type="reset" value="Cancelar"/> -->
</fieldset><br><br>
</fieldset>
            
            
            
           

        <div id="stack1" class="modal hide fade" tabindex="-1" data-focus-on="input:first">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h3 style="color:purple;">Programar</h3>
            </div>
            <form action="imagenesVideosServlet" method="post">
                <div class="modal-body">
                    <p style="color:purple;">Fecha</p>
                    <input type="text" class="dateN" id="fecha" name="fech" data-tabindex="1" />
                    <br><p style="color:purple;">Hora</p>
                    <input type="text" class="hora" id="hora" name="hora" data-tabindex="1" />
                    <input type="hidden" name="id" id="id"/>
                    <input type="hidden" name="accion" id="accion"/>
                </div>
                <div class="modal-footer">
                    <button type="button" data-dismiss="modal" class="btn">Cancelar</button>
                    <button type="submit" class="btn btn-primary">Programar</button>
                </div>
            </form>
        </div>
            
             
             
             
             
             
             
             
             
             
            
            <script type="text/javascript">
                
            $(".dateN").datetimepicker({
                format: 'Y/m/d',
                timepicker: false,
                lang: 'es'
            });
            
 
    $('.example').DataTable();

        </script>
        

            
            <script src="Css/jquery.min.js" type="text/javascript"></script>
            <script src="Css/bootstrap-modalmanager.js" type="text/javascript"></script>
            <script src="Css/bootstrap-modal.js" type="text/javascript"></script>

            
            <script > 
                function pasarImg(a)
                {
                    document.getElementById('id').value = a;
                    document.getElementById('accion').value = 'editarImagen';
                }
                
                function pasarVid(a)
                {
                    document.getElementById('id').value = a;
                    document.getElementById('accion').value = 'editarVideo';
                }
            </script>
            
    </body>
</html>

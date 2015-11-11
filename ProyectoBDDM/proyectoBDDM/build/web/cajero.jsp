<%-- 
    Document   :
cajero
    Created on : 04-sep-2015, 18:10:50
    Author     : BrendaCázares
--%>

<%@page import="model.Video"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Happy ShopShop </title>
        <meta charset="UTF-8">

        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="Css/otroEstilo.css" rel="stylesheet" type="text/css"/>

        <!-- Copiar estos dos para el estilo tablas -->
        <link href="Css/jquery-ui.css" rel="stylesheet" type="text/css"/>
        <link href="Css/dataTables.jqueryui.min.css" rel="stylesheet" type="text/css"/>
        <!-- Copiar estos dos para el estilo tablas -->
        <script src="jquery-1.11.3.min.js" type="text/javascript"></script>
        <script src="jquery.js" type="text/javascript"></script>
        
         <!-- Copiar estos dos estilo tabla en este orden -->
        <script src="Css/jquery.dataTables.min.js" type="text/javascript"></script>
        <script src="Css/dataTables.jqueryui.min.js" type="text/javascript"></script>

    </head>
    <body>
         <div id="menu" class="menuCaja">
                <ul>
                    
                   

                    <ul>
                        <li>  <a href="<%= request.getServletContext().getContextPath()%>/indexServlet?accion=borrar" align="left">Cerrar Sesión</a></li>
                    </ul>
  
                </ul>
            </div>
        <div style="

             width: 950px;
             position: relative;
             float: left;

             ">
           
            <img id="logito"align="left" title="Logo Happy ShopShop"  alt="Logo Happy ShopShop" src = "Css/logoHappy.png"/>
            <img id="corpo1" align="rigth" title="Imagen Corporativa" style="
                 position: absolute;
                 left: 750px;
                  height: 88px;
    width: 120px;
                 
                 " alt="Imagen Corporativa" src = "Css/corporativa1.jpg"/> <br><br>

            <div class="TICKET">  

                <fieldset class="fieldset" id="fiTicket">

                    <table class="example" border="2" align="left" id="Products">
                        <thead>
                            <tr>
                                <th >ID</th>
                                <th >CODIGO</th>
                                <th >DESCRIPCION</th>
                                <th >CANTIDAD</th>
                                <th >SUBTOTAL</th>
                                <th >TOTAL</th>
                                <th style="width: 0.1px;">Editar</th>
                                <th style="width: 0.1px;">Borrar</th>
                            </tr>
                        </thead>
                        <tbody>

                        </tbody>
                    </table>

                    <!-- Todo la etiqueta script -->
        <script type="text/javascript">

            $('.example').DataTable();

        </script>
         <div id="respuesta1"><img id="respuesta"/></div>
                    <div id="textoBuscar">
                     
                        <input id="txt" class="Texto nueva" align="center" type="text" name="Codigo" placeholder="Codigo Articulo">
                        <input id="txt" class="Texto cantidad" align="center" type="text" name="cantidad" placeholder="Cantidad">
                        <input type="button" id="btn" name="btn" value="enviar"/>



                        <input id="txt" class="Texto" align="center" type="text" name="Buscar" placeholder="Buscar Articulo">
                    </div>
                </fieldset>




                <div class="contentTotales">
                    <div class="clTotales">
                        <fieldset class="fieldset" id="fiTotales" align="left">
                         
                            <img id="corpo1" align="left"  title="Imagen Corporativa" alt="Imagen Corporativa" src = "Css/corporativo2.jpg"/>
                            <form id="formtotales">
                                <table> 
                                
                                 <tr>
                        <td>
                        Subtotal:
                        </td>
                        <td>
                           <input id="txt" class="subtotal" align="center" type="text" name="subtotal">
                        </td>
                    </tr>
                    
                      <tr>
                        <td>
                        Descuento:
                        </td>
                        <td>
                          <input id="txt" class="descuento" type="text" name="descuento">
                        </td>
                    </tr>
                    
                      <tr>
                        <td>
                    Impuesto Total:
                        </td>
                        <td>
                           <input id="txt" class="impuesto" type="text" name="impuesto">
                        </td>
                    </tr>
                    
                       
                                </table>
                               
                            </form>
                            <h2 align="right" class="Total">TOTAL</h2>
                            <h1 align="right" class="numTotal"><div id="total1"></div></h1>
                        </fieldset>
                    </div>

                </div>


            </div>
        </div>
        <div style="

             position: relative;
             left: 950px;
             width: 100px;

             ">
            
            <div id="IMG" style="
                 width: 390px;
                 height: 320px;

                 ">

            </div>
            <div id="VID" style="


                 width: 390px;
                 height: 320px;
                 "
                 >

                <video id="reproductor" muted width="390px" height="320px"></video>

                <!-- <video src="Css/video1.mp4" width="390px" height="320px"  autoplay muted loop ></video>-->

            </div>
        </div>


        <%
            List<Video> vid = (List<Video>) request.getAttribute("vidios");
            String algo = "";
            int c = 0;
            if (vid != null) {
                for (Video vidio : vid) {

                    algo += vidio.getPathVideo();
                    if (c < vid.size() - 1) {
                        algo += ",";
                    }
                    c++;
                }
            }
        %>
        <input type="hidden" id="vidios" value="<%= algo%>" />



        <label id="info" visible="false" style=" color:#DCC2CE;" ></label>


        <script>
            window.onload = function playlist() {
                var algomas = document.getElementById("vidios").value;

                var reproductor = document.getElementById("reproductor"),
                        videos = algomas.split(","), //document.getElementById("vidios"),
                        info = document.getElementById("info");

                info.innerHTML = "Vídeo: " + videos[0];
                reproductor.src = videos[0] + ".mp4";
                reproductor.play();

                reproductor.addEventListener("ended", function () {
                    var nombreActual = info.innerHTML.split(": ")[1];
                    var actual = videos.indexOf(nombreActual);
                    actual = actual == videos.length - 1 ? 0 : actual + 1;
                    this.src = videos[actual] + ".mp4";
                    info.innerHTML = "Vídeo: " + videos[actual];
                    this.play();
                }, false);
            }
        </script>


        <script src="Css/jquery-latest.js" type="text/javascript"></script>

        <script>
            $(document).ready(
                    function () {

                        $("#btn").click(
                                function () {

                                    var codigo = $(".nueva").val();
                                    var cantidad = $(".cantidad").val();

                                    $.get('ajaxServlet', {codigo: codigo, cantidad: cantidad},
                                    function (responsetext)
                                    {
                                        var respuesta = responsetext.split("|");

                                        $("#respuesta").attr("src", respuesta[1]);

                                        $("#Products").append(respuesta[0]);

                                        $(".subtotal").val(respuesta[2]);
                                        $(".descuento").val(respuesta[3]);
                                        $(".impuesto").val(respuesta[4]);
                                        $("#total1").text(respuesta[5]);

                                        $(".nueva").val('');
                                        $(".cantidad").val('');

                                    }

                                    );
                                }

                        );


                    }


            );


        </script>

<script type="text/javascript">
function quitar(val) {

var id = "#"+val;

  $(id).remove();
  
  
  
}
</script>

<script type="text/javascript">
function editar() {
alert('val');
}
</script>
        
    </body>
</html>

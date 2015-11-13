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
 <link rel="icon" type="image/png" href="Css/icono.png" /> 
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
    <body onLoad="setInterval('contador()',1000);">
         <div id="menu" class="menuCaja">
                <ul>
                    
                   <label for="contador">Contador:</label><input type="text" id="contador">

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
                        <div style="width: 100%; overflow:scroll; height: 360px;">
                    <table class="example" border="2" align="left" id="Products">
                        <thead>
                            <tr>
                                <th id="productin" >ID</th>
                                <th id="productin">CODIGO</th>
                                <th id="productin">DESCRIPCION</th>
                                <th id="productin">CANTIDAD</th>
                                <th id="productin" >SUBTOTAL</th>
                                <th id="productin">TOTAL</th>
                                <th style="width: 0.1px;" id="productin">Editar</th>
                                <th style="width: 0.1px;" id="productin">Borrar</th>
                            </tr>
                        </thead>
                        <tbody>

                        </tbody>
                    </table>
</div>
                    <!-- Todo la etiqueta script -->
         <div id="respuesta1"><img id="respuesta"/></div>
                    <div id="textoBuscar">
                     
                        <input id="txt" class="Texto nueva" align="center" type="text" name="Codigo" placeholder="Codigo Articulo">
                        <input id="txt" class="Texto cantidad" align="center" type="text" name="cantidad" placeholder="Cantidad">
                        <input type="button" id="btn" name="btn" value="enviar"/>
<input type="button" id="btn1" name="btn1" value="finalizar" onclick="accions();"/>


                        <input id="txt" class="Texto" align="center" type="text" name="Buscar" placeholder="Buscar Articulo">
                    </div>
                </fieldset>




                <div class="contentTotales">
                    <div class="clTotales">
                        <fieldset class="fieldset" id="fiTotales" align="left">
                         
                            <img id="corpo1" align="left"  title="Imagen Corporativa" alt="Imagen Corporativa" src = "Css/corporativo2.jpg"/>
                            <form id="formtotales">
                                <table  id="totalines2"> 
                                
                                 <tr>
                        <td id="totalines">
                        Subtotal:
                        </td>
                        <td>
                           <input id="txt" class="subtotal" align="center" type="text" name="subtotal">
                        </td>
                    </tr>
                    
                      <tr>
                        <td id="totalines">
                        Descuento:
                        </td>
                        <td>
                          <input id="txt" class="descuento" type="text" name="descuento">
                        </td>
                    </tr>
                    
                      <tr>
                        <td id="totalines">
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



        <label id="info" visible="false" style=" color:whitesmoke;" ></label>

        
              <script>
function accions() 
{ 
var table = document.getElementById("Products");
var algo = "";
for (var i = 0, row; row = table.rows[i]; i++) {
   //iterate through rows
   //rows would be accessed using the "row" variable assigned in the for loop
   if(i > 0)
   {
   for (var j = 0, col; col = row.cells[j]; j++) {
     //iterate through columns
     //columns would be accessed using the "col" variable assigned in the for loop
     if(j > -1 && j <6)
     {
         if(j != 2)
             if(j!=5)
       algo += row.cells[j].innerHTML + ",";
       else
            algo += row.cells[j].innerHTML
   }
   }
    algo += "|"
   }
    
   
}

alert(algo);
} 

</script>
        

<script type="text/javascript">
var cont = 0;
function contador(){

var f = new Date();
var fecha = f.getDate() + "/" + (f.getMonth() +1) + "/" + f.getFullYear();

var hora = f.getHours()+":"+f.getMinutes()+":"+f.getSeconds(); 

	var contador = document.getElementById("contador");
	contador.value = cont;
	cont++;
}
</script>
        
        

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

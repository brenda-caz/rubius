<%-- 
    Document   :
cajero
    Created on : 04-sep-2015, 18:10:50
    Author     : BrendaCázares
--%>

<%@page import="model.Pago"%>
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
        <link href="Css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="Css/bootstrap-modal.css" rel="stylesheet" type="text/css"/>
        <!-- Copiar estos dos para el estilo tablas -->
        <script src="jquery-1.11.3.min.js" type="text/javascript"></script>
        <script src="jquery.js" type="text/javascript"></script>
        
         <!-- Copiar estos dos estilo tabla en este orden -->
        <script src="Css/jquery.dataTables.min.js" type="text/javascript"></script>
        <script src="Css/dataTables.jqueryui.min.js" type="text/javascript"></script>

        
        <script>
function tecla(e){
 var charCode = (e.which) ? e.which : event.keyCode
 if (charCode == 16){ document.getElementById('alggo').click();
      document.getElementById('txt').value='';
      document.getElementById('txt1').value='';
        }
        
 if(charCode == 18)
 {
     document.getElementById('txt').value='';
      document.getElementById('txt1').value='';
      $(".descuento").val('');
      document.getElementById('subtotal').value='';
      document.getElementById('total1').innerHTML='';
      $(".impuesto").val('');
       $( "tr" ).each(function() {
      $(".seeya").remove();
      $("#respuesta").attr("src", '');
                                      });
 }
}
</script>
        
    </head>
    <body ONKEYDOWN="javascript:return tecla(event)" onLoad="setInterval('contador()',1000);">
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
                        <div style="width: 100%; overflow:scroll; height: 360px;">
                    <table class="example" border="2" align="left" id="Products">
                        <thead>
                            <tr>
                                <th id="productin" style="display: none;" >ID</th>
                                <th id="productin">CÓDIGO</th>
                                <th id="productin">DESCRIPCIÓN</th>
                                <th id="productin" style="display: none;">depa</th>
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
                     
                        <input id="txt" class="Texto nueva" align="center" type="text" name="Codigo" placeholder="Código Artículo">
                        <input id="txt1" class="Texto cantidad" align="center" type="text" name="cantidad" placeholder="Cantidad">
                        <input type="button" class="btn btn10" name="btn" value="Enviar"/>
<input type="button" id="btn1" name="btn1" value="Finalizar"/>

<select id="idMetodoPago">
      <option value="0"  selected>
                        Seleccione una opción...
                    </option>
                    <%
                        List<Pago> pago = (List<Pago>) request.getAttribute("pago");
                        if (pago != null) {
                            for (Pago pag : pago) {
                    %>
                    <option value="<%= pag.getIdPago()%>">
                        <%= pag.getNombrePago()%>
                    </option>
                    <%
                            }
                        }
                    %>
</select> 
                    </div>
                </fieldset>




                <div class="contentTotales">
                    <div class="clTotales">
                        <fieldset class="fieldset" id="fiTotales" align="left">
                         
                            <img id="corpo1" align="left"  title="Imagen Corporativa" alt="Imagen Corporativa" src = "Css/corporativo2.jpg"/>
                            <form id="formtotales">
                                <table  id="totalines2" style=" margin-left: 300px; margin-top: 20px;"> 
                                
                                 <tr>
                        <td id="totalines">
                        Subtotal:
                        </td>
                        <td>
                           <input id="subtotal" class="subtotal" align="center" type="text" name="subtotal" disabled style="-moz-border-radius: 10px;-webkit-border-radius: 10px; border-radius: 10px; border: 1px solid #000000; padding: 0 4px 0 4px;">
                        </td>
                    </tr>
                    
                      <tr>
                        <td id="totalines">
                        Descuento:
                        </td>
                        <td>
                          <input id="txt" class="descuento" type="text" name="descuento" disabled>
                        </td>
                    </tr>
                    
                      <tr>
                        <td id="totalines">
                    Impuesto Total:
                        </td>
                        <td>
                           <input id="txt" class="impuesto" type="text" name="impuesto" disabled>
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


                 width: 370px;
                 height: 320px;
                 "
                 >

                <video id="reproductor" muted width="370px" height="320px"></video>

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

        
         <div id="stack1" class="modal hide fade" tabindex="-1" data-focus-on="input:first">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h3 style="color:purple;">Articulos</h3>
            </div>
                <div class="modal-body">
                     
                    <input id="descr" class="Texto" align="center" type="text" name="Buscar" placeholder="Buscar Articulo">
                    <input id="chaval" class="cantidad" placeholder="Cantidad" type="text">
                    <button type="button" id="btn23" class="btn btn-primary">Buscar</button>
                    <input id="hostia" class="nueva" type="hidden" >
                    <div id="dataa" style="width: 100%; overflow:scroll; height: 360px;">
                        <button type="button" class="btn10" id="daleee" style="display: none;">save</button>
                        <table class="example" border="2" align="left" id="Products1" style="width: 508px;">
                        <thead>
                            <tr>
                                <th id="productin" style="width: 100px;">CODIGO</th>
                                <th id="productin">IMAGEN</th>
                            </tr>
                        </thead>
                        <tbody>

                        </tbody>
                    </table>
</div>
                </div>
                <div class="modal-footer">
                    <button type="button" data-dismiss="modal" id="adiosh" class="btn btn-primary">Cancelar</button>
                </div>
        </div>
        
        
        
         <script>
            $(document).ready(
                    function () {

                        $("#btn1").click(
                                function () {

                                       var table = document.getElementById("Products");
var ticket = "";
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
             if(j!=6)
       ticket += row.cells[j].innerHTML + ",";
       else
            ticket += row.cells[j].innerHTML
   }
   }
    ticket += "¬"
   }
    
   
}


var subtotal = document.getElementById("subtotal").value;
var idMetodoPago = document.getElementById("idMetodoPago").value;


                                    $.get('guardarVentaServlet', {ticket: ticket, subtotal: subtotal, idMetodoPago: idMetodoPago},
                                    function (responsetext)
                                    {
                                        var respuesta = responsetext.split("¬");
                                         if(respuesta[0] == "limpiar")
                                         {
                                             $("#respuesta").attr("src", '');
                                        
                                        for(var bc = 0; bc <= respuesta[1]; bc++)
                                        {
                                        var id = "#"+bc;
                                        $(id).remove();
                                    }

                                        $(".subtotal").val('');
                                        $(".descuento").val('');
                                        $(".impuesto").val('');
                                        $("#total1").text('');

                                        $(".nueva").val('');
                                        $(".cantidad").val('');
                                             document.getElementById("idMetodoPago").value = 0;
                                         }
                                    }

                                    );





                                }

                        );


                    }


            );


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

                        $(".btn10").click(
                                function () {

                                    var codigo = $(".nueva").val();
                                    var cantidad = $(".cantidad").val();
                                    
                                    if(codigo=="")
                                        codigo = document.getElementById("hostia").value;
                                    if(cantidad=="")
                                        cantidad=document.getElementById("chaval").value;
                                    
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
                                        document.getElementById('adiosh').click();
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
function pasaros(val) {

document.getElementById("hostia").value = val;
  
  document.getElementById('daleee').click();
  
}
</script>

<script type="text/javascript">
function editar(val) {
document.getElementById("e"+val).innerHTML  = document.getElementById("txt1").value;
document.getElementById("txt1").value='';
}
</script>
        


<input type="button" id="alggo" data-toggle="modal" href="#stack1" style="display: none" />


<script>
            $(document).ready(
                    function () {

                        $("#btn23").click(
                                function () {

                                    var descr = $("#descr").val();

                                    $.get('buscarArticuloServlet', {descr: descr},
                                    function (responsetext)
                                    {
                                        $( "td" ).each(function() {
                                          $("#ccl").remove();
                                      });
                                        
                                        $("#Products1").append(responsetext);
                                      
                                        $("#descr").val('');
                                    }

                                    );
                                }

                        );


                    }


            );


        </script>

<script src="Css/jquery.min.js" type="text/javascript"></script>
            <script src="Css/bootstrap-modalmanager.js" type="text/javascript"></script>
            <script src="Css/bootstrap-modal.js" type="text/javascript"></script>


    </body>
</html>

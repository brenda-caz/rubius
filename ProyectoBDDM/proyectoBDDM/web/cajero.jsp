<%-- 
    Document   :
cajero
    Created on : 04-sep-2015, 18:10:50
    Author     : BrendaCázares
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Happy ShopShop </title>
        <meta charset="UTF-8">
        
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="Css/otroEstilo.css" rel="stylesheet" type="text/css"/>
       
    </head>
    <body>
        <div style="
    
    width: 950px;
    position: relative;
    float: left;

">
         <div id="menu" class="menuCaja">
<ul>
  <li class="nivel1"><a href="#" class="nivel1"></a>

	<ul>
		 <li>  <a href="index.jsp" align="left">Cerrar Sesión</a></li>
	</ul>

  </li>
</ul>
</div>
        <img id="logito"align="left" title="Logo Happy ShopShop"  alt="Logo Happy ShopShop" src = "Css/logoHappy.png"/>
        <img id="corpo1" align="rigth" title="Imagen Corporativa" style="
    position: relative;
    left: 175px;
" alt="Imagen Corporativa" src = "Css/corporativo2.jpg"/> <br><br>
 
        


        
         <div clas="TICKET">  
          
         <fieldset class="fieldset" id="fiTicket">
             <legend align="left">Productos</legend>
        <table  border="2" align="left" id="Products">
     
  <tr>
    <th scope="col">CODIGO</th>
    <th scope="col">DESCRIPCION</th>
    <th scope="col">CANTIDAD</th>
    <th scope="col">SUBTOTAL</th>
     <th scope="col">TOTAL</th>
    <th scope="col">BORRAR</th>
  </tr>
 
  <tr>
    <td>1234</td>
    <td>Ipad Mini</td>
    <td>1</td>
    <td>192.02</td>
    <td>192.02</td>
  </tr>
 
  <tr>
    <td>5467</td>
    <td>LG L90</td>
    <td>3</td>
    <td>500.00</td>
    <td>1500.00</td>
  </tr>
 
  <tr>
      <td>9578</td>
    <td>Laptop HP</td>
    <td>2</td>
    <td>3,000.00</td>
    <td>6,000.00</td>
  </tr>
 
  <tr>
    <th scope="row">TOTAL</th>
    <td>-</td>
     <td>6</td>
    <td>-</td>
    <td><strong>7,692.51</strong></td>
  </tr>
        </table>
             <div id="textoBuscar">
                 <input id="txt" class="Texto" align="center" type="text" name="Buscar" placeholder="Buscar Articulo">
             </div>
        </fieldset>
 
              
            
    
         <div class="contentTotales">
         <div class="clTotales">
             <fieldset class="fieldset" id="fiTotales" align="left">
              <img id="corpo1" align="left"  title="Imagen Corporativa" alt="Imagen Corporativa" src = "Css/corporativa1.jpg"/>
         <form id="formtotales">
             &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Subtotal:  &nbsp;&nbsp;&nbsp;&nbsp;<input  id="txt" align="center" type="text" name="subtotal"><br><br>
             &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Descuento:&nbsp;&nbsp;&nbsp;&nbsp; <input id="txt" type="text" name="descuento"><br><br>
  &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Impuesto Total: &nbsp;&nbsp;&nbsp;&nbsp; <input id="txt" type="text" name="descuento">
</form>
              <h2 align="right" class="Total">TOTAL</h2>
              <h1 align="right" class=numTotal"">23.01.13</h1>
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
    width: 410px;
    height: 320px;

    ">
            
        </div>
          <div id="VID" style="
    

    width: 410px;
    height: 320px;
    "
    ><video src="Css/video1.mp4" width="390px" height="320px"  autoplay muted loop ></video></div>
    </div>
    </body>
</html>

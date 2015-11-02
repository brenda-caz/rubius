<%-- 
    Document   : gestionDepartamento
    Created on : 05-sep-2015, 19:16:25
    Author     : BrendaCázares
--%>

<%@page import="java.util.List"%>
<%@page import="model.Departamento"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Departamento</title>
        <link href="Css/estiloAdmi.css" rel="stylesheet" type="text/css"/>
        <link href="jquery.datetimepicker.css" rel="stylesheet" type="text/css"/>
        <link href="Css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="Css/bootstrap-modal.css" rel="stylesheet" type="text/css"/>
        <script src="jquery-1.11.3.min.js" type="text/javascript"></script>
        <script src="jquery.js" type="text/javascript"></script>
        <script src="jquery.datetimepicker.js" type="text/javascript"></script>
        
        <!-- Copiar estos dos para el estilo tablas -->
        <link href="Css/jquery-ui.css" rel="stylesheet" type="text/css"/>
        <link href="Css/dataTables.jqueryui.min.css" rel="stylesheet" type="text/css"/>
        <!-- Copiar estos dos para el estilo tablas -->
        <script src="jquery-1.11.3.min.js" type="text/javascript"></script>
        <script src="jquery.js" type="text/javascript"></script>
        
         <!-- Copiar estos dos estilo tabla en este orden -->
        <script src="Css/jquery.dataTables.min.js" type="text/javascript"></script>
        <script src="Css/dataTables.jqueryui.min.js" type="text/javascript"></script>
        
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
                var nombreDepartamento = document.forms["addUser"]["agregarDepartamento"].value;
                var msj = "";
                var booleana = 0;
                
              //  valor = new Date(fechaNacimiento);
 
//if( !isNaN(valor) ) {
  //return false;
//}
                
                
                if (nombreDepartamento == null || nombreDepartamento.length == 0 || /^\s+$/.test(nombreDepartamento) || nombreDepartamento == "") {
                    booleana = 1;
                     document.forms["addUser"]["agregarDepartamento"].style.borderColor = "red";
                     
                }
                else
                {
                    document.forms["addUser"]["agregarDepartamento"].style.borderColor = "black";
                }
              
       
                
                if (booleana == 0) {
                    alert("Departamento guardado exitosamente.");
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
  <li class="nivel1"><a href="#" class="nivel1">Videos </a>

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

      <br><br><br><br><h2 id="encabezado">Departamento</h2>
       
<fieldset id="f1">

   <%
                Departamento depas = (Departamento) request.getAttribute("departamento");
                int id = 0;
                String nombreDepa = "";;

                if (depas != null) {
                    id = depas.getIdDepartamento();
                    nombreDepa = depas.getNombreDepartamento()!= null ? depas.getNombreDepartamento(): "";

                }
            %>
<form method="post" action="departamentoInsertarServlet" onsubmit="return validacion()" name="addUser">

<input type="hidden" name="idDepartamento" value="<%= id%>">
<span class="estilotd"> Nombre: </span> <input id="txt" type="text" name="agregarDepartamento" value="<%= nombreDepa%>" maxlength="75" >
<input id="botones" type="submit" value="Agregar" />
<input id="botones" type="reset" value="Cancelar" />

<table class="example" id="grid" border="1" align="left">
             <thead>
                <tr>
                    <th style="width: 0.1px;">Editar</th>
                    <th style="width: 0.1px;">Borrar</th>
            <th >Nombre</th>
             </tr>
                   </thead>
                   <tbody>
            
             <%
                List<Departamento> departamentos = (List<Departamento>) request.getAttribute("departamentos");
                if (departamentos != null) {
                    for (Departamento depa : departamentos) {  
            %>            
                        <tr>
                            <td>
                                <a href="<%= request.getServletContext().getContextPath()%>/departamentoConsultaServlet?accion=editar&id=<%= depa.getIdDepartamento()%>">
                                    <img src="Css/pencil-1.png" alt="Editar"/>
                            </td>
                            <td>
                              <a data-toggle="modal" href="#stack1" onclick="pasarVid(<%= depa.getIdDepartamento() %>)"><img src="Css/bote-1.png" alt="Editar"/></a>                    
                            </td>
                            
                            <td><%= depa.getNombreDepartamento()%></td>
                        
                        </tr>
            <%      }
                }
            %>
             </tbody>
             </table>
             

</form>
</fieldset>
            <!-- Todo la etiqueta script -->
        <script type="text/javascript">

            $('.example').DataTable();

        </script>         
        
        
        
        
        
        
        
        
         <div id="stack1" class="modal hide fade" tabindex="-1" data-focus-on="input:first">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h3 style="color:purple;">Eliminar Departamento</h3>
            </div>
            <form action="departamentoConsultaServlet" method="post">
                <div class="modal-body">
                    <p style="color:purple;">Estas seguro que deseas borrar el departamento?</p>
                    <input type="hidden" name="id" id="id"/>
                    <input type="hidden" name="accion" id="accion"/>
                </div>
                <div class="modal-footer">
                    <button type="button" data-dismiss="modal" class="btn">No</button>
                    <button type="submit" class="btn btn-primary">Si</button>
                </div>
            </form>
        </div>
            
            <script src="Css/jquery.min.js" type="text/javascript"></script>
            <script src="Css/bootstrap-modalmanager.js" type="text/javascript"></script>
            <script src="Css/bootstrap-modal.js" type="text/javascript"></script>

            
            <script > 
               function pasarVid(a)
                {
                    document.getElementById('id').value = a;
                    document.getElementById('accion').value = 'borrar';
                }
            </script>
        
        
        
        
        
        
        
        
        
        
        
        
    </body>
</html>

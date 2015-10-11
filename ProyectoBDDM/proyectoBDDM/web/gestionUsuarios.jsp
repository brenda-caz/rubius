<%-- 
    Document   : gestionArticulos
    Created on : 05-sep-2015, 17:29:29
    Author     : BrendaCázares
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuarios</title>
        <link href="Css/estiloAdmi.css" rel="stylesheet" type="text/css"/>
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

        <br><br><br><br>  <h2>Agregar Empleados</h2>

        <fieldset id="f1">
            <legend>Introduce la siguiente informaci&oacuten</legend> 
            <br><h3>Datos Personales</h3><br>
            <form method="post" enctype="multipart/form-data" action="usuarioInsertarServlet">
            <img align="right" title="Fotografia empledo" alt="Agregar foto usuario" src = "Css/foto.jpg"/>
            Foto: <input type="file" name="archivo" id="txt" required><br><br>
            Nombre: <input id="txt"  type="text" name="E2"><br><br>
            Apellido Paterno: <input id="txt"  type="text" name="apePaterno"><br><br>
            Apellido Materno: <input id="txt"  type="text" name="apeMaterno"><br><br>

            <caption>Sexo: &nbsp;</caption><br>
            <input type="radio" value="H" name="sexo" />Hombre
            <input type="radio" value="M" name="sexo"/>Mujer

            <caption>Fecha de nacimiento: &nbsp;</caption>
            <input id="txt" name="fechaNacimiento" type="text"><br><br>
            
            CURP:<input id="txt" type="text" name="curp"><br><br>
            Correo Electronico: <input id="txt"  type="text" name="emails"><br><br>

            <legend>Domicilio </legend>
            Calle:<input id="txt"  type="text" name="calle"><br><br>
            Numero:<input id="txt"  type="text" name="numero"><br><br>
            Colonia:<input id="txt"  type="text" name="colonia"><br><br>
            Ciudad:<input id="txt"  type="text" name="ciudad"><br><br>
            Estado:<input id="txt"  type="text" name="estado"><br><br>
            Codigo postal:<input id="txt"  type="text" name="postal"><br><br>
            Nivel academico <br>
            <select name="estudios">
                <option>Seleccionar...</option>
                <option value="jardin">Jardin de niños</option>
                <option value="Primaria">Primaria</option>
                <option value="Secundaria">Secundaria</option>
                <option value="Prepa">Preparatoria</option>
                <option value="Uni">Universidad</option>
                <option value="Maestria">Maestria</option>
                <option value="Doctorado">Doctorado</option>
                <option value="ninguno">Ninguno</option>
            </select>
            <br><br>Puesto: <input id="txt"  type="text" name="puesto"><br><br>
            RFC: <input id="txt"  type="text" name="rfc"><br><br>
            Numero de nomina: <input id="txt"  type="text" name="nomina"><br><br>

            <input id="botones" type="submit" value="Agregar" />

            <input id="botones" type="reset" value="Cancelar"/>
            </form>
        </fieldset>



    </body>
</html>

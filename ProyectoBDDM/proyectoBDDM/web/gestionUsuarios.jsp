<%-- 
    Document   : gestionArticulos
    Created on : 05-sep-2015, 17:29:29
    Author     : BrendaCázares
--%>

<%@page import="model.Estado"%>
<%@page import="model.Ciudad"%>
<%@page import="java.util.List"%>
<%@page import="model.NivelEstudios"%>
<%@page import="java.io.InputStream"%>
<%@page import="model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuarios</title>
        <link href="Css/estiloAdmi.css" rel="stylesheet" type="text/css"/>
        <link href="jquery.datetimepicker.css" rel="stylesheet" type="text/css"/>
        <script src="jquery-1.11.3.min.js" type="text/javascript"></script>
        <script src="jquery.js" type="text/javascript"></script>
        <script src="jquery.datetimepicker.js" type="text/javascript"></script>


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
                var nom = document.forms["addUser"]["E2"].value;
                var apePaterno = document.forms["addUser"]["apePaterno"].value;
                var apeMaterno = document.forms["addUser"]["apeMaterno"].value;
                var fechaNacimiento = document.forms["addUser"]["fechaNacimiento"].value;
                var nivelEstudio = document.forms["addUser"]["estudios"].value;
                var calle = document.forms["addUser"]["calle"].value;
                var numero = document.forms["addUser"]["numero"].value;
                var colonia = document.forms["addUser"]["colonia"].value;
                var municipio = document.forms["addUser"]["ciudad"].value;
                var estado = document.forms["addUser"]["estado"].value;
                var postal = document.forms["addUser"]["postal"].value;
                var rfc = document.forms["addUser"]["rfc"].value;
                var curp = document.forms["addUser"]["curp"].value;
                var nomina = document.forms["addUser"]["nomina"].value;
                var emails = document.forms["addUser"]["emails"].value;
                var msj = "";
                var booleana = 0;

                //  valor = new Date(fechaNacimiento);

//if( !isNaN(valor) ) {
                //return false;
//}

                if (nom == null || nom.length == 0 || /^\s+$/.test(nom) || nom == "") {
                    booleana = 1;
                    document.forms["addUser"]["E2"].style.borderColor = "red";
                }
                else
                {
                    document.forms["addUser"]["E2"].style.borderColor = "black";
                }

                if (apePaterno == null || apePaterno.length == 0 || /^\s+$/.test(apePaterno) || apePaterno == "") {
                    booleana = 1;
                    document.forms["addUser"]["apePaterno"].style.borderColor = "red";
                }
                else
                {
                    document.forms["addUser"]["apePaterno"].style.borderColor = "black";
                }

                if (apeMaterno == null || apeMaterno.length == 0 || /^\s+$/.test(apeMaterno) || apeMaterno == "") {
                    booleana = 1;
                    document.forms["addUser"]["apeMaterno"].style.borderColor = "red";
                }
                else
                {
                    document.forms["addUser"]["apeMaterno"].style.borderColor = "black";
                }


                if (fechaNacimiento == null || fechaNacimiento.length == 0 || /^\s+$/.test(fechaNacimiento) || fechaNacimiento == "") {
                    booleana = 1;
                    document.forms["addUser"]["fechaNacimiento"].style.borderColor = "red";
                }
                else
                {
                    document.forms["addUser"]["fechaNacimiento"].style.borderColor = "black";
                }


                if (nivelEstudio == null || nivelEstudio.length == 0 || /^\s+$/.test(nivelEstudio) || nivelEstudio == "" || nivelEstudio == "0" || nivelEstudio == 0) {
                    booleana = 1;
                    document.forms["addUser"]["estudios"].style.borderColor = "red";
                }
                else
                {
                    document.forms["addUser"]["estudios"].style.borderColor = "black";
                }



                if (calle == null || calle.length == 0 || /^\s+$/.test(calle) || calle == "") {
                    booleana = 1;
                    document.forms["addUser"]["calle"].style.borderColor = "red";
                }
                else
                {
                    document.forms["addUser"]["calle"].style.borderColor = "black";
                }


                if (numero == null || numero.length == 0 || /^\s+$/.test(numero) || numero == "" || numero == "0" || numero == 0) {
                    booleana = 1;
                    document.forms["addUser"]["numero"].style.borderColor = "red";
                }
                else
                {
                    document.forms["addUser"]["numero"].style.borderColor = "black";
                }


                if (colonia == null || colonia.length == 0 || /^\s+$/.test(colonia) || colonia == "") {
                    booleana = 1;
                    document.forms["addUser"]["colonia"].style.borderColor = "red";
                }
                else
                {
                    document.forms["addUser"]["colonia"].style.borderColor = "black";
                }


                if (municipio == null || municipio.length == 0 || /^\s+$/.test(municipio) || municipio == "" || municipio == "0" || municipio == 0) {
                    booleana = 1;
                    document.forms["addUser"]["ciudad"].style.borderColor = "red";
                }
                else
                {
                    document.forms["addUser"]["ciudad"].style.borderColor = "black";
                }


                if (estado == null || estado.length == 0 || /^\s+$/.test(estado) || estado == "" || estado == "0" || estado == 0) {
                    booleana = 1;
                    document.forms["addUser"]["estado"].style.borderColor = "red";
                }
                else
                {
                    document.forms["addUser"]["estado"].style.borderColor = "black";
                }


                if (postal == null || postal.length == 0 || /^\s+$/.test(postal) || postal == "" || postal == "0" || postal == 0) {
                    booleana = 1;
                    document.forms["addUser"]["postal"].style.borderColor = "red";
                }
                else
                {
                    document.forms["addUser"]["postal"].style.borderColor = "black";
                }


                if (rfc == null || rfc.length == 0 || /^\s+$/.test(rfc) || rfc == "") {
                    booleana = 1;
                    document.forms["addUser"]["rfc"].style.borderColor = "red";
                }
                else
                {
                    document.forms["addUser"]["rfc"].style.borderColor = "black";
                }


                if (curp == null || curp.length == 0 || /^\s+$/.test(curp) || curp == "") {
                    booleana = 1;
                    document.forms["addUser"]["curp"].style.borderColor = "red";
                }
                else
                {
                    document.forms["addUser"]["curp"].style.borderColor = "black";
                }


                if (nomina == null || nomina.length == 0 || /^\s+$/.test(nomina) || nomina == "" || nomina == "0" || nomina == 0) {
                    booleana = 1;
                    document.forms["addUser"]["nomina"].style.borderColor = "red";
                }
                else
                {
                    document.forms["addUser"]["nomina"].style.borderColor = "black";
                }

                expr = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
                if (!expr.test(emails)) {
                    booleana = 1;
                    document.forms["addUser"]["emails"].style.borderColor = "red";
                }
                else
                {
                    document.forms["addUser"]["emails"].style.borderColor = "black";
                }

                if (booleana == 0) {
                    alert("Usuario guardado exitosamente.");
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

            <%
                Usuario usua = (Usuario) request.getAttribute("usuario");
                int id = 0;
                String nombre = "";
                String apePaterno = "";
                String apeMaterno = "";
                String puesto = "";
                String sexo = "";
                String fechaNacimiento = "";
                int nivelEstudio = 0;
                String calle = "";
                int numero = 0;
                String colonia = "";
                int municipio = 0;
                int estado = 0;
                int postal = 0;
                String rfc = "";
                String curp = "";
                int nomina = 0;
                InputStream foto = null;
                String emails = "";

                if (usua != null) {
                    id = usua.getId();
                    nombre = usua.getNombre() != null ? usua.getNombre() : "";
                    apePaterno = usua.getApellidoPaterno() != null ? usua.getApellidoPaterno() : "";
                    apeMaterno = usua.getApellidoMaterno() != null ? usua.getApellidoMaterno() : "";
                    puesto = usua.getPuesto() != null ? usua.getPuesto() : "";
                    sexo = usua.getSexo() != null ? usua.getSexo() : "";
                    fechaNacimiento = usua.getFechaNacimiento() != null ? usua.getFechaNacimiento() : "";
                    nivelEstudio = usua.getNivelEstudio().getId();
                    calle = usua.getCalle() != null ? usua.getCalle() : "";
                    numero = usua.getNumero();
                    colonia = usua.getColonia() != null ? usua.getColonia() : "";
                    municipio = usua.getMunicipio().getIdCiudad();
                    estado = usua.getEstado().getIdEstado();
                    postal = usua.getPostal();
                    rfc = usua.getRFC() != null ? usua.getRFC() : "";
                    curp = usua.getCURP() != null ? usua.getCURP() : "";
                    nomina = usua.getNomina();
                    foto = usua.getFoto();
                    emails = usua.getEmail() != null ? usua.getEmail() : "";

                }
            %>

            <form name="addUser" method="post" enctype="multipart/form-data" action="usuarioInsertarServlet" onsubmit="return validacion()">
                <img align="right" id="blah" title="Fotografia empledo" style="width: 150px; height: 150px;" alt="Agregar foto usuario" src = "<%= request.getServletContext().getContextPath() + "/imagenUsuario?id=" + id%>"/>
                Foto: <input type="file" name="archivo" id="txt" <%= usua == null ? "required" : ""%> value="<%= request.getServletContext().getContextPath() + "/imagenUsuario?id=" + id%>"><br><br>
                Nombre: <input id="txt"  type="text" name="E2" value="<%= nombre%>" ><br><br>
                Apellido Paterno: <input id="txt"  type="text" name="apePaterno" value="<%= apePaterno%>"><br><br>
                Apellido Materno: <input id="txt"  type="text" name="apeMaterno" value="<%= apeMaterno%>"><br><br>

                <caption>Sexo: &nbsp;</caption><br>
                <% if ("H".equals(sexo)) { %>
                <input type="radio" value="H" name="sexo" checked/>Hombre
                <input type="radio" value="M" name="sexo"/>Mujer
                <% } else { %>
                <input type="radio" value="H" name="sexo" />Hombre
                <input type="radio" value="M" name="sexo" checked/>Mujer
                <%}%>
                <br><br>
                <caption>Fecha de nacimiento: &nbsp;</caption>
                <input id="txt" class="dateN" name="fechaNacimiento" type="text" value="<%= fechaNacimiento%>"><br><br>

                CURP:<input id="txt" type="text" name="curp" value="<%= curp%>"><br><br>
                Correo Electronico: <input id="txt"  type="text" name="emails" value="<%= emails%>"><br><br>

                <legend>Domicilio </legend>
                Calle:<input id="txt"  type="text" name="calle" value="<%= calle%>"><br><br>
                Numero:<input id="txt"  type="text" name="numero" value="<%= numero == 0 ? "" : numero%>" onkeypress="javascript:return validarNum(event)"><br><br>
                Colonia:<input id="txt"  type="text" name="colonia" value="<%= colonia%>"><br><br>
                Ciudad: <br>
                <select name="ciudad">
                    <option value="0"  <%= usua == null ? "selected" : ""%>>
                        Seleccione una opcion...
                    </option>
                    <%
                        List<Ciudad> ciu = (List<Ciudad>) request.getAttribute("ciudades");
                        if (ciu != null) {
                            for (Ciudad mun : ciu) {
                    %>
                    <option value="<%= mun.getIdCiudad()%>" <%= usua != null && usua.getMunicipio().getIdCiudad() == mun.getIdCiudad() ? "selected" : ""%> >
                        <%= mun.getNombreCiudad()%>
                    </option>
                    <%
                            }
                        }
                    %>
                </select>

                <br>  Estado <br>
                <select name="estado">
                    <option value="0"  <%= usua == null ? "selected" : ""%>>
                        Seleccione una opcion...
                    </option>
                    <%
                        List<Estado> est = (List<Estado>) request.getAttribute("estados");
                        if (est != null) {
                            for (Estado es : est) {
                    %>
                    <option value="<%= es.getIdEstado()%>" <%= usua != null && usua.getEstado().getIdEstado() == es.getIdEstado() ? "selected" : ""%>>
                        <%= es.getNombreEstado()%>
                    </option>
                    <%
                            }
                        }
                    %>
                </select>
                <br><br>Codigo postal:<input id="txt"  type="text" name="postal" value="<%= postal == 0 ? "" : postal%>" onkeypress="javascript:return validarNum(event)"><br><br>
                Nivel academico <br>
                <select name="estudios">
                    <option value="0"  <%= usua == null ? "selected" : ""%>>
                        Seleccione una opcion...
                    </option>
                    <%
                        List<NivelEstudios> nes = (List<NivelEstudios>) request.getAttribute("estudios");
                        if (nes != null) {
                            for (NivelEstudios level : nes) {
                    %>
                    <option value="<%= level.getId()%>" <%= usua != null && usua.getNivelEstudio().getId() == level.getId() ? "selected" : ""%>>
                        <%= level.getNombreNivelEstudios()%>
                    </option>
                    <%
                            }
                        }
                    %>
                </select>
                <br><br>
                <caption>Puesto: &nbsp;</caption><br>
                <% if ("A".equals(puesto)) { %>
                <input type="radio" value="A" name="puesto" checked/>Administrador
                <input type="radio" value="C" name="puesto"/>Cajero
                <% } else { %>
                <input type="radio" value="A" name="puesto" />Administrador
                <input type="radio" value="C" name="puesto" checked/>Cajero
                <%}%>
                <br><br>
                RFC: <input id="txt"  type="text" name="rfc" value="<%= rfc%>"><br><br>
                Numero de nomina: <input id="txt"  type="text" name="nomina" value="<%= nomina == 0 ? "" : nomina%>" onkeypress="javascript:return validarNum(event)"><br><br>
                <input type="hidden" name="id" value="<%= id%>">
                <input id="botones" type="submit" value="Agregar" />

                <input id="botones" type="reset" value="Cancelar"/>
            </form>
        </fieldset>

        <script type="text/javascript">

            $(".dateN").datetimepicker();

            function readURL(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        $('#blah').attr('src', e.target.result);
                    }

                    reader.readAsDataURL(input.files[0]);
                }
            }

            $("#txt").change(function () {
                readURL(this);
            });
        </script>

    </body>
</html>

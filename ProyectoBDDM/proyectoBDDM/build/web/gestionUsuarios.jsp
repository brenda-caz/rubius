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
        <script src="jquery-1.11.3.min.js" type="text/javascript"></script>
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

            <form method="post" enctype="multipart/form-data" action="usuarioInsertarServlet">
                <img align="right" id="blah" title="Fotografia empledo" style="width: 150px; height: 150px;" alt="Agregar foto usuario" src = "<%= request.getServletContext().getContextPath() + "/imagenUsuario?id="+id %>"/>
                Foto: <input type="file" name="archivo" id="txt" <%= usua == null ? "required" : "" %> value="<%= request.getServletContext().getContextPath() + "/imagenUsuario?id="+id %>"><br><br>
                Nombre: <input id="txt"  type="text" name="E2" value="<%= nombre%>"><br><br>
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

                <caption>Fecha de nacimiento: &nbsp;</caption>
                <input id="txt" name="fechaNacimiento" type="text" value="<%= fechaNacimiento%>"><br><br>

                CURP:<input id="txt" type="text" name="curp" value="<%= curp%>"><br><br>
                Correo Electronico: <input id="txt"  type="text" name="emails" value="<%= emails%>"><br><br>

                <legend>Domicilio </legend>
                Calle:<input id="txt"  type="text" name="calle" value="<%= calle%>"><br><br>
                Numero:<input id="txt"  type="text" name="numero" value="<%= numero%>"><br><br>
                Colonia:<input id="txt"  type="text" name="colonia" value="<%= colonia%>"><br><br>
                Ciudad: <br>
                 <select name="ciudad">
                    <option value="0"  <%= usua == null ? "selected" : "" %>>
                                            Seleccione una opcion...
                                        </option>
                    <%
                                List<Ciudad> ciu = (List<Ciudad>) request.getAttribute("ciudades");
                                if (ciu != null) {
                                    for (Ciudad mun : ciu) {
                            %>
                                        <option value="<%= mun.getIdCiudad()%>" <%= usua != null && usua.getMunicipio().getIdCiudad()== mun.getIdCiudad()? "selected" : "" %> >
                                            <%= mun.getNombreCiudad()%>
                                        </option>
                            <%
                                    }
                                }
                            %>
                </select>
                
                <br>  Estado <br>
                 <select name="estado">
                    <option value="0"  <%= usua == null ? "selected" : "" %>>
                                            Seleccione una opcion...
                                        </option>
                    <%
                                List<Estado> est = (List<Estado>) request.getAttribute("estados");
                                if (est != null) {
                                    for (Estado es : est) {
                            %>
                                        <option value="<%= es.getIdEstado()%>" <%= usua != null && usua.getEstado().getIdEstado()== es.getIdEstado()? "selected" : "" %>>
                                            <%= es.getNombreEstado()%>
                                        </option>
                            <%
                                    }
                                }
                            %>
                </select>
                            <br><br>Codigo postal:<input id="txt"  type="text" name="postal" value="<%= postal%>"><br><br>
                Nivel academico <br>
                <select name="estudios">
                    <option value="0"  <%= usua == null ? "selected" : "" %>>
                                            Seleccione una opcion...
                                        </option>
                    <%
                                List<NivelEstudios> nes = (List<NivelEstudios>) request.getAttribute("estudios");
                                if (nes != null) {
                                    for (NivelEstudios level : nes) {
                            %>
                                        <option value="<%= level.getId() %>" <%= usua != null && usua.getNivelEstudio().getId()== level.getId()? "selected" : "" %>>
                                            <%= level.getNombreNivelEstudios()%>
                                        </option>
                            <%
                                    }
                                }
                            %>
                </select>
                <br><br>Puesto: <input id="txt"  type="text" name="puesto" value="<%= puesto%>"><br><br>
                RFC: <input id="txt"  type="text" name="rfc" value="<%= rfc%>"><br><br>
                Numero de nomina: <input id="txt"  type="text" name="nomina" value="<%= nomina%>"><br><br>
<input type="hidden" name="id" value="<%= id%>">
                <input id="botones" type="submit" value="Agregar" />

                <input id="botones" type="reset" value="Cancelar"/>
            </form>
        </fieldset>

<script type="text/javascript">
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

<%-- 
    Document   : gestionArticulos
    Created on : 05-sep-2015, 17:29:29
    Author     : BrendaCázares
--%>

<%@page import="model.Sucursal"%>
<%@page import="model.Departamento"%>
<%@page import="model.Estado"%>
<%@page import="model.Ciudad"%>
<%@page import="java.util.List"%>
<%@page import="model.NivelEstudios"%>
<%@page import="java.io.InputStream"%>
<%@page import="model.Usuario"%>
<%@page import="model.Articulo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
           <link rel="icon" type="image/png" href="Css/icono.png" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Articulos</title>
        <link href="Css/estiloAdmi.css" rel="stylesheet" type="text/css"/>
        <script src="jquery-1.11.3.min.js" type="text/javascript"></script>
        <link href="chosen.css" rel="stylesheet" type="text/css"/>

        <script src="jquery.js" type="text/javascript"></script>
        <script src="jquery.datetimepicker.js" type="text/javascript"></script>
        <script src="chosen.jquery.js" type="text/javascript"></script>

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
                var codigoArticulo = document.forms["addUser"]["codigoArticulo"].value;
                var descriCorta = document.forms["addUser"]["descriCorta"].value;
                var descriLarga = document.forms["addUser"]["descriLarga"].value;
                var precio = document.forms["addUser"]["precioArticulo"].value;
                var medida = document.forms["addUser"]["medida"].value;
                var existencia = document.forms["addUser"]["existencia"].value;
                var departamento = document.forms["addUser"]["departamento"].value;
                var msj = "";
                var booleana = 0;

                var sucursal = document.forms["addUser"]["sucursal"].value;


                if (sucursal == null || sucursal.length == 0 || /^\s+$/.test(sucursal) || sucursal == "" || sucursal == "0" || sucursal == 0) {
                    booleana = 1;
                    document.forms["addUser"]["sucursal"].style.borderColor = "red";
                }
                else
                {
                    document.forms["addUser"]["sucursal"].style.borderColor = "black";
                }

                if (codigoArticulo == null || codigoArticulo.length == 0 || /^\s+$/.test(codigoArticulo) || codigoArticulo == "" || codigoArticulo == "0" || codigoArticulo == 0) {
                    booleana = 1;
                    document.forms["addUser"]["codigoArticulo"].style.borderColor = "red";
                }
                else
                {
                    document.forms["addUser"]["codigoArticulo"].style.borderColor = "black";
                }

                if (descriCorta == null || descriCorta.length == 0 || /^\s+$/.test(descriCorta) || descriCorta == "") {
                    booleana = 1;
                    document.forms["addUser"]["descriCorta"].style.borderColor = "red";
                }
                else
                {
                    document.forms["addUser"]["descriCorta"].style.borderColor = "black";
                }

                if (descriLarga == null || descriLarga.length == 0 || /^\s+$/.test(descriLarga) || descriLarga == "") {
                    booleana = 1;
                    document.forms["addUser"]["descriLarga"].style.borderColor = "red";
                }
                else
                {
                    document.forms["addUser"]["descriLarga"].style.borderColor = "black";
                }


                if (precio == null || precio.length == 0 || /^\s+$/.test(precio) || precio == "" || precio == "0" || precio == 0) {
                    booleana = 1;
                    document.forms["addUser"]["precioArticulo"].style.borderColor = "red";
                }
                else
                {
                    document.forms["addUser"]["precioArticulo"].style.borderColor = "black";
                }


                if (medida == null || medida.length == 0 || /^\s+$/.test(medida) || medida == "") {
                    booleana = 1;
                    document.forms["addUser"]["medida"].style.borderColor = "red";
                }
                else
                {
                    document.forms["addUser"]["medida"].style.borderColor = "black";
                }


                if (existencia == null || existencia.length == 0 || /^\s+$/.test(existencia) || existencia == "" || existencia == "0" || existencia == 0) {
                    booleana = 1;
                    document.forms["addUser"]["existencia"].style.borderColor = "red";
                }
                else
                {
                    document.forms["addUser"]["existencia"].style.borderColor = "black";
                }


                if (departamento == null || departamento.length == 0 || /^\s+$/.test(departamento) || departamento == "" || departamento == "0" || departamento == 0) {
                    booleana = 1;
                    document.forms["addUser"]["departamento"].style.borderColor = "red";
                }
                else
                {
                    document.forms["addUser"]["departamento"].style.borderColor = "black";
                }





                if (booleana == 0) {
                    alert("Articulo guardado exitosamente.");
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

                    </ul>

                </li>
                <li class="nivel1"><a href="#" class="nivel1">Articulos</a>

                    <ul>
                        <li><a href="articuloConsultaServlet" align="left">Gestion Articulos</a></li>	
                         <li><a href="articuloInsertarServlet?inicio=no&id=0" align="left">Agregar Articulos</a></li>

                    </ul>

                </li>
                <li class="nivel1" ><a href="#" class="nivel1"> Videos</a>

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

        <br><br><br><br><h2 id="encabezado">Articulos</h2>
        <%
            Articulo artis = (Articulo) request.getAttribute("articulo");
            int id = 0;
            String codigoArticulo = "";
            String descriCorta = "";
            String descriLarga = "";
            double precio = 0;
            String medida = "";
            int existencia = 0;
            double impuesto = 0;
            double descuento = 0;
            int departamento = 0;
            String fotoArticulo = null;

            if (artis != null) {
                id = artis.getIdArticulo();
                codigoArticulo = artis.getCodigoArticulo() != null ? artis.getCodigoArticulo() : "";
                descriCorta = artis.getDescripcionCorta() != null ? artis.getDescripcionCorta() : "";
                descriLarga = artis.getDescripcionLarga() != null ? artis.getDescripcionLarga() : "";
                precio = artis.getPrecioPublico();
                medida = artis.getMedida() != null ? artis.getMedida() : "";
                existencia = artis.getExistencia();
                impuesto = artis.getImpuesto();
                descuento = artis.getDescuento();
                departamento = artis.getDepartamento().getIdDepartamento();
                fotoArticulo = artis.getImagen().getPath() != null ? artis.getImagen().getPath() : "";

            }
        %>


        <form name="addUser" id="agregarArticulos" enctype="multipart/form-data" method="post" action="articuloInsertarServlet" onsubmit="return validacion()">
            <br> <fieldset id="f1"><br>


                <input type="hidden" name="id" value="<%= id%>">
                <table id="tablones">

                    <tr>
                        <td class="estilotd">
                            Foto:
                        </td>
                        <td>
                            <div style="width: 150px; height: 150px;"> 
                                <img align="right" id="blah" title="Fotografia articulo" style="position: absolute; width: 150px; height: 150px;" alt="Agregar foto articulo" src = "<%= fotoArticulo == null ? "Css/usuari.png" : fotoArticulo %>"/>
                             <input style="height: 150px; width: 150px; border:1px; display: block !important; opacity: 0 !important; overflow: hidden !important; margin: 2px;" type="file" name="archivo" id="txt" accept="image/jpeg" <%= artis == null ? "required" : ""%> value="<%= fotoArticulo %>">
                            
                    </div>
                            
                           
                        </td>
                    </tr>

                    <tr>
                        <td class="estilotd">
                            Codigo del articulo:
                        </td>
                        <td>
                            <input id="txt"  type="text" name="codigoArticulo" value="<%= codigoArticulo%>" onkeypress="javascript:return validarNum(event)" maxlength="10" >
                        </td>
                    </tr>

                    <tr>
                        <td class="estilotd">
                            Precio:
                        </td>
                        <td>
                            <input id="txt"  type="text" name="precioArticulo" value="<%= precio == 0 ? "" : precio%>" onkeypress="javascript:return validarNum(event)" maxlength="10">
                        </td>
                    </tr>

                    <tr>
                        <td class="estilotd">
                            Descripcion corta:
                        </td>
                        <td>
                            <input id="txt"  type="text" name="descriCorta" value="<%= descriCorta%>" maxlength="150">
                        </td>
                    </tr>

                    <tr>
                        <td class="estilotd">
                            Descripcion larga:
                        </td>
                        <td>
                            <input id="txt"  type="text" name="descriLarga" value="<%= descriLarga%>" maxlength="500">
                        </td>
                    </tr>

                    <tr>
                        <td class="estilotd">
                            Departamento:
                        </td>
                        <td>
                            <select name="departamento">
                                <option value="0" <%= artis == null ? "selected" : ""%>>
                                    Seleccione una opcion...
                                </option>
                                <%
                                    List<Departamento> dep = (List<Departamento>) request.getAttribute("departamentos");
                                    if (dep != null) {
                                        for (Departamento depi : dep) {
                                %>
                                <option value="<%= depi.getIdDepartamento()%>" <%= artis != null && artis.getDepartamento().getIdDepartamento() == depi.getIdDepartamento() ? "selected" : ""%> >
                                    <%= depi.getNombreDepartamento()%>
                                </option>
                                <%
                                        }
                                    }
                                %>
                            </select>
                        </td>
                    </tr>
                    
                    <tr>
                        <td class="estilotd">
                            Sucursal:
                        </td>
                        <td>
                            <select name="sucursal">
                                <option value="0" <%= artis == null ? "selected" : ""%>>
                                    Seleccione una opcion...
                                </option>
                                <%
                                    List<Sucursal> suc = (List<Sucursal>) request.getAttribute("sucursal");
                                    if (suc != null) {
                                        for (Sucursal sucu : suc) {
                                %>
                                <option value="<%= sucu.getIdSucursal()%>" <%= artis != null && artis.getSucursal().getIdSucursal() == sucu.getIdSucursal()? "selected" : ""%> >
                                    <%= sucu.getNombreSucursal()%>
                                </option>
                                <%
                                        }
                                    }
                                %>
                            </select>
                        </td>
                    </tr>

                    <tr>
                        <td class="estilotd">
                            Unidad de medida:
                        </td>
                        <td>
                            <input id="txt"  type="text"  name="medida" value="<%= medida%>" maxlength="145">
                        </td>
                    </tr>

                    <tr>
                        <td class="estilotd">
                            Existencia: 
                        </td>
                        <td>
                            <input id="txt"  type="text"  name="existencia" value="<%= existencia == 0 ? "" : existencia%>" onkeypress="javascript:return validarNum(event)" maxlength="10" >
                        </td>
                    </tr>

                    <tr>
                        <td class="estilotd">
                            ¿Aplica impuesto?
                        </td>
                        <td>
                            <input id="id_radio1" type="radio" name="Impuestosa"  value="siI" <%= artis != null && artis.getImpuesto() > 0 ? "checked" : ""%> >SI &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input id="id_radio2" type= "radio" name= "Impuestosa" checked value="noI" <%= artis != null && artis.getImpuesto() <= 0 ? "checked" : ""%> >NO
                            <br>
                            <div id="div1">
                                <input type="radio" id="ola" name="Impuestos" value="1.10"  <%= artis != null && artis.getImpuesto() == 1.1 ? "checked" : ""%> >10% &nbsp;
                                <input type= "radio" name= "Impuestos"  value="1.16" <%= artis != null && artis.getImpuesto() == 1.16 ? "checked" : ""%> >16%
                            </div>
                            <br>
                        </td>
                    </tr>


                    <tr>
                        <td class="estilotd">
                            ¿Aplica Descuento? 
                        </td>
                        <td>
                            <input id="id_radio3" type="radio" name="descuentoa"  value="siD" <%= artis != null && descuento > 0 ? "checked" : ""%> >SI &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input id="id_radio4" type= "radio" name= "descuentoa" checked value="noD" <%= artis != null && descuento <= 0 ? "checked" : ""%>  >NO
                            <br>
                            <div id="div9">
                            <input id="id_radio5" type="radio" name="descuentopm" value="P" <%= artis != null && "P".equals(artis.getTipoDescuento()) ? "checked" : ""%> >Por porcentaje &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input id="id_radio6" type= "radio" name= "descuentopm"  value="M" <%= artis != null && "M".equals(artis.getTipoDescuento()) ? "checked" : ""%> >Por monto
                            </div>
                            <div id="novo" style="display: inline;">
                            <input id="txt" type="text"  name="descuento" value="<%= descuento == 0 ? "" : descuento%>" onkeypress="javascript:return validarNum(event)" maxlength="11" >
                            </div>
                            <div style="display: inline;" class="div2">%</div>
                        </td>
                    </tr>

                </table>

<!-- Impuesto: <input id="txt"  type="text"  name="impuesto" value="<%= impuesto == 0 ? "" : impuesto%>"onkeypress="javascript:return validarNum(event)" maxlength="10" ><br><br>-->

                            <input type="hidden" name="respaldo" value="<%= fotoArticulo %>" />

                <input id="botones" type="submit" value="Agregar" />

                <input id="botones" type="reset" value="Cancelar"/>



            </fieldset>
        </form>

<script>
    $(document).ready(function () {
    $('#id_radio3').click(function () {
        $('#id_radio5').prop("checked", "checked");
        $('#div9').show('slow');
        $('#novo').show('slow');
        $('.div2').show('slow');
    });
    $('#id_radio4').click(function () {
        $('#div9').hide('slow');
        $('.div2').hide('slow');
        $('#novo').hide('slow');
    });
});
</script>

<script>
    $(document).ready(function () {
        $('.div3').hide();
    $('#id_radio5').click(function () {
        $('.div3').hide('slow');
        $('.div2').show('slow');
    });
    $('#id_radio6').click(function () {
        $('.div2').hide('slow');
        $('.div3').show('slow');
    });
});
</script>

        <script>
            $(document).ready(function () {
                $('#id_radio1').click(function () {
                    $('#div1').show('slow');
                    $('#ola').prop("checked", "checked");
                });
                $('#id_radio2').click(function () {
                    $('#div1').hide('slow');
                });
            });
        </script>

        <script>

            $(document).ready(function () {
                $("select").chosen();
            });

        </script>

        
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

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.ArticuloDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Articulo;
import model.Usuario;

/**
 *
 * @author 
 */
@WebServlet(name = "ajaxServlet", urlPatterns = {"/ajaxServlet"})
public class ajaxServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String codigo = request.getParameter("codigo");
        int codigin = 0;
        if (codigo != null && !codigo.equals("")) {
            codigin = Integer.parseInt(codigo);
        }

        String strcantidad = request.getParameter("cantidad");
        int cantidad = 0;
        if (strcantidad != null && !strcantidad.equals("")) {
            cantidad = Integer.parseInt(strcantidad);
        }

        String msj = "";
        
        HttpSession session = request.getSession();
        Usuario usu = (Usuario) session.getAttribute("user");
        int suc = usu.getSucursal().getIdSucursal();
        
        Articulo arti = ArticuloDao.buscarArticuloC(codigin, suc, cantidad);

        HttpSession sessionC = request.getSession();
        HttpSession sessiont = request.getSession();
        List<Double> totales = new ArrayList<Double>();
        totales = (List<Double>) sessionC.getAttribute("total");

        int idtabla= (int) sessiont.getAttribute("idtabla");
        
        
        //aqui empieza calculo
        
        double precioPublico = arti.getPrecioPublico();
        double descuento = arti.getDescuento();
        double impuesto = arti.getImpuesto();
        double precioIva = 0;
        double valorDescuento = 0;
        double totalDescuento = 0;
        double precioFinalDescuento = 0;
        double precioFinal = 0;
        double precioFinalMaster = 0;
        double sumaImpuesto = 0;
        double sumaDescuento = 0;
        double sumaSubtotal = 0;
        double sumaTotal = 0;
        double subtotal = 0;
        //Calculo del iva
              /* 
        IMPUESTO
        precioArticulo * 1.16 = precioConIva
        precioArticulo * 1.10 = precioConIva*/
        
        if(impuesto > 0) {
            precioIva = precioPublico * impuesto;
            
            if(impuesto == 1.10)
            {
               sumaImpuesto = precioPublico * 0.10;
            }
            else
            {
                sumaImpuesto = precioPublico * 0.16;
            }
            
        }
        //calculo del descuento
         /* DESCUENTO
        1.- %descuento /100 = valorDescuento
        2.- precioArticulo * valorDescuento = totalDescuento
        3.-precioArticulo - totalDescuento = precioFinal
        
                  15% / 100 =  0.15
                  1200 * 0.15 = 180
                  1200 - 180= 1020*/
        
       
        if("P".contains(arti.getTipoDescuento()) && descuento > 0 && cantidad > 0)
        {
             valorDescuento = descuento / 100;
             totalDescuento = precioPublico * valorDescuento;
             precioFinalDescuento = precioPublico - totalDescuento;
             sumaDescuento = totalDescuento;
        }         
        
        if("M".contains(arti.getTipoDescuento()) && descuento > 0 && cantidad > 0)
        {
            totalDescuento = descuento;
            precioFinalDescuento = precioPublico - descuento;
            sumaDescuento = descuento;
        }
        
        if(descuento > 0 && impuesto > 0 && cantidad > 0)
        {
            precioFinal = precioIva - totalDescuento;
        }
        
        
        
        if(cantidad > 1 && cantidad > 0 && impuesto > 0 && descuento > 0)
        {
            precioFinalMaster = precioFinal * cantidad;
        }
        else if(cantidad > 1 && cantidad > 0 && impuesto > 0 && descuento == 0) 
        {
            precioFinalMaster = precioIva * cantidad;
        }
        else if(cantidad > 1 && cantidad > 0 && impuesto == 0 && descuento > 0) 
        {
            precioFinalMaster = precioFinalDescuento * cantidad;
        }
        else if(cantidad > 1 && cantidad > 0 && impuesto == 0 && descuento == 0) 
        {
            precioFinalMaster = precioPublico * cantidad;
        }
           
        
        subtotal = precioPublico * cantidad;
        
        if(totales.size()>0)
        {
        sumaSubtotal = totales.get(0) + subtotal;
        sumaDescuento = totales.get(1) + sumaDescuento;
        sumaImpuesto = totales.get(2) + sumaImpuesto;
        sumaTotal = totales.get(3) + precioFinalMaster;
        }
        else
        {
            sumaTotal = precioFinalMaster;
            sumaSubtotal = subtotal;
        }
        
        
      /*  un solo articulo
        totalArticulo = precioConIva + preciofinal*/

        
  
       
        
      /*  mas de un arcticulo
        totalArticulo = precioConIva + preciofinal
        totalAritculoFinal = totalArticulo * cantidadArticulos
        
        
        */

        if (arti != null) {
            msj = "<tr class='seeya' id=" + idtabla +"><td style=\"display: none;\">" + arti.getIdArticulo() + "</td>" + "<td>" + arti.getCodigoArticulo() + "</td>" + "<td>" + arti.getDescripcionCorta() + "</td>"+ "<td style=\"display: none;\">" + arti.getDepartamento().getIdDepartamento() + "</td>" + "<td id=e"+ idtabla + ">" + cantidad + "</td>" + "<td>" + subtotal + "</td>" + "<td>" + precioFinalMaster + "</td>" + "<td><a href=" + "javascript:editar("+ idtabla +");" + "><img src=\"Css/pencil-1.png\" style=\" width: 30px; height: 30px; \" alt=\"Editar\"/></a></td>" + "<td><a href=" + "javascript:quitar("+ idtabla +");" + "><img src=\"Css/bote-1.png\" style=\" width: 30px; height: 30px; \" alt=\"Borrar\"/></a></td>"  + "|" + arti.getImagen().getPath() + "|" + sumaSubtotal + "|" + sumaDescuento + "|" + sumaImpuesto + "|" + sumaTotal;
           idtabla++;
           sessiont.setAttribute("idtabla", idtabla);
        } else {
            msj = "Producto inexistente";
        }
        
        
        //sumas de todo

        List<Double> nuevo = new ArrayList<Double>();
        nuevo.add(sumaSubtotal);
         nuevo.add(sumaDescuento);
       nuevo.add(sumaImpuesto);
       nuevo.add(sumaTotal);

        sessionC.setAttribute("total", nuevo);

        response.getWriter().write(msj);

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>


}
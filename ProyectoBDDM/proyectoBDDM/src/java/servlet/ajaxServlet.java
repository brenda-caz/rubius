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

/**
 *
 * @author ErickAlejandro
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
        Articulo arti = ArticuloDao.buscarArticuloC(codigin);

        HttpSession sessionC = request.getSession();
        List<Double> totales = new ArrayList<Double>();
        totales = (List<Double>) sessionC.getAttribute("total");

        Double subtotal = cantidad * arti.getPrecioPublico();
        Double total = 0.0;
        Double descuent = 0.0;
        Double imp = 0.0;
        
        descuent = (double) arti.getDescuento() * cantidad;
        if (arti.getImpuesto() == 0) {
            total = subtotal - descuent;
        } else {
            imp = (double) arti.getImpuesto() * cantidad;
            total = subtotal - descuent;
            total = total * imp;
        }

        Double sumaSubTotal = 0.0;
        Double sumaDescuento = 0.0;
        Double SumaImpuesto = 0.0;
        Double sumaTotal = 0.0;
        if (totales.size() > 0) {
            sumaSubTotal = totales.get(0) + subtotal;
            sumaDescuento = totales.get(1) + descuent;
            SumaImpuesto = totales.get(2) + imp;
            if (SumaImpuesto > 0) {
                sumaTotal = totales.get(3) + total;
                sumaTotal = sumaTotal - sumaDescuento;
                sumaTotal = sumaTotal * SumaImpuesto;
            } else {
                sumaTotal = totales.get(3) + total;
                sumaTotal = sumaTotal - sumaDescuento;
            }
        } else {
            sumaSubTotal = subtotal;
            sumaDescuento = (double) arti.getDescuento();
            SumaImpuesto = (double) arti.getImpuesto();
            sumaTotal = total;
        }

        if (arti != null) {
            msj = "<tr><td>" + arti.getIdArticulo() + "</td>" + "<td>" + arti.getCodigoArticulo() + "</td>" + "<td>" + arti.getDescripcionCorta() + "</td>" + "<td>" + cantidad + "</td>" + "<td>" + subtotal + "</td>" + "<td>" + total + "</td>" + "|" + arti.getImagen().getPath() + "|" + sumaSubTotal + "|" + sumaDescuento + "|" + SumaImpuesto + "|" + sumaTotal;
        } else {
            msj = "Producto inexistente";
        }

        List<Double> nuevo = new ArrayList<Double>();
        nuevo.add(sumaSubTotal);
        nuevo.add(sumaDescuento);
        nuevo.add(SumaImpuesto);
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

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.VentaDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Articulo;
import model.Departamento;
import model.Pago;
import model.Sucursal;
import model.Usuario;
import model.Venta;

/**
 *
 * @author 
 */
@WebServlet(name = "guardarVentaServlet", urlPatterns = {"/guardarVentaServlet"})
public class guardarVentaServlet extends HttpServlet {

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
           String ticket = request.getParameter("ticket");
           String strsubtotal = request.getParameter("subtotal");
           double subtotal = 0;
        if (strsubtotal != null && !strsubtotal.equals("")) {
            subtotal = Double.parseDouble(strsubtotal);
        }
           String stridMetodoPago = request.getParameter("idMetodoPago");
           int idMetodoPago = 0;
        if (stridMetodoPago != null && !stridMetodoPago.equals("")) {
            idMetodoPago = Integer.parseInt(stridMetodoPago);
        }
        
        HttpSession session = request.getSession();
        Usuario usu = (Usuario) session.getAttribute("user");
        Venta v = new Venta(subtotal);
        Pago p = new Pago(idMetodoPago);
        v.setPagoVenta(p);
        v.setUsuarioVenta(usu);
        
        int idVenta = VentaDao.insertarVenta(v);
           
           if(!"".contains(ticket))
           {
           List<String> filas = Arrays.asList(ticket.split("¬"));
           
           for(int i = 0; i < filas.size(); i++)
           {
               String datos = filas.get(i);
               List<String> datosseparados = Arrays.asList(datos.split(","));
               v = new Venta(idVenta, Integer.parseInt(datosseparados.get(3)));
               Articulo ar = new Articulo(Integer.parseInt(datosseparados.get(0)));
               
               Departamento dp = new Departamento(Integer.parseInt(datosseparados.get(2))); 
               v.setArticuloVenta(ar);
               v.setDepartamentoVenta(dp);               
               VentaDao.insertarVentaVenta(v);
               
            }
           
           response.getWriter().write("limpiar¬"+filas.size());
           
           }
           
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

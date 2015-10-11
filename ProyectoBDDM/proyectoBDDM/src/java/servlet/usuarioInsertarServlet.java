/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.UsuarioDao;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import model.Usuario;

/**
 *
 * @author BrendaCázares
 */

public class usuarioInsertarServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
     private final String directorio = "archivos";
    
    private String extractExtension(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                String filename = s.substring(s.indexOf("=") + 2, s.length() - 1);
                return filename.substring(filename.indexOf(".") - 1, filename.length());
            }
        }
        return "";
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
            
        InputStream inputStream = null;
        
        String uploadPath = getServletContext().getRealPath("/" + directorio + "/");
        System.out.println("PATH: " + uploadPath);
        
        File fdir = new File(uploadPath);
        if (!fdir.exists()) {
            fdir.mkdir();
        }
        
        Part filePart = request.getPart("archivo");
        if (filePart != null && filePart.getSize() > 0) {
            String contentType = filePart.getContentType();
            if (!contentType.equals("image/jpeg")) {
                request.setAttribute("error", "Archivo con formato incorrecto.");
                RequestDispatcher disp = getServletContext().getRequestDispatcher("/12-agregarUsuario.jsp");
                disp.forward(request, response);
                
            } else {
                String nombreArchivo = String.valueOf(System.currentTimeMillis());
                nombreArchivo += extractExtension(filePart);
                
            if (contentType.equals("image/jpeg")) {
                    inputStream = filePart.getInputStream();
                }
            }
        }
        
        
        
            String strId = request.getParameter("id");
            int id = 0;
            if (strId != null && !strId.equals("")) {
                id = Integer.parseInt(strId);
            }
            String strnombre = request.getParameter("E2");
            String strapePaterno = request.getParameter("apePaterno");
            String strapeMaterno = request.getParameter("apeMaterno");
            String strfechaNacimiento = request.getParameter("fechaNacimiento");
            String strSexo = request.getParameter("sexo");            
            String strcurp = request.getParameter("curp");
            String stremails = request.getParameter("emails");
            String strcalle = request.getParameter("calle");
            String strnumero = request.getParameter("numero");
            int numero = 0;
            if (strnumero != null && !strnumero.equals("")) {
                numero = Integer.parseInt(strnumero);
            }
            String strcolonia = request.getParameter("colonia");
            String strciudad = request.getParameter("ciudad");
            String strestado = request.getParameter("estado");
            String strpostal = request.getParameter("postal");
               int postal = 0;
            if (strpostal != null && !strpostal.equals("")) {
                postal = Integer.parseInt(strpostal);
            }
            String strestudios = request.getParameter("estudios");
            String strpuesto = request.getParameter("puesto");
            String strrfc = request.getParameter("rfc");
            String strnomina = request.getParameter("nomina");
              int nominap = 0;
            if (strnomina != null && !strnomina.equals("")) {
                nominap = Integer.parseInt(strnomina);
            }

            
            
            
            
            

            Usuario u = new Usuario(strnombre, strapePaterno, strapeMaterno, strpuesto, strSexo, strfechaNacimiento, 
                    strestudios, strcalle, numero, strcolonia, strciudad, strestado, postal, strrfc, strcurp, 
                    nominap, inputStream, stremails);
              u.setId(id);

            if (id > 0) {
               // EmpleadoDao.actualizar(e);
            } else {
                UsuarioDao.insertarUsuario(u);
            }

            RequestDispatcher disp = getServletContext().getRequestDispatcher("/usuarioConsultaServlet");
            disp.forward(request, response);        
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
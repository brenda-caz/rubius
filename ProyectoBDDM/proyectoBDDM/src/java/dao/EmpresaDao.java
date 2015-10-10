/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Empresa;
import model.Imagen;
import model.Video;

/**
 *
 * @author BrendaCázares
 */
public class EmpresaDao {
        // buscar general
    public static List<Empresa> buscarEmpresa() {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            List<Empresa> empresas = new ArrayList();
            cs = connection.prepareCall("{ call listaEmpresa() }");
            rs = cs.executeQuery();
            while (rs.next()) {
                Empresa emp = new Empresa(
                        rs.getInt("idEmpresa"), 
                        rs.getString("eslogan"),  
                        rs.getBinaryStream(1)        
                );
                
                Imagen img = new Imagen(
                       rs.getInt("idImagen"),
                       rs.getString("pathImagen"),
                       rs.getDate("fechaImagen"),
                       rs.getDate("horaImagen")
                );
                        
                Video vid = new Video(
                       rs.getInt("idVideo"),
                       rs.getString("pathVideo"),
                       rs.getDate("fechaVideo"),
                       rs.getDate("horaVideo")
                );
                    emp.setImagenEmpresa(img);
                    emp.setVideoEmpresa(vid);
                    empresas.add(emp);
            }
            return empresas;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
            
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
    
}

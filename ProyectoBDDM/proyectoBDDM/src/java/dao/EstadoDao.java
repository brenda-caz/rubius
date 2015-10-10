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
import model.Estado;
import model.Departamento;

/**
 *
 * @author BrendaCázares
 */
public class EstadoDao {
    //busqueda general
     public static List<Estado> buscarEstados() {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            List<Estado> estados = new ArrayList();
            cs = connection.prepareCall("{ call listaCiudadEstado() }");
            rs = cs.executeQuery();
            while (rs.next()) {
                Estado est = new Estado(
                        rs.getInt("idEstado"), 
                        rs.getString("nombreEstado")     
                );

    
                
                               
                estados.add(est);
            }
            return estados;
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

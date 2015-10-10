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

import model.Ciudad;

import model.Estado;

/**
 *
 * @author BrendaCázares
 */
public class CiudadDao {
      //busqueda general
     public static List<Ciudad> buscarCiudades() {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            List<Ciudad> ciudades = new ArrayList();
            cs = connection.prepareCall("{ call listaCiudadEstado() }");
            rs = cs.executeQuery();
            while (rs.next()) {
                Ciudad ciu = new Ciudad(
                        rs.getInt("idCiudad"), 
                        rs.getString("nombreCiudad")       
                );

                Estado est = new Estado(
                       rs.getInt("idEstado"),
                       rs.getString("nombreEstado")
                );
                
                ciu.getEstado(est);                
                ciudades.add(ciu);
            }
            return ciudades;
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

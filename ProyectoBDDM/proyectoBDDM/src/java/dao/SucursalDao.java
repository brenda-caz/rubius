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
import model.Sucursal;

/**
 *
 * @author BrendaCázares
 */
public class SucursalDao {//busqueda general
     public static List<Sucursal> buscarSucursales() {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            List<Sucursal> sucursales = new ArrayList();
            cs = connection.prepareCall("{ call listaSucursal() }");
            rs = cs.executeQuery();
            while (rs.next()) {
                Sucursal suc = new Sucursal(
                        rs.getInt("idSucursal"), 
                        rs.getString("nombreSucursal")
                );

             
                            
                sucursales.add(suc);
            }
            return sucursales;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
            
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
     
     public static void borrarSucursal(int id) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        try {
            cs = connection.prepareCall("{ call eliminarSucursal(?) }");
            cs.setInt(1, id);
            cs.execute();            
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
     
     public static void insertarSucursal(Sucursal s) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        try {
            cs = connection.prepareCall("{ call insertSucursal(?) }");
            cs.setString(1, s.getNombreSucursal());
            cs.execute();
            
        } catch (Exception ex) {
            ex.printStackTrace();
            
        } finally {
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
    
     public static void actualizarSucursal(Sucursal s) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        try {
            cs = connection.prepareCall("{ call actualizarSucursal(?) }");
            cs.setString(1, s.getNombreSucursal());
            cs.execute();
            
        } catch (Exception ex) {
            ex.printStackTrace();
            
        } finally {
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
}

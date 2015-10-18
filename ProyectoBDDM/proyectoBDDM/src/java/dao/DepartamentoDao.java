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
import model.Departamento;
import model.Usuario;

/**
 *
 * @author BrendaCázares
 */
public class DepartamentoDao {
    // buscar general
    public static List<Departamento> buscarDepartamentos() {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            List<Departamento> departamentos = new ArrayList();
            cs = connection.prepareCall("{ call listaDepartamento() }");
            rs = cs.executeQuery();
            while (rs.next()) {
                Departamento dpo = new Departamento(
                        rs.getInt("idDepartamento"), 
                        rs.getString("nombreDepartamento")       
                );

                    departamentos.add(dpo);
            }
            return departamentos;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
            
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
    
    public static void borrarDepartamento(int id) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        try {
            cs = connection.prepareCall("{ call eliminarDepartamento(?) }");
            cs.setInt(1, id);
            cs.execute();            
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
    
     public static void insertarDepartamento(Departamento d) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        try {
            cs = connection.prepareCall("{ call insertDepartamento(?) }");
            cs.setString(1, d.getNombreDepartamento());
            cs.execute();
            
        } catch (Exception ex) {
            ex.printStackTrace();
            
        } finally {
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
     
     public static void actualizarDepartamento(Departamento d) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        try {
            cs = connection.prepareCall("{ call actualizarDepartamento(?,?) }");
            cs.setInt(1, d.getIdDepartamento());
            cs.setString(2, d.getNombreDepartamento());
            cs.execute();
            
        } catch (Exception ex) {
            ex.printStackTrace();
            
        } finally {
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
     
     public static Departamento buscarDepartamento(int id) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            cs = connection.prepareCall("{ call buscarDepartamento(?) }");
            cs.setInt(1, id);
            rs = cs.executeQuery();
            if (rs.next()) {
                Departamento dep = new Departamento( 
                     rs.getInt("idDepartamento"), 
                        rs.getString("nombreDepartamento")  
                );
                return dep;
            }
            return null;
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

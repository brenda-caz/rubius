/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;
import model.Usuario;

/**
 *
 * @author 
 */
public class UsuarioDao {
    //busqueda general
     public static List<Usuario> buscarUsuarios() {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            List<Usuario> empleados = new ArrayList();
            cs = connection.prepareCall("{ call listaUsuarios() }");
            rs = cs.executeQuery();
            while (rs.next()) {
                Usuario emp = new Usuario(
                        rs.getInt("idUsuario"), 
                        rs.getString("nombreUsuario"), 
                        rs.getString("apellidoPaterno"), 
                        rs.getString("apellidoMaterno"),
                        rs.getString("puesto"),
                        rs.getString("sexo"),
                        rs.getString("fechaNacimiento"),
                        rs.getString("nivelEstudios"),
                        rs.getString("calle"),
                        rs.getInt("numero"),
                        rs.getString("colonia"), 
                        rs.getString("nombreCiudad"), 
                        rs.getString("nombreEstado"), 
                        rs.getInt("codigoPostal"), 
                        rs.getString("RFC"),
                        rs.getString("CURP"),
                        rs.getInt("numeroNomina"),
                        rs.getBinaryStream(1),
                        rs.getString("correoElectronico") 
                );

                empleados.add(emp);
            }
            return empleados;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
            
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
    
     public static void insertarUsuario(Usuario e) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        try {
            cs = connection.prepareCall("{ call insertUsuario(?,?, ?,?,?, ?, ?, ?,?,?, ?, ?, ?,?,?, ?, ?, ?) }");
            cs.setString(1, e.getNombre());
            cs.setString(2, e.getApellidoPaterno());
            cs.setString(3, e.getApellidoMaterno());
            cs.setString(4, e.getPuesto());
            cs.setString(5, e.getSexo());
            cs.setString(6, e.getFechaNacimiento());
            cs.setString(7, e.getNivelEstudio());
            cs.setString(8, e.getCalle());
            cs.setInt(9, e.getNumero());
            cs.setString(10, e.getColonia());
            cs.setString(11, e.getMunicipio());
            cs.setString(12, e.getEstado());
            cs.setInt(13, e.getPostal());
            cs.setString(14, e.getRFC());
            cs.setString(15, e.getCURP());
            cs.setInt(16, e.getNomina());
            cs.setBlob(17, e.getFoto());
            cs.setString(18, e.getEmail());
            cs.execute();
            
        } catch (Exception ex) {
            ex.printStackTrace();
            
        } finally {
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
     
     public static void borrar(int id) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        try {
            cs = connection.prepareCall("{ call eliminarUsuario(?) }");
            cs.setInt(1, id);
            cs.execute();            
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
   
      public static void actualizarUsuario(Usuario u) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        try {
            cs = connection.prepareCall("{ call insertUsuario(?, ?, ?, ?,?,?, ?, ?, ?,?,?, ?, ?, ?,?,?, ?, ?) }");
                        cs.setString(1, u.getNombre());
                        cs.setString(2, u.getApellidoPaterno()); 
                        cs.setString(3, u.getApellidoMaterno());
                        cs.setString(4, u.getPuesto());
                        cs.setString(5, u.getSexo());
                        cs.setString(6, u.getFechaNacimiento());
                        cs.setString(7, u.getNivelEstudio());
                        cs.setString(8, u.getCalle());
                        cs.setInt(9, u.getNumero());
                        cs.setString(10, u.getColonia());
                        cs.setString(11, u.getMunicipio());
                        cs.setString(12, u.getEstado());
                        cs.setInt(13, u.getPostal());
                        cs.setString(14, u.getRFC());
                        cs.setString(15, u.getCURP());
                        cs.setInt(16, u.getNomina());
                        cs.setBinaryStream(17, u.getFoto());
                        cs.setString(18, u.getEmail());
                        cs.execute();
            
        } catch (Exception ex) {
            ex.printStackTrace();
            
        } finally {
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
     












    public static Usuario buscarUsuario(int id) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            cs = connection.prepareCall("{ call buscarUsuario(?) }");
            cs.setInt(1, id);
            rs = cs.executeQuery();
            if (rs.next()) {
                Usuario emp = new Usuario( 
                     rs.getInt("idUsuario"), 
                        rs.getString("nombreUsuario"), 
                        rs.getString("apellidoPaterno"), 
                        rs.getString("apellidoMaterno"),
                        rs.getString("puesto"),
                        rs.getString("sexo"),
                        rs.getString("fechaNacimiento"),
                        rs.getString("nivelEstudios"),
                        rs.getString("calle"),
                        rs.getInt("numero"),
                        rs.getString("colonia"), 
                        rs.getString("nombreCiudad"), 
                        rs.getString("nombreEstado"), 
                        rs.getInt("codigoPostal"), 
                        rs.getString("RFC"),
                        rs.getString("CURP"),
                        rs.getInt("numeroNomina"),
                        rs.getBinaryStream(1),
                        rs.getString("correoElectronico")    
                );
                return emp;
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

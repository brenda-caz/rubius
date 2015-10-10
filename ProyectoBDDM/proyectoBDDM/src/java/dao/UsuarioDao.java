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
    //busqyeda general
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
                        rs.getDate("fechaNacimiento"),
                        rs.getString("nivelEstudios"),
                        rs.getString("calle"),
                        rs.getInt("numero"),
                        rs.getString("colonia"), 
                        rs.getInt("municipio"), 
                        rs.getInt("estado"), 
                        rs.getInt("codigoPostal"), 
                        rs.getString("RFC"),
                        rs.getString("CURP"),
                        rs.getInt("numeroNomina"),
                        rs.getBinaryStream(1),
                        rs.getString("correoUsuario"),
                        rs.getInt("activoUsuario")  
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
            cs = connection.prepareCall("{ call insertUsuario(?, ?, ?, ?,?,?, ?, ?, ?,?,?, ?, ?, ?,?,?, ?, ?, ?,?,) }");
            cs.setString(1, e.getNombre());
            cs.setString(2, e.getApellido());
            cs.setString(3, e.getPuesto());
            cs.setString(4, e.getSexo());
            cs.setDate(5, e.getFechaNacimiento());
            cs.setString(6, e.getCalle());
            cs.setInt(7, e.getNumero());
            cs.setString(8, e.getColonia());
            cs.setInt(9, e.getMunicipio());
            cs.setInt(10, e.getEstado());
            cs.setInt(11, e.getPostal());
            cs.setString(12, e.getRFC());
            cs.setInt(13, e.getMunicipio());
            cs.setInt(14, e.getEstado());
            cs.setInt(15, e.getPostal());
            cs.setString(16, e.getRFC());
            cs.setString(17, e.getCURP());
            cs.setInt(18, e.getNomina());
            cs.setBlob(19, e.getFoto());
            cs.setString(20, e.getEmail());
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
   












//    public static Usuario buscarUsuario(int id) {
//        ConnectionPool pool = ConnectionPool.getInstance();
//        Connection connection = pool.getConnection();
//        CallableStatement cs = null;
//        ResultSet rs = null;
//        try {
//            cs = connection.prepareCall("{ call buscarUsuario(?) }");
//            cs.setInt(1, id);
//            rs = cs.executeQuery();
//            if (rs.next()) {//                Usuario usua = new Usuario(

//                        rs.getInt("id"), 
//                        rs.getString("nombreEmpleado"), 
//                        rs.getString("apePaterno"), 
//                        rs.getString("apeMaterno"),
//                        rs.getByte("sexo")); //aqui se le pone como en la base de datos
//               //asi se hace un join con llave foranea
//                //Departamento d = new Departamento(
//                //rs.getInt("idDepartamento",
//                //rs.getString("name" ));
//                //usua.setDepartamento(d);
//                
//                return usua;
//            }
//            return null;
//        } catch (Exception ex) {
//            ex.printStackTrace();
//            return null;
//            
//        } finally {
//            DBUtil.closeResultSet(rs);
//            DBUtil.closeStatement(cs);
//            pool.freeConnection(connection);
//        }
//    }
//    
    public static void actualizarUsuario(Usuario u) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        try {
            cs = connection.prepareCall("{ call insertUsuario(?, ?, ?, ?,?,?, ?, ?, ?,?,?, ?, ?, ?,?,?, ?, ?, ?,?,) }");
            cs.setString(1, u.getNombre());
            cs.setString(2, u.getApellido());
            cs.setString(3, u.getPuesto());
            cs.setString(4, u.getSexo());
            cs.setDate(5, u.getFechaNacimiento());
            cs.setString(6, u.getCalle());
            cs.setInt(7, u.getNumero());
            cs.setString(8, u.getColonia());
            cs.setInt(9, u.getMunicipio());
            cs.setInt(10, u.getEstado());
            cs.setInt(11, u.getPostal());
            cs.setString(12, u.getRFC());
            cs.setInt(13, u.getMunicipio());
            cs.setInt(14, u.getEstado());
            cs.setInt(15, u.getPostal());
            cs.setString(16, u.getRFC());
            cs.setString(17, u.getCURP());
            cs.setInt(18, u.getNomina());
            cs.setBlob(19, u.getFoto());
            cs.setString(20, u.getEmail());
            cs.execute();
            
        } catch (Exception ex) {
            ex.printStackTrace();
            
        } finally {
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
     
     
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.io.InputStream;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;
import model.Ciudad;
import model.Estado;
import model.NivelEstudios;
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
                        rs.getString("calle"),
                        rs.getInt("numero"),
                        rs.getString("colonia"),
                        rs.getInt("codigoPostal"),
                        rs.getString("RFC"),
                        rs.getString("CURP"),
                        rs.getInt("numeroNomina"),
                        rs.getBinaryStream(1),
                        rs.getString("correoElectronico")
                );

                NivelEstudios ne = new NivelEstudios(
                        rs.getInt("idNivelEstudio"),
                        rs.getString("nombreNivelEstudio")
                        
                );
                        Ciudad ci = new Ciudad(
                        rs.getInt("idCiudad"),
                        rs.getString("nombreCiudad")
                );
                        
                         Estado es = new Estado(
                        rs.getInt("idEstado"),
                        rs.getString("nombreEstado")
                );

                emp.setNivelEstudio(ne);
                emp.setMunicipio(ci);
                emp.setEstado(es);

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
            cs = connection.prepareCall("{ call insertUsuario(?,?, ?,?,?,?, ?, ?, ?,?,?, ?, ?, ?,?,?, ?, ?, ?) }");
            cs.setString(1, e.getNombre());
            cs.setString(2, e.getApellidoPaterno());
            cs.setString(3, e.getApellidoMaterno());
            cs.setString(4, e.getPuesto());
            cs.setString(5, e.getSexo());
            cs.setString(6, e.getFechaNacimiento());
            cs.setInt(7, e.getNivelEstudio().getId());
            cs.setString(8, e.getCalle());
            cs.setInt(9, e.getNumero());
            cs.setString(10, e.getColonia());
            cs.setInt(11, e.getMunicipio().getIdCiudad());
            cs.setInt(12, e.getEstado().getIdEstado());
            cs.setInt(13, e.getPostal());
            cs.setString(14, e.getRFC());
            cs.setString(15, e.getCURP());
            cs.setInt(16, e.getNomina());
            cs.setBlob(17, e.getFoto());
            cs.setString(18, e.getEmail());
            cs.setString(19, e.getContrasenia());
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
            cs = connection.prepareCall("{ call actualizarUsuario(?,?, ?, ?, ?,?,?, ?, ?, ?,?,?, ?, ?, ?,?,?, ?, ?,?) }");
            cs.setInt(1, u.getId());
            cs.setString(2, u.getNombre());
            cs.setString(3, u.getApellidoPaterno());
            cs.setString(4, u.getApellidoMaterno());
            cs.setString(5, u.getPuesto());
            cs.setString(6, u.getSexo());
            cs.setString(7, u.getFechaNacimiento());
            cs.setInt(8, u.getNivelEstudio().getId());
            cs.setString(9, u.getCalle());
            cs.setInt(10, u.getNumero());
            cs.setString(11, u.getColonia());
            cs.setInt(12, u.getMunicipio().getIdCiudad());
            cs.setInt(13, u.getEstado().getIdEstado());
            cs.setInt(14, u.getPostal());
            cs.setString(15, u.getRFC());
            cs.setString(16, u.getCURP());
            cs.setInt(17, u.getNomina());
            cs.setBinaryStream(18, u.getFoto());
            cs.setString(19, u.getEmail());
            cs.setString(20, u.getContrasenia());
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
                        rs.getString("calle"),
                        rs.getInt("numero"),
                        rs.getString("colonia"),
                        rs.getInt("codigoPostal"),
                        rs.getString("RFC"),
                        rs.getString("CURP"),
                        rs.getInt("numeroNomina"),
                        rs.getBinaryStream(1),
                        rs.getString("correoElectronico"),
                        rs.getString("contrasenia")
                );
                NivelEstudios ne = new NivelEstudios(rs.getInt("idNivelEstudio"));
                emp.setNivelEstudio(ne);
                Ciudad ci = new Ciudad(rs.getInt("idCiudad"));
                emp.setMunicipio(ci);
                Estado es = new Estado(rs.getInt("idEstado"));
                emp.setEstado(es);
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

    public static List<NivelEstudios> buscarNivelEstudios() {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            List<NivelEstudios> nes = new ArrayList<NivelEstudios>();
            cs = connection.prepareCall("{ call listaNivelEstudio() }");
            rs = cs.executeQuery();
            while (rs.next()) {
                NivelEstudios ne = new NivelEstudios(
                        rs.getInt("idNivelEstudio"),
                        rs.getString("nombreNivelEstudio"));
                nes.add(ne);
            }
            return nes;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;

        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
        
    }        

    public static List<Ciudad> buscarCiudades() {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            List<Ciudad> ciu = new ArrayList<Ciudad>();
            cs = connection.prepareCall("{ call listaCiudad() }");
            rs = cs.executeQuery();
            while (rs.next()) {
                Ciudad ci = new Ciudad(
                        rs.getInt("idCiudad"),
                        rs.getString("nombreCiudad"));
                ciu.add(ci);
            }
            return ciu;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;

        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
    
    public static List<Estado> buscarEstados() {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            List<Estado> est = new ArrayList<Estado>();
            cs = connection.prepareCall("{ call listaEstado() }");
            rs = cs.executeQuery();
            while (rs.next()) {
                Estado es = new Estado(
                        rs.getInt("idEstado"),
                        rs.getString("nombreEstado"));
                est.add(es);
            }
            return est;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;

        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
    
     public static InputStream imagenUsuario(int id) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        ResultSet rs = null;
        try { 
            cs = connection.prepareCall("{ call imagenUsuario(?) }");
            cs.setInt(1, id);
            rs = cs.executeQuery();
            if (rs.next()) {
                return rs.getBinaryStream(1);
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


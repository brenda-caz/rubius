/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.InputStream;
import java.sql.Date;
import javax.print.DocFlavor;

/**
 *
 * @author
 */
public class Usuario {

    private int id;
    private String nombre;
    private String apellidoPaterno;
    private String apellidoMaterno;
    private String puesto;
    private String sexo;
    private String fechaNacimiento;
    private NivelEstudios nivelEstudio;
    private String calle;
    private int numero;
    private String colonia;
    private Ciudad municipio;
    private Estado estado;
    private int postal;
    private String RFC;
    private String CURP;
    private int nomina;
    private InputStream foto;
    private String email;
    private String contrasenia;
    private Sucursal sucursal;

    public Usuario(int id, String nombre, String apellidoPaterno, String apellidoMaterno, String puesto, String sexo, String fechaNacimiento, String calle, int numero, String colonia, int postal, String RFC, String CURP, int nomina, InputStream foto, String email) {
        this.id = id;
        this.nombre = nombre;
        this.apellidoPaterno = apellidoPaterno;
        this.apellidoMaterno = apellidoMaterno;
        this.puesto = puesto;
        this.sexo = sexo;
        this.fechaNacimiento = fechaNacimiento;
        this.calle = calle;
        this.numero = numero;
        this.colonia = colonia;
        this.postal = postal;
        this.RFC = RFC;
        this.CURP = CURP;
        this.nomina = nomina;
        this.foto = foto;
        this.email = email;
    }

    public Usuario(String nombre, String apellidoPaterno, String apellidoMaterno, String puesto, String sexo, String fechaNacimiento, String calle, int numero, String colonia, int postal, String RFC, String CURP, int nomina, InputStream foto, String email) {
        this.nombre = nombre;
        this.apellidoPaterno = apellidoPaterno;
        this.apellidoMaterno = apellidoMaterno;
        this.puesto = puesto;
        this.sexo = sexo;
        this.fechaNacimiento = fechaNacimiento;
        this.calle = calle;
        this.numero = numero;
        this.colonia = colonia;
        this.postal = postal;
        this.RFC = RFC;
        this.CURP = CURP;
        this.nomina = nomina;
        this.foto = foto;
        this.email = email;
    }

    public Usuario(int id, String nombre, String apellidoPaterno, String apellidoMaterno, String puesto, String sexo, String fechaNacimiento, String calle, int numero, String colonia, int postal, String RFC, String CURP, int nomina, InputStream foto, String email, String contrasenia) {
        this.id = id;
        this.nombre = nombre;
        this.apellidoPaterno = apellidoPaterno;
        this.apellidoMaterno = apellidoMaterno;
        this.puesto = puesto;
        this.sexo = sexo;
        this.fechaNacimiento = fechaNacimiento;
        this.calle = calle;
        this.numero = numero;
        this.colonia = colonia;
        this.postal = postal;
        this.RFC = RFC;
        this.CURP = CURP;
        this.nomina = nomina;
        this.foto = foto;
        this.email = email;
        this.contrasenia = contrasenia;
    }

    public Usuario(String nombre, String apellidoPaterno, String apellidoMaterno, String puesto, String sexo, String fechaNacimiento, String calle, int numero, String colonia, int postal, String RFC, String CURP, int nomina, InputStream foto, String email, String contrasenia) {
        this.nombre = nombre;
        this.apellidoPaterno = apellidoPaterno;
        this.apellidoMaterno = apellidoMaterno;
        this.puesto = puesto;
        this.sexo = sexo;
        this.fechaNacimiento = fechaNacimiento;
        this.calle = calle;
        this.numero = numero;
        this.colonia = colonia;
        this.postal = postal;
        this.RFC = RFC;
        this.CURP = CURP;
        this.nomina = nomina;
        this.foto = foto;
        this.email = email;
        this.contrasenia = contrasenia;
    }

    public Usuario(int id, String nombre, String puesto) {
        this.id = id;
        this.nombre = nombre;
        this.puesto = puesto;
    }

    public Usuario( String nombre, String apellidoPaterno, int id) {
        this.id = id;
        this.nombre = nombre;
        this.apellidoPaterno = apellidoPaterno;
    }

    public Sucursal getSucursal() {
        return sucursal;
    }

    public void setSucursal(Sucursal sucursal) {
        this.sucursal = sucursal;
    }


    
    public Usuario(InputStream foto) {
        this.foto = foto;
    }

    public Usuario(int id) {
        this.id = id;
    }

    public Usuario(int id, String nombre) {
        this.id = id;
        this.nombre = nombre;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidoPaterno() {
        return apellidoPaterno;
    }

    public void setApellidoPaterno(String apellidoPaterno) {
        this.apellidoPaterno = apellidoPaterno;
    }

    public String getApellidoMaterno() {
        return apellidoMaterno;
    }

    public void setApellidoMaterno(String apellidoMaterno) {
        this.apellidoMaterno = apellidoMaterno;
    }

    public String getPuesto() {
        return puesto;
    }

    public void setPuesto(String puesto) {
        this.puesto = puesto;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(String fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    public NivelEstudios getNivelEstudio() {
        return nivelEstudio;
    }

    public void setNivelEstudio(NivelEstudios nivelEstudio) {
        this.nivelEstudio = nivelEstudio;
    }

    public String getCalle() {
        return calle;
    }

    public void setCalle(String calle) {
        this.calle = calle;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getColonia() {
        return colonia;
    }

    public void setColonia(String colonia) {
        this.colonia = colonia;
    }

    public int getPostal() {
        return postal;
    }

    public void setPostal(int postal) {
        this.postal = postal;
    }

    public String getRFC() {
        return RFC;
    }

    public void setRFC(String RFC) {
        this.RFC = RFC;
    }

    public String getCURP() {
        return CURP;
    }

    public void setCURP(String CURP) {
        this.CURP = CURP;
    }

    public int getNomina() {
        return nomina;
    }

    public void setNomina(int nomina) {
        this.nomina = nomina;
    }

    public InputStream getFoto() {
        return foto;
    }

    public void setFoto(InputStream foto) {
        this.foto = foto;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Ciudad getMunicipio() {
        return municipio;
    }

    public void setMunicipio(Ciudad municipio) {
        this.municipio = municipio;
    }

    public Estado getEstado() {
        return estado;
    }

    public void setEstado(Estado estado) {
        this.estado = estado;
    }

    public String getContrasenia() {
        return contrasenia;
    }

    public void setContrasenia(String contrasenia) {
        this.contrasenia = contrasenia;
    }

}

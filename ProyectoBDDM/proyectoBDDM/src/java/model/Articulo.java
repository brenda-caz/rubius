/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author BrendaCázares
 */
public class Articulo {
     private int idArticulo;
    private String codigoArticulo;
    private String descripcionCorta;
    private String descripcionLarga;
    private double precioPublico;
    private String medida;
    private int existencia;
    private int impuesto;
    private int descuento;
  
    private Departamento departamento;

    public Articulo(String codigoArticulo, String descripcionCorta, String descripcionLarga, double precioPublico, String medida, int existencia, int impuesto, int descuento) {
        this.codigoArticulo = codigoArticulo;
        this.descripcionCorta = descripcionCorta;
        this.descripcionLarga = descripcionLarga;
        this.precioPublico = precioPublico;
        this.medida = medida;
        this.existencia = existencia;
        this.impuesto = impuesto;
        this.descuento = descuento;
    }

    public Articulo(int idArticulo, String codigoArticulo, String descripcionCorta, String descripcionLarga, double precioPublico, String medida, int existencia, int impuesto, int descuento) {
        this.idArticulo = idArticulo;
        this.codigoArticulo = codigoArticulo;
        this.descripcionCorta = descripcionCorta;
        this.descripcionLarga = descripcionLarga;
        this.precioPublico = precioPublico;
        this.medida = medida;
        this.existencia = existencia;
        this.impuesto = impuesto;
        this.descuento = descuento;
   
    }

    public Articulo(int idArticulo, String descripcionCorta) {
        this.idArticulo = idArticulo;
        this.descripcionCorta = descripcionCorta;
    }


    public void setDepartamento(Departamento departamento) {
        this.departamento = departamento;
    }

    public Departamento getDepartamento() {
        return departamento;
    }

    public int getIdArticulo() {
        return idArticulo;
    }

    public void setIdArticulo(int idArticulo) {
        this.idArticulo = idArticulo;
    }

    public String getCodigoArticulo() {
        return codigoArticulo;
    }

    public void setCodigoArticulo(String codigoArticulo) {
        this.codigoArticulo = codigoArticulo;
    }

    public String getDescripcionCorta() {
        return descripcionCorta;
    }

    public void setDescripcionCorta(String descripcionCorta) {
        this.descripcionCorta = descripcionCorta;
    }

    public String getDescripcionLarga() {
        return descripcionLarga;
    }

    public void setDescripcionLarga(String descripcionLarga) {
        this.descripcionLarga = descripcionLarga;
    }

    public double getPrecioPublico() {
        return precioPublico;
    }

    public void setPrecioPublico(double precioPublico) {
        this.precioPublico = precioPublico;
    }

    public String getMedida() {
        return medida;
    }

    public void setMedida(String medida) {
        this.medida = medida;
    }

    public int getExistencia() {
        return existencia;
    }

    public void setExistencia(int existencia) {
        this.existencia = existencia;
    }

    public int getImpuesto() {
        return impuesto;
    }

    public void setImpuesto(int impuesto) {
        this.impuesto = impuesto;
    }

    public int getDescuento() {
        return descuento;
    }

    public void setDescuento(int descuento) {
        this.descuento = descuento;
    }
   
}

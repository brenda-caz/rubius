/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author BrendaCázares
 */
public class Venta {
    private int idVenta;
    private Sucursal sucursalVenta;
    private Departamento departamentoVenta;
    private Usuario usuarioVenta;
    private int cantidadVenta;
    private double subtotal;
    private Pago pagoVenta;
    private Articulo articuloVenta;
    private String fecha;

    public Venta(int cantidadVenta, double subtotal, String fecha) {
        this.cantidadVenta = cantidadVenta;
        this.subtotal = subtotal;
        this.fecha = fecha;
    }

    
    
    
    public Venta(int idVenta) {
        this.idVenta = idVenta;
    }

    public Venta(double subtotal) {
        this.subtotal = subtotal;
    }
    
    
    
    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }
    
    public Sucursal getSucursalVenta() {
        return sucursalVenta;
    }

    public void setSucursalVenta(Sucursal sucursalVenta) {
        this.sucursalVenta = sucursalVenta;
    }

    public Departamento getDepartamentoVenta() {
        return departamentoVenta;
    }

    public void setDepartamentoVenta(Departamento departamentoVenta) {
        this.departamentoVenta = departamentoVenta;
    }

    public Usuario getUsuarioVenta() {
        return usuarioVenta;
    }

    public void setUsuarioVenta(Usuario usuarioVenta) {
        this.usuarioVenta = usuarioVenta;
    }

    public Pago getPagoVenta() {
        return pagoVenta;
    }

    public void setPagoVenta(Pago pagoVenta) {
        this.pagoVenta = pagoVenta;
    }

    public Articulo getArticuloVenta() {
        return articuloVenta;
    }

    public void setArticuloVenta(Articulo articuloVenta) {
        this.articuloVenta = articuloVenta;
    }

    public Venta(int idVenta, int cantidadVenta, double subtotal, String fecha) {
        this.idVenta = idVenta;
        this.cantidadVenta = cantidadVenta;
        this.subtotal = subtotal;
        this.fecha = fecha;
    }

    public Venta(int idVenta, int cantidadVenta) {
        this.idVenta = idVenta;
        this.cantidadVenta = cantidadVenta;
    }

    
    
    public int getIdVenta() {
        return idVenta;
    }

    public void setIdVenta(int idVenta) {
        this.idVenta = idVenta;
    }

    public int getCantidadVenta() {
        return cantidadVenta;
    }

    public void setCantidadVenta(int cantidadVenta) {
        this.cantidadVenta = cantidadVenta;
    }

    public double getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(double subtotal) {
        this.subtotal = subtotal;
    }  
    
    
}

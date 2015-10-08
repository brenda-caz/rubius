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
    private Date fechaVenta;

    public Venta(int idVenta, int cantidadVenta, double subtotal, Date fechaVenta) {
        this.idVenta = idVenta;
        this.cantidadVenta = cantidadVenta;
        this.subtotal = subtotal;
        this.fechaVenta = fechaVenta;
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

    public Date getFechaVenta() {
        return fechaVenta;
    }

    public void setFechaVenta(Date fechaVenta) {
        this.fechaVenta = fechaVenta;
    }
    
    
    
}

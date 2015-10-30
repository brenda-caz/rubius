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
public class Imagen {
    private int idImagen;
    private String path;
    private String fechaImagen;
    private String horaImagen;
    private Articulo articuloImagen;
    private Empresa empresaImagen;

    public Imagen(int idImagen, String path, String fechaImagen, String horaImagen) {
        this.idImagen = idImagen;
        this.path = path;
        this.fechaImagen = fechaImagen;
        this.horaImagen = horaImagen;
    }

    public Imagen(int idImagen, String fechaImagen, String horaImagen) {
        this.idImagen = idImagen;
        this.fechaImagen = fechaImagen;
        this.horaImagen = horaImagen;
    }
    
    public Imagen(String path) {
        this.path = path;
    }

    public int getIdImagen() {
        return idImagen;
    }

    public String getPath() {
        return path;
    }

    public String getFechaImagen() {
        return fechaImagen;
    }

    public String getHoraImagen() {
        return horaImagen;
    }

    public void setFechaImagen(String fechaImagen) {
        this.fechaImagen = fechaImagen;
    }

    public void setHoraImagen(String horaImagen) {
        this.horaImagen = horaImagen;
    }

    public Articulo getArticuloImagen() {
        return articuloImagen;
    }

    public void setArticuloImagen(Articulo articuloImagen) {
        this.articuloImagen = articuloImagen;
    }

    public Empresa getEmpresaImagen() {
        return empresaImagen;
    }

    public void setEmpresaImagen(Empresa empresaImagen) {
        this.empresaImagen = empresaImagen;
    }
    
    
}

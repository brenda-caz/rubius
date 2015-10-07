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
    private Date fechaImagen;
    private String horaImagen;

    public Imagen(int idImagen, String path, Date fechaImagen, String horaImagen) {
        this.idImagen = idImagen;
        this.path = path;
        this.fechaImagen = fechaImagen;
        this.horaImagen = horaImagen;
    }

    public int getIdImagen() {
        return idImagen;
    }

    public String getPath() {
        return path;
    }

    public Date getFechaImagen() {
        return fechaImagen;
    }

    public String getHoraImagen() {
        return horaImagen;
    }

    public void setFechaImagen(Date fechaImagen) {
        this.fechaImagen = fechaImagen;
    }

    public void setHoraImagen(String horaImagen) {
        this.horaImagen = horaImagen;
    }
    
    
}

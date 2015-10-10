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
public class Video {
    private int idVideo;
    private String pathVideo;
    private Date fechaVideo;
    private Date horaVideo;
    private Articulo articuloVideo;
    private Empresa empresaVideo;

    public Video(int idVideo, String pathVideo, Date fechaVideo, Date horaVideo) {
        this.idVideo = idVideo;
        this.pathVideo = pathVideo;
        this.fechaVideo = fechaVideo;
        this.horaVideo = horaVideo;
    }

    public int getIdVideo() {
        return idVideo;
    }

    public void setIdVideo(int idVideo) {
        this.idVideo = idVideo;
    }

    public String getPathVideo() {
        return pathVideo;
    }

    public void setPathVideo(String pathVideo) {
        this.pathVideo = pathVideo;
    }

    public Date getFechaVideo() {
        return fechaVideo;
    }

    public void setFechaVideo(Date fechaVideo) {
        this.fechaVideo = fechaVideo;
    }

    public Date getHoraVideo() {
        return horaVideo;
    }

    public void setHoraVideo(Date horaVideo) {
        this.horaVideo = horaVideo;
    }

    public Articulo getArticuloVideo() {
        return articuloVideo;
    }

    public void setArticuloVideo(Articulo articuloVideo) {
        this.articuloVideo = articuloVideo;
    }

    public Empresa getEmpresaVideo() {
        return empresaVideo;
    }

    public void setEmpresaVideo(Empresa empresaVideo) {
        this.empresaVideo = empresaVideo;
    }
    
}

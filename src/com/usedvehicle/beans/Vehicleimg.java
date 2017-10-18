package com.usedvehicle.beans;

public class Vehicleimg {
    private Integer id;

    private Long vehicleid;

    private String fimg;

    private String bimg;

    private String limg;

    private String rimg;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Long getVehicleid() {
        return vehicleid;
    }

    public void setVehicleid(Long vehicleid) {
        this.vehicleid = vehicleid;
    }

    public String getFimg() {
        return fimg;
    }

    public void setFimg(String fimg) {
        this.fimg = fimg == null ? null : fimg.trim();
    }

    public String getBimg() {
        return bimg;
    }

    public void setBimg(String bimg) {
        this.bimg = bimg == null ? null : bimg.trim();
    }

    public String getLimg() {
        return limg;
    }

    public void setLimg(String limg) {
        this.limg = limg == null ? null : limg.trim();
    }

    public String getRimg() {
        return rimg;
    }

    public void setRimg(String rimg) {
        this.rimg = rimg == null ? null : rimg.trim();
    }
}
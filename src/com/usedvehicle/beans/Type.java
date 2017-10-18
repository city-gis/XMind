package com.usedvehicle.beans;

public class Type {
    private Long id;

    private String name;

    private Long seriesid;

    private Integer rn;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Long getSeriesid() {
        return seriesid;
    }

    public void setSeriesid(Long seriesid) {
        this.seriesid = seriesid;
    }

    public Integer getRn() {
        return rn;
    }

    public void setRn(Integer rn) {
        this.rn = rn;
    }
}
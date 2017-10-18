package com.usedvehicle.beans;

import java.math.BigDecimal;
import java.util.Date;

public class Vehicle {
    private Long id;

    private String vin;

    private Long typeid;

    private String licenseplatenumber;

    private String registercode;

    private BigDecimal mileage;

    private Date registerdate;

    private String type;

    private Long startingprice;

    private Long hopeprice;

    private Integer status;

    private Long memberid;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getVin() {
        return vin;
    }

    public void setVin(String vin) {
        this.vin = vin == null ? null : vin.trim();
    }

    public Long getTypeid() {
        return typeid;
    }

    public void setTypeid(Long typeid) {
        this.typeid = typeid;
    }

    public String getLicenseplatenumber() {
        return licenseplatenumber;
    }

    public void setLicenseplatenumber(String licenseplatenumber) {
        this.licenseplatenumber = licenseplatenumber == null ? null : licenseplatenumber.trim();
    }

    public String getRegistercode() {
        return registercode;
    }

    public void setRegistercode(String registercode) {
        this.registercode = registercode == null ? null : registercode.trim();
    }

    public BigDecimal getMileage() {
        return mileage;
    }

    public void setMileage(BigDecimal mileage) {
        this.mileage = mileage;
    }

    public Date getRegisterdate() {
        return registerdate;
    }

    public void setRegisterdate(Date registerdate) {
        this.registerdate = registerdate;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public Long getStartingprice() {
        return startingprice;
    }

    public void setStartingprice(Long startingprice) {
        this.startingprice = startingprice;
    }

    public Long getHopeprice() {
        return hopeprice;
    }

    public void setHopeprice(Long hopeprice) {
        this.hopeprice = hopeprice;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Long getMemberid() {
        return memberid;
    }

    public void setMemberid(Long memberid) {
        this.memberid = memberid;
    }
}
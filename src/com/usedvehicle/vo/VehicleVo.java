package com.usedvehicle.vo;

import java.math.BigDecimal;
import java.util.Date;

import org.springframework.web.bind.annotation.RequestParam;

public class VehicleVo {
	private Long hopePrice;
	private String licensePlateNumber;
	private Long memberId;
	private BigDecimal mileage;
	private String registerCode;
	
	private Date registerDate;
	private Long startingPrice;
	private String type;
	private Long typeId;
	private String vin;

	public Long getHopePrice() {
		return hopePrice;
	}

	public void setHopePrice(Long hopePrice) {
		this.hopePrice = hopePrice;
	}

	public String getLicensePlateNumber() {
		return licensePlateNumber;
	}

	public void setLicensePlateNumber(String licensePlateNumber) {
		this.licensePlateNumber = licensePlateNumber;
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public BigDecimal getMileage() {
		return mileage;
	}

	public void setMileage(BigDecimal mileage) {
		this.mileage = mileage;
	}

	public String getRegisterCode() {
		return registerCode;
	}

	public void setRegisterCode(String registerCode) {
		this.registerCode = registerCode;
	}

	public Date getRegisterDate() {
		return registerDate;
	}

	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}

	public Long getStartingPrice() {
		return startingPrice;
	}

	public void setStartingPrice(Long startingPrice) {
		this.startingPrice = startingPrice;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Long getTypeId() {
		return typeId;
	}

	public void setTypeId(Long typeId) {
		this.typeId = typeId;
	}

	public String getVin() {
		return vin;
	}

	public void setVin(String vin) {
		this.vin = vin;
	}

	@Override
	public String toString() {
		return "VehicleVo [hopePrice=" + hopePrice + ", licensePlateNumber=" + licensePlateNumber + ", memberId="
				+ memberId + ", mileage=" + mileage + ", registerCode=" + registerCode + ", registerDate="
				+ registerDate + ", startingPrice=" + startingPrice + ", type=" + type + ", typeId=" + typeId + ", vin="
				+ vin + "]";
	}

}

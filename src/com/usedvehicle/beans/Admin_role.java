package com.usedvehicle.beans;

public class Admin_role {
	private String roleid;
	private String name;
	private String description;
	private Integer listorder;
	private Integer status;
	public String getRoleid() {
		return roleid;
	}
	public void setRoleid(String roleid) {
		this.roleid = roleid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Integer getListorder() {
		return listorder;
	}
	public void setListorder(Integer listorder) {
		this.listorder = listorder;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	
}
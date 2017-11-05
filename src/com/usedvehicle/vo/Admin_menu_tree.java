package com.usedvehicle.vo;

public class Admin_menu_tree {
	  private String Id;
	  private String text;
	  public String getId() {
		return Id;
	}
	public void setId(String id) {
		Id = id;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getParent() {
		return parent;
	}
	public void setParent(String parent) {
		this.parent = parent;
	}
	private String parent;
	
}

package com.usedvehicle.common;

public class pagerHelperRQ {
private boolean _search;//是否有查询条件
private String nd; //查询序列号
private int rows;//行数
private int page;//页数
private int start;//开始行数
private String sidx;//用于排序的列名
private String sord;//排序方式
private String searchField;//查询字段
private String searchString;//查询条件
private String searchOper;//查询方式
private String filters;
public boolean is_search() {
	return _search;
}
public void set_search(boolean _search) {
	this._search = _search;
}
public String getNd() {
	return nd;
}
public void setNd(String nd) {
	this.nd = nd;
}
public int getRows() {
	return rows;
}
public void setRows(int rows) {
	this.rows = rows;
}
public int getPage() {
	return page;
}
public void setPage(int page) {
	this.page = page;
}
public String getSidx() {
	return sidx;
}
public void setSidx(String sidx) {
	this.sidx = sidx;
}
public String getSord() {
	return sord;
}
public void setSord(String sord) {
	this.sord = sord;
}
public String getSearchField() {
	return searchField;
}
public void setSearchField(String searchField) {
	this.searchField = searchField;
}
public String getSearchString() {
	return searchString;
}
public void setSearchString(String searchString) {
	this.searchString = searchString;
}
public String getSearchOper() {
	return searchOper;
}
public void setSearchOper(String searchOper) {
	this.searchOper = searchOper;
}
public String getFilters() {
	return filters;
}
public void setFilters(String filters) {
	this.filters = filters;
}
public int getStart() {
	return start;
}
public void setStart(int start) {
	if(this.page-->0){
		this.start = this.page-- * this.rows;
	}else{
		this.start = 0;
	}
}

}

package com.usedvehicle.service;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.usedvehicle.beans.sys_menus;
import com.usedvehicle.common.pagerHelperRQ;
import com.usedvehicle.common.pagerHelperRS;
import com.usedvehicle.vo.sys_menusvo;

public interface Isys_menusService {
	List<sys_menus>  queryAll();
	pagerHelperRS  serchbypager(pagerHelperRQ pager);
	List<sys_menus>  serchAll();
	//List<sys_menus_tree>  serchTree();
	int countAll(String name);
	int delById(String id);
	int addone(sys_menus menu);
	int modify(sys_menus menu);
	sys_menus serchByID(String id);
	List<sys_menusvo> serchwithmodel(String modelid);
	List<sys_menus> serchWithPage(String modelid,String userid);
}

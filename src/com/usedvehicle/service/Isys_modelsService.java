package com.usedvehicle.service;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.usedvehicle.beans.sys_modelmenu;
import com.usedvehicle.beans.sys_models;
import com.usedvehicle.common.pagerHelperRQ;
import com.usedvehicle.common.pagerHelperRS;

public interface Isys_modelsService {
	List<sys_models>  queryAll();
	pagerHelperRS  serchbypager(pagerHelperRQ pager);
	List<sys_models>  serchAll();
	//List<sys_models_tree>  serchTree();
	int countAll(String name);
	int delById(String id);
	int addone(sys_models menu);
	int modify(sys_models menu);
	sys_models serchByID(String id);
	boolean addmodelmenus(String modelid,List<sys_modelmenu> lstmodelmenu);
}

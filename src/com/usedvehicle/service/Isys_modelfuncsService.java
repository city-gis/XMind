package com.usedvehicle.service;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.usedvehicle.beans.sys_modelfuncs;
import com.usedvehicle.common.pagerHelperRQ;
import com.usedvehicle.common.pagerHelperRS;

public interface Isys_modelfuncsService {
	List<sys_modelfuncs>  queryAll();
	pagerHelperRS  serchbypager(pagerHelperRQ pager);
	List<sys_modelfuncs>  serchAll();
	//List<sys_modelfuncs_tree>  serchTree();
	int countAll(String name);
	int delById(String id);
	int addone(sys_modelfuncs menu);
	int modify(sys_modelfuncs menu);
	sys_modelfuncs serchByID(String id);
}

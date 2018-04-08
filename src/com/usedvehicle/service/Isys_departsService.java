package com.usedvehicle.service;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.usedvehicle.beans.sys_departs;
import com.usedvehicle.common.pagerHelperRQ;
import com.usedvehicle.common.pagerHelperRS;

public interface Isys_departsService {
	List<sys_departs>  queryAll();
	pagerHelperRS  serchbypager(pagerHelperRQ pager);
	List<sys_departs>  serchAll();
	//List<sys_departs_tree>  serchTree();
	int countAll(String name);
	int delById(String id);
	int addone(sys_departs menu);
	int modify(sys_departs menu);
	sys_departs serchByID(String id);
}

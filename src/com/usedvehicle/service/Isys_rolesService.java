package com.usedvehicle.service;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.usedvehicle.beans.sys_roles;
import com.usedvehicle.common.pagerHelperRQ;
import com.usedvehicle.common.pagerHelperRS;

public interface Isys_rolesService {
	List<sys_roles>  queryAll();
	pagerHelperRS  serchbypager(pagerHelperRQ pager);
	List<sys_roles>  serchAll();
	//List<sys_roles_tree>  serchTree();
	int countAll(String name);
	int delById(String id);
	int addone(sys_roles menu);
	int modify(sys_roles menu);
	sys_roles serchByID(String id);
}

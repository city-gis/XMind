package com.usedvehicle.service;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.usedvehicle.beans.Admin_role;
import com.usedvehicle.common.pagerHelperRQ;
import com.usedvehicle.common.pagerHelperRS;
//import com.usedvehicle.vo.Admin_role_tree;

public interface IAdmin_roleService {
	List<Admin_role>  queryAll();
	pagerHelperRS  serchbypager(pagerHelperRQ pager);
	List<Admin_role>  serchAll();
	//List<Admin_role_tree>  serchTree();
	int countAll(String name);
	int delById(String id);
	int addone(Admin_role menu);
	int modify(Admin_role menu);
	Admin_role serchByID(String id);
}

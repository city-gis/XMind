package com.usedvehicle.service;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.usedvehicle.beans.sys_users;
import com.usedvehicle.common.pagerHelperRQ;
import com.usedvehicle.common.pagerHelperRS;

public interface Isys_usersService {
	List<sys_users>  queryAll();
	pagerHelperRS  serchbypager(pagerHelperRQ pager);
	List<sys_users>  serchAll();
	//List<sys_users_tree>  serchTree();
	int countAll(String name);
	int delById(String id);
	int addone(sys_users menu);
	int modify(sys_users menu);
	sys_users serchByID(String id);
}

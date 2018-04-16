package com.usedvehicle.service;
import java.util.List;

import com.usedvehicle.beans.sys_departuser;
import com.usedvehicle.beans.sys_userrole;
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
	sys_users serchByName(String name);

	boolean adduserroles(String userid,List<sys_userrole> sys_userroles);
	boolean updateuserdeparts(String userid,List<sys_departuser> sys_departusers);
}

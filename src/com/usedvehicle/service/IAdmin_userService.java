package com.usedvehicle.service;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.usedvehicle.beans.Admin_user;
import com.usedvehicle.common.pagerHelperRQ;
import com.usedvehicle.common.pagerHelperRS;

public interface IAdmin_userService {
	List<Admin_user>  queryAll();
	pagerHelperRS  serchbypager(pagerHelperRQ pager);
	List<Admin_user>  serchAll();
	//List<Admin_user_tree>  serchTree();
	int countAll(String name);
	int delById(String id);
	int addone(Admin_user menu);
	int modify(Admin_user menu);
	Admin_user serchByID(String id);
}

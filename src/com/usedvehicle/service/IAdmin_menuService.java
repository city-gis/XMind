package com.usedvehicle.service;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.usedvehicle.beans.Admin_menu;
import com.usedvehicle.common.pagerHelperRQ;
import com.usedvehicle.common.pagerHelperRS;
import com.usedvehicle.vo.Admin_menu_tree;

public interface IAdmin_menuService {
	List<Admin_menu>  queryAll();
	pagerHelperRS  serchbypager(pagerHelperRQ pager);
	List<Admin_menu>  serchAll();
	List<Admin_menu_tree>  serchTree();
	int countAll(String name);
	int delById(int id);
}

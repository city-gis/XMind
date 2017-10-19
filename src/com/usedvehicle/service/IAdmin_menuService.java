package com.usedvehicle.service;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.usedvehicle.beans.Admin_menu;

public interface IAdmin_menuService {
	List<Admin_menu>  queryAll();
	List<Admin_menu>  serch(int page,int limit,String name);
	int countAll(String name);
	int delById(int id);
}

package com.usedvehicle.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.usedvehicle.beans.Admin_menu;
import com.usedvehicle.dao.Admin_menuMapper;
import com.usedvehicle.service.IAdmin_menuService;

import sun.invoke.empty.Empty;


@Service
public class Admin_menuServiceImpl implements IAdmin_menuService{
	@Autowired
	private Admin_menuMapper admin_menuDao;
	
	@Override
	public List<Admin_menu> queryAll() {
		List<Admin_menu> admin_menus = null;
		admin_menus = admin_menuDao.selectAll();
		return admin_menus;
	}
	@Override
	public List<Admin_menu> serch(int page,int limit,String name) {
		page =page--;
		if(page<0){page=0;}
		if(name==null){name="";}
		int start =page*limit;
		int end =start+limit;
		 //name="%"+name+"%";
		List<Admin_menu> admin_menus = null;
		admin_menus = admin_menuDao.serchByPage(start,end,name);
		return admin_menus;
	}
}

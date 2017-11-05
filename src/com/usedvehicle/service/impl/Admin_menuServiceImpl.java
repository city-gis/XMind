package com.usedvehicle.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sun.org.apache.bcel.internal.generic.NEW;
import com.usedvehicle.beans.Admin_menu;
import com.usedvehicle.common.pagerHelperRQ;
import com.usedvehicle.common.pagerHelperRS;
import com.usedvehicle.vo.Admin_menu_tree;
import com.usedvehicle.dao.Admin_menuMapper;
import com.usedvehicle.service.IAdmin_menuService;

import sun.invoke.empty.Empty;


@Service
public class Admin_menuServiceImpl implements IAdmin_menuService{
	@Autowired
	private Admin_menuMapper admin_menuDao;
	//@Autowired
	private pagerHelperRS pagerRs;
	
	@Override
	public List<Admin_menu> queryAll() {
		List<Admin_menu> admin_menus = null;
		admin_menus = admin_menuDao.selectAll();
		return admin_menus;
	}
	@Override
	public pagerHelperRS serchbypager(pagerHelperRQ pager) {
		pager.setStart();
		pagerRs=new pagerHelperRS();
		List<Admin_menu> admin_menus = null;
		int count = admin_menuDao.countAll(pager.getSearchString());
		//return count;
		admin_menus = admin_menuDao.serchByPage(pager);
		pagerRs.setRows(admin_menus);
		pagerRs.setPage(pager.getPage());
		pagerRs.setRecords(count);
		pagerRs.setTotal((int)Math.ceil((double)count/(double)pager.getRows()));
		return pagerRs;
	}
	@Override
	public List<Admin_menu> serchAll() {
		List<Admin_menu> admin_menus = null;
		admin_menus = admin_menuDao.selectAll();
		return admin_menus;
	}
	@Override
	public List<Admin_menu_tree> serchTree() {
		
		List<Admin_menu_tree> admin_menus = null;
		admin_menus = admin_menuDao.selectTree();
		return admin_menus;
	}
	@Override
	public int countAll(String name) {
		int count = admin_menuDao.countAll(name);
		return count;
	}	
	@Override
	public int delById(String id) {
		return admin_menuDao.delByID(id);
	}
	@Override
	public int addone(Admin_menu menu) {
		return admin_menuDao.addone(menu);
	}
	@Override
	public int modify(Admin_menu menu) {
		return admin_menuDao.modify(menu);
	}
	@Override
	public Admin_menu serchByID(String id){
		return admin_menuDao.serchById(id);
	}
}

package com.usedvehicle.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sun.org.apache.bcel.internal.generic.NEW;
import com.usedvehicle.beans.Admin_role;
import com.usedvehicle.common.pagerHelperRQ;
import com.usedvehicle.common.pagerHelperRS;
//import com.usedvehicle.vo.Admin_role_tree;
import com.usedvehicle.dao.Admin_roleMapper;
import com.usedvehicle.service.IAdmin_roleService;

import sun.invoke.empty.Empty;


@Service
public class Admin_roleServiceImpl implements IAdmin_roleService{
	@Autowired
	private Admin_roleMapper Admin_roleDao;
	//@Autowired
	private pagerHelperRS pagerRs;
	
	@Override
	public List<Admin_role> queryAll() {
		List<Admin_role> Admin_roles = null;
		Admin_roles = Admin_roleDao.selectAll();
		return Admin_roles;
	}
	@Override
	public pagerHelperRS serchbypager(pagerHelperRQ pager) {
		pager.setStart();
		pagerRs=new pagerHelperRS();
		List<Admin_role> Admin_roles = null;
		int count = Admin_roleDao.countAll(pager.getSearchString());
		//return count;
		Admin_roles = Admin_roleDao.serchByPage(pager);
		pagerRs.setRows(Admin_roles);
		pagerRs.setPage(pager.getPage());
		pagerRs.setRecords(count);
		pagerRs.setTotal((int)Math.ceil((double)count/(double)pager.getRows()));
		return pagerRs;
	}
	@Override
	public List<Admin_role> serchAll() {
		List<Admin_role> Admin_roles = null;
		Admin_roles = Admin_roleDao.selectAll();
		return Admin_roles;
	}
	
	@Override
	public int countAll(String name) {
		int count = Admin_roleDao.countAll(name);
		return count;
	}	
	@Override
	public int delById(String id) {
		return Admin_roleDao.delByID(id);
	}
	@Override
	public int addone(Admin_role menu) {
		return Admin_roleDao.addone(menu);
	}
	@Override
	public int modify(Admin_role menu) {
		return Admin_roleDao.modify(menu);
	}
	@Override
	public Admin_role serchByID(String id){
		return Admin_roleDao.serchById(id);
	}
}

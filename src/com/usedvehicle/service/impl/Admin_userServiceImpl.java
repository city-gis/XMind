package com.usedvehicle.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sun.org.apache.bcel.internal.generic.NEW;
import com.usedvehicle.beans.Admin_user;
import com.usedvehicle.common.pagerHelperRQ;
import com.usedvehicle.common.pagerHelperRS;
import com.usedvehicle.dao.Admin_userMapper;
import com.usedvehicle.service.IAdmin_userService;

import sun.invoke.empty.Empty;


@Service
public class Admin_userServiceImpl implements IAdmin_userService{
	@Autowired
	private Admin_userMapper Admin_userDao;
	//@Autowired
	private pagerHelperRS pagerRs;
	
	@Override
	public List<Admin_user> queryAll() {
		List<Admin_user> Admin_users = null;
		Admin_users = Admin_userDao.selectAll();
		return Admin_users;
	}
	@Override
	public pagerHelperRS serchbypager(pagerHelperRQ pager) {
		pager.setStart();
		pagerRs=new pagerHelperRS();
		List<Admin_user> Admin_users = null;
		int count = Admin_userDao.countAll(pager.getSearchString());
		//return count;
		Admin_users = Admin_userDao.serchByPage(pager);
		pagerRs.setRows(Admin_users);
		pagerRs.setPage(pager.getPage());
		pagerRs.setRecords(count);
		pagerRs.setTotal((int)Math.ceil((double)count/(double)pager.getRows()));
		return pagerRs;
	}
	@Override
	public List<Admin_user> serchAll() {
		List<Admin_user> Admin_users = null;
		Admin_users = Admin_userDao.selectAll();
		return Admin_users;
	}
	@Override
	public int countAll(String name) {
		int count = Admin_userDao.countAll(name);
		return count;
	}	
	@Override
	public int delById(String id) {
		return Admin_userDao.delByID(id);
	}
	@Override
	public int addone(Admin_user menu) {
		return Admin_userDao.addone(menu);
	}
	@Override
	public int modify(Admin_user menu) {
		return Admin_userDao.modify(menu);
	}
	@Override
	public Admin_user serchByID(String id){
		return Admin_userDao.serchById(id);
	}
}

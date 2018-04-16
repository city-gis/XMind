package com.usedvehicle.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sun.org.apache.bcel.internal.generic.NEW;
import com.usedvehicle.beans.sys_departuser;
import com.usedvehicle.beans.sys_modelmenu;
import com.usedvehicle.beans.sys_userrole;
import com.usedvehicle.beans.sys_users;
import com.usedvehicle.common.pagerHelperRQ;
import com.usedvehicle.common.pagerHelperRS;
import com.usedvehicle.dao.sys_departuserMapper;
import com.usedvehicle.dao.sys_userroleMapper;
import com.usedvehicle.dao.sys_usersMapper;
import com.usedvehicle.service.Isys_usersService;

import sun.invoke.empty.Empty;


@Service
public class sys_usersServiceImpl implements Isys_usersService{
	@Autowired
	private sys_usersMapper sys_usersDao;
	@Autowired
	private sys_userroleMapper sys_userroleDao;
	@Autowired
	private sys_departuserMapper sys_departuserDao;
	//@Autowired
	private pagerHelperRS pagerRs;
	
	@Override
	public List<sys_users> queryAll() {
		List<sys_users> sys_userss = null;
		sys_userss = sys_usersDao.selectAll();
		return sys_userss;
	}
	@Override
	public pagerHelperRS serchbypager(pagerHelperRQ pager) {
		pager.setStart();
		pagerRs=new pagerHelperRS();
		List<sys_users> sys_userss = null;
		int count = sys_usersDao.countAll(pager.getSearchString());
		//return count;
		sys_userss = sys_usersDao.serchByPage(pager);
		pagerRs.setRows(sys_userss);
		pagerRs.setPage(pager.getPage());
		pagerRs.setRecords(count);
		pagerRs.setTotal((int)Math.ceil((double)count/(double)pager.getRows()));
		return pagerRs;
	}
	@Override
	public List<sys_users> serchAll() {
		List<sys_users> sys_userss = null;
		sys_userss = sys_usersDao.selectAll();
		return sys_userss;
	}
	@Override
	public int countAll(String name) {
		int count = sys_usersDao.countAll(name);
		return count;
	}	
	@Override
	public int delById(String id) {
		return sys_usersDao.delByID(id);
	}
	@Override
	public int addone(sys_users menu) {
		return sys_usersDao.addone(menu);
	}
	@Override
	public int modify(sys_users menu) {
		return sys_usersDao.modify(menu);
	}
	@Override
	public sys_users serchByID(String id){
		return sys_usersDao.serchById(id);
	}
	//登录使用
	@Override
	public sys_users serchByName(String name){
		return sys_usersDao.serchByName(name);
	}

	@Override
	public boolean adduserroles(String userid,List<sys_userrole> sys_userroles){
		sys_userroleDao.delByUserid(userid);
		for(sys_userrole one : sys_userroles){
			sys_userroleDao.adduserorle(one);
		}
		return true;
	}
	@Override
	public boolean updateuserdeparts(String userid, List<sys_departuser> sys_departusers) {
		sys_departuserDao.delByID(userid);
		for (sys_departuser one : sys_departusers) {
			sys_departuserDao.addone(one);
		}
		return true;
	}
}

package com.usedvehicle.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sun.org.apache.bcel.internal.generic.NEW;
import com.usedvehicle.beans.sys_roles;
import com.usedvehicle.common.pagerHelperRQ;
import com.usedvehicle.common.pagerHelperRS;
import com.usedvehicle.dao.sys_rolesMapper;
import com.usedvehicle.service.Isys_rolesService;

import sun.invoke.empty.Empty;


@Service
public class sys_rolesServiceImpl implements Isys_rolesService{
	@Autowired
	private sys_rolesMapper sys_rolesDao;
	//@Autowired
	private pagerHelperRS pagerRs;
	
	@Override
	public List<sys_roles> queryAll() {
		List<sys_roles> sys_roless = null;
		sys_roless = sys_rolesDao.selectAll();
		return sys_roless;
	}
	@Override
	public pagerHelperRS serchbypager(pagerHelperRQ pager) {
		pager.setStart();
		pagerRs=new pagerHelperRS();
		List<sys_roles> sys_roless = null;
		int count = sys_rolesDao.countAll(pager.getSearchString());
		//return count;
		sys_roless = sys_rolesDao.serchByPage(pager);
		pagerRs.setRows(sys_roless);
		pagerRs.setPage(pager.getPage());
		pagerRs.setRecords(count);
		pagerRs.setTotal((int)Math.ceil((double)count/(double)pager.getRows()));
		return pagerRs;
	}
	@Override
	public List<sys_roles> serchAll() {
		List<sys_roles> sys_roless = null;
		sys_roless = sys_rolesDao.selectAll();
		return sys_roless;
	}
	@Override
	public int countAll(String name) {
		int count = sys_rolesDao.countAll(name);
		return count;
	}	
	@Override
	public int delById(String id) {
		return sys_rolesDao.delByID(id);
	}
	@Override
	public int addone(sys_roles menu) {
		return sys_rolesDao.addone(menu);
	}
	@Override
	public int modify(sys_roles menu) {
		return sys_rolesDao.modify(menu);
	}
	@Override
	public sys_roles serchByID(String id){
		return sys_rolesDao.serchById(id);
	}
}

package com.usedvehicle.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sun.org.apache.bcel.internal.generic.NEW;
import com.usedvehicle.beans.sys_rolemodel;
import com.usedvehicle.beans.sys_rolemodelfunc;
import com.usedvehicle.beans.sys_rolemodelmenu;
import com.usedvehicle.beans.sys_roles;
import com.usedvehicle.common.pagerHelperRQ;
import com.usedvehicle.common.pagerHelperRS;
import com.usedvehicle.dao.sys_rolemodelMapper;
import com.usedvehicle.dao.sys_rolemodelfuncMapper;
import com.usedvehicle.dao.sys_rolemodelmenuMapper;
import com.usedvehicle.dao.sys_rolesMapper;
import com.usedvehicle.service.Isys_rolesService;

import sun.invoke.empty.Empty;


@Service
public class sys_rolesServiceImpl implements Isys_rolesService{
	@Autowired
	private sys_rolesMapper sys_rolesDao;
	@Autowired
	private sys_rolemodelMapper sys_rolemodelDao;
	@Autowired
	private sys_rolemodelmenuMapper sys_rolemodelmenuDao;
	@Autowired
	private sys_rolemodelfuncMapper sys_rolemodelfuncDao;
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
	@Override
	public boolean updateRoleModels(String roleid, List<sys_rolemodel> lstrolemodel) {
		sys_rolemodelDao.delByID(roleid);
		for (sys_rolemodel one : lstrolemodel) {
			sys_rolemodelDao.addone(one);
		}
		return true;
	}
	@Override
	public boolean updateRoleModelMenus(String roleid, List<sys_rolemodelmenu> lstrolemodelmenu) {
		sys_rolemodelmenuDao.delByID(roleid);
		for (sys_rolemodelmenu one : lstrolemodelmenu) {
			sys_rolemodelmenuDao.addone(one);
		}
		return true;
	}
	@Override
	public List<sys_rolemodel> selectRoleModels(String roleid) {
		return	sys_rolemodelDao.selectByRoleid(roleid);
		 
	}
	@Override
	public List<sys_rolemodelmenu> selectRoleModelMenus(String roleid) {
		return sys_rolemodelmenuDao.selectByRoleid(roleid);
	}
	@Override
	public boolean updateRoleModelfuncs(String roleid, List<sys_rolemodelfunc> lstrolemodelfunc) {
		sys_rolemodelfuncDao.delByID(roleid);
		for (sys_rolemodelfunc one : lstrolemodelfunc) {
			sys_rolemodelfuncDao.addone(one);
		}
		return true;
	}
	@Override
	public List<sys_rolemodelfunc> selectRoleModelfuncs(String roleid) {
		return sys_rolemodelfuncDao.selectByRoleid(roleid);
	}
}

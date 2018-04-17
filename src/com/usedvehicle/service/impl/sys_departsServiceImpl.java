package com.usedvehicle.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sun.org.apache.bcel.internal.generic.NEW;
import com.usedvehicle.beans.sys_departrole;
import com.usedvehicle.beans.sys_departs;
import com.usedvehicle.common.pagerHelperRQ;
import com.usedvehicle.common.pagerHelperRS;
import com.usedvehicle.dao.sys_departroleMapper;
import com.usedvehicle.dao.sys_departsMapper;
import com.usedvehicle.service.Isys_departsService;

import sun.invoke.empty.Empty;


@Service
public class sys_departsServiceImpl implements Isys_departsService{
	@Autowired
	private sys_departsMapper sys_departsDao;
	@Autowired
	private sys_departroleMapper sys_departroleDao;
	//@Autowired
	private pagerHelperRS pagerRs;
	
	@Override
	public List<sys_departs> queryAll() {
		List<sys_departs> sys_departss = null;
		sys_departss = sys_departsDao.selectAll();
		return sys_departss;
	}
	@Override
	public pagerHelperRS serchbypager(pagerHelperRQ pager) {
		pager.setStart();
		pagerRs=new pagerHelperRS();
		List<sys_departs> sys_departss = null;
		int count = sys_departsDao.countAll(pager.getSearchString());
		//return count;
		sys_departss = sys_departsDao.serchByPage(pager);
		pagerRs.setRows(sys_departss);
		pagerRs.setPage(pager.getPage());
		pagerRs.setRecords(count);
		pagerRs.setTotal((int)Math.ceil((double)count/(double)pager.getRows()));
		return pagerRs;
	}
	@Override
	public List<sys_departs> serchAll() {
		List<sys_departs> sys_departss = null;
		sys_departss = sys_departsDao.selectAll();
		return sys_departss;
	}
	@Override
	public int countAll(String name) {
		int count = sys_departsDao.countAll(name);
		return count;
	}	
	@Override
	public int delById(String id) {
		return sys_departsDao.delByID(id);
	}
	@Override
	public int addone(sys_departs menu) {
		return sys_departsDao.addone(menu);
	}
	@Override
	public int modify(sys_departs menu) {
		return sys_departsDao.modify(menu);
	}
	@Override
	public sys_departs serchByID(String id){
		return sys_departsDao.serchById(id);
	}
	@Override
	public boolean adddepartroles(String departid, List<sys_departrole> lstdepartrole) {
		sys_departroleDao.delByDepartid(departid);
		for (sys_departrole one : lstdepartrole) {
			sys_departroleDao.adddepartrole(one);
		}
		return true;
	}
}

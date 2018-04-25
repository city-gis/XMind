package com.usedvehicle.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sun.org.apache.bcel.internal.generic.NEW;
import com.usedvehicle.beans.sys_modelfuncs;
import com.usedvehicle.common.pagerHelperRQ;
import com.usedvehicle.common.pagerHelperRS;
import com.usedvehicle.dao.sys_modelfuncsMapper;
import com.usedvehicle.service.Isys_modelfuncsService;

import sun.invoke.empty.Empty;


@Service
public class sys_modelfuncsServiceImpl implements Isys_modelfuncsService{
	@Autowired
	private sys_modelfuncsMapper sys_modelfuncsDao;
	//@Autowired
	private pagerHelperRS pagerRs;
	
	@Override
	public List<sys_modelfuncs> queryAll() {
		List<sys_modelfuncs> sys_modelfuncss = null;
		sys_modelfuncss = sys_modelfuncsDao.selectAll();
		return sys_modelfuncss;
	}
	@Override
	public pagerHelperRS serchbypager(pagerHelperRQ pager) {
		pager.setStart();
		pagerRs=new pagerHelperRS();
		List<sys_modelfuncs> sys_modelfuncss = null;
		int count = sys_modelfuncsDao.countAll(pager.getSearchString());
		//return count;
		sys_modelfuncss = sys_modelfuncsDao.serchByPage(pager);
		pagerRs.setRows(sys_modelfuncss);
		pagerRs.setPage(pager.getPage());
		pagerRs.setRecords(count);
		pagerRs.setTotal((int)Math.ceil((double)count/(double)pager.getRows()));
		return pagerRs;
	}
	@Override
	public List<sys_modelfuncs> serchAll() {
		List<sys_modelfuncs> sys_modelfuncss = null;
		sys_modelfuncss = sys_modelfuncsDao.selectAll();
		return sys_modelfuncss;
	}
	@Override
	public int countAll(String name) {
		int count = sys_modelfuncsDao.countAll(name);
		return count;
	}	
	@Override
	public int delById(String id) {
		return sys_modelfuncsDao.delByID(id);
	}
	@Override
	public int addone(sys_modelfuncs menu) {
		return sys_modelfuncsDao.addone(menu);
	}
	@Override
	public int modify(sys_modelfuncs menu) {
		return sys_modelfuncsDao.modify(menu);
	}
	@Override
	public sys_modelfuncs serchByID(String id){
		return sys_modelfuncsDao.serchById(id);
	}
	
}

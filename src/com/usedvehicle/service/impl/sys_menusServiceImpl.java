package com.usedvehicle.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sun.org.apache.bcel.internal.generic.NEW;
import com.usedvehicle.beans.sys_menus;
import com.usedvehicle.common.pagerHelperRQ;
import com.usedvehicle.common.pagerHelperRS;
import com.usedvehicle.dao.sys_menusMapper;
import com.usedvehicle.service.Isys_menusService;
import com.usedvehicle.vo.sys_menusvo;

import sun.invoke.empty.Empty;


@Service
public class sys_menusServiceImpl implements Isys_menusService{
	@Autowired
	private sys_menusMapper sys_menusDao;
	//@Autowired
	private pagerHelperRS pagerRs;
	
	@Override
	public List<sys_menus> queryAll() {
		List<sys_menus> sys_menuss = null;
		sys_menuss = sys_menusDao.selectAll();
		return sys_menuss;
	}
	@Override
	public pagerHelperRS serchbypager(pagerHelperRQ pager) {
		pager.setStart();
		pagerRs=new pagerHelperRS();
		List<sys_menus> sys_menuss = null;
		int count = sys_menusDao.countAll(pager.getSearchString());
		//return count;
		sys_menuss = sys_menusDao.serchByPage(pager);
		pagerRs.setRows(sys_menuss);
		pagerRs.setPage(pager.getPage());
		pagerRs.setRecords(count);
		pagerRs.setTotal((int)Math.ceil((double)count/(double)pager.getRows()));
		return pagerRs;
	}
	@Override
	public List<sys_menus> serchAll() {
		List<sys_menus> sys_menuss = null;
		sys_menuss = sys_menusDao.selectAll();
		return sys_menuss;
	}
	@Override
	public int countAll(String name) {
		int count = sys_menusDao.countAll(name);
		return count;
	}	
	@Override
	public int delById(String id) {
		return sys_menusDao.delByID(id);
	}
	@Override
	public int addone(sys_menus menu) {
		return sys_menusDao.addone(menu);
	}
	@Override
	public int modify(sys_menus menu) {
		return sys_menusDao.modify(menu);
	}
	@Override
	public sys_menus serchByID(String id){
		return sys_menusDao.serchById(id);
	}
	@Override
	public List<sys_menusvo> serchwithmodel(String modelid) {
		
		return sys_menusDao.serchwithmodel(modelid);
	}
}

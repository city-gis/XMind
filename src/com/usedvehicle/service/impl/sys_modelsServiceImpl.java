package com.usedvehicle.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sun.org.apache.bcel.internal.generic.NEW;
import com.usedvehicle.beans.sys_models;
import com.usedvehicle.common.pagerHelperRQ;
import com.usedvehicle.common.pagerHelperRS;
import com.usedvehicle.dao.sys_modelsMapper;
import com.usedvehicle.service.Isys_modelsService;

import sun.invoke.empty.Empty;


@Service
public class sys_modelsServiceImpl implements Isys_modelsService{
	@Autowired
	private sys_modelsMapper sys_modelsDao;
	//@Autowired
	private pagerHelperRS pagerRs;
	
	@Override
	public List<sys_models> queryAll() {
		List<sys_models> sys_modelss = null;
		sys_modelss = sys_modelsDao.selectAll();
		return sys_modelss;
	}
	@Override
	public pagerHelperRS serchbypager(pagerHelperRQ pager) {
		pager.setStart();
		pagerRs=new pagerHelperRS();
		List<sys_models> sys_modelss = null;
		int count = sys_modelsDao.countAll(pager.getSearchString());
		//return count;
		sys_modelss = sys_modelsDao.serchByPage(pager);
		pagerRs.setRows(sys_modelss);
		pagerRs.setPage(pager.getPage());
		pagerRs.setRecords(count);
		pagerRs.setTotal((int)Math.ceil((double)count/(double)pager.getRows()));
		return pagerRs;
	}
	@Override
	public List<sys_models> serchAll() {
		List<sys_models> sys_modelss = null;
		sys_modelss = sys_modelsDao.selectAll();
		return sys_modelss;
	}
	@Override
	public int countAll(String name) {
		int count = sys_modelsDao.countAll(name);
		return count;
	}	
	@Override
	public int delById(String id) {
		return sys_modelsDao.delByID(id);
	}
	@Override
	public int addone(sys_models menu) {
		return sys_modelsDao.addone(menu);
	}
	@Override
	public int modify(sys_models menu) {
		return sys_modelsDao.modify(menu);
	}
	@Override
	public sys_models serchByID(String id){
		return sys_modelsDao.serchById(id);
	}
}

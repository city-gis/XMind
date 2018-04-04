package com.usedvehicle.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sun.org.apache.bcel.internal.generic.NEW;
import com.usedvehicle.beans.Cm7_servers;
import com.usedvehicle.common.pagerHelperRQ;
import com.usedvehicle.common.pagerHelperRS;
//import com.usedvehicle.vo.Cm7_servers_tree;
import com.usedvehicle.dao.Cm7_serversMapper;
import com.usedvehicle.service.ICm7_serversService;

import sun.invoke.empty.Empty;


@Service
public class Cm7_serversServiceImpl implements ICm7_serversService{
	@Autowired
	private Cm7_serversMapper Cm7_serversDao;
	//@Autowired
	private pagerHelperRS pagerRs;
	
	@Override
	public List<Cm7_servers> queryAll() {
		List<Cm7_servers> Cm7_serverss = null;
		Cm7_serverss = Cm7_serversDao.selectAll();
		return Cm7_serverss;
	}
	@Override
	public pagerHelperRS serchbypager(pagerHelperRQ pager) {
		pager.setStart();
		pagerRs=new pagerHelperRS();
		List<Cm7_servers> Cm7_serverss = null;
		int count = Cm7_serversDao.countAll(pager.getSearchString());
		//return count;
		Cm7_serverss = Cm7_serversDao.serchByPage(pager);
		pagerRs.setRows(Cm7_serverss);
		pagerRs.setPage(pager.getPage());
		pagerRs.setRecords(count);
		pagerRs.setTotal((int)Math.ceil((double)count/(double)pager.getRows()));
		return pagerRs;
	}
	@Override
	public List<Cm7_servers> serchAll() {
		List<Cm7_servers> Cm7_serverss = null;
		Cm7_serverss = Cm7_serversDao.selectAll();
		return Cm7_serverss;
	}
//	@Override
//	public List<Cm7_servers_tree> serchTree() {
//		
//		List<Cm7_servers_tree> Cm7_serverss = null;
//		Cm7_serverss = Cm7_serversDao.selectTree();
//		return Cm7_serverss;
//	}
	@Override
	public int countAll(String name) {
		int count = Cm7_serversDao.countAll(name);
		return count;
	}	
	@Override
	public int delById(String id) {
		return Cm7_serversDao.delByID(id);
	}
	@Override
	public int addone(Cm7_servers menu) {
		return Cm7_serversDao.addone(menu);
	}
	@Override
	public int modify(Cm7_servers menu) {
		return Cm7_serversDao.modify(menu);
	}
	@Override
	public Cm7_servers serchByID(String id){
		return Cm7_serversDao.serchById(id);
	}
}

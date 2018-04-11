package com.usedvehicle.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sun.org.apache.bcel.internal.generic.NEW;
import com.usedvehicle.beans.sys_authority;
import com.usedvehicle.beans.sys_modelmenu;
import com.usedvehicle.common.pagerHelperRQ;
import com.usedvehicle.common.pagerHelperRS;
import com.usedvehicle.dao.sys_authorityMapper;
import com.usedvehicle.dao.sys_usersMapper;
import com.usedvehicle.service.Isys_authorityService;

import sun.invoke.empty.Empty;


@Service
public class sys_authorityServiceImpl implements Isys_authorityService{

	@Autowired
	private sys_authorityMapper sys_authorityDao;
	@Override
	public boolean addAuth(List<sys_authority> lst, String roleid) {
		sys_authorityDao.delByroleid(roleid);
		for(sys_authority one : lst){
			sys_authorityDao.addone(one);
		}
		return true;
	}

	@Override
	public List<sys_authority> serchByroleid(String id) {
		return sys_authorityDao.serchByroleid(id);
	}
}

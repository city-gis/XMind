package com.usedvehicle.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import com.usedvehicle.vo.jstree;
import com.usedvehicle.dao.jstreeMapper;
import com.usedvehicle.service.IjstreeService;



@Service
public class jstreeServiceImpl implements IjstreeService{
	@Autowired
	private jstreeMapper jstreeDao;
	
	@Override
	public List<jstree> model_tree() {
		List<jstree> jstrees = null;
		jstrees = jstreeDao.model_tree();
		return jstrees;
	}
}

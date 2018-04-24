package com.usedvehicle.dao;

import java.util.List;
import com.usedvehicle.vo.jstree;

public interface jstreeMapper {
	/*
	 * 模块管理列表页面左侧树
	 * */
    List<jstree>  model_tree();
	/*
	 * 角色管理列表页面左侧树
	 * */
    List<jstree>  role_tree();
	/*
	 * 角色列表页面方法权限管理
	 * */
    List<jstree>  modelfunc_tree();
    
}

package com.usedvehicle.controllers;

import java.util.List;
import java.util.Map;

import org.aspectj.weaver.ast.Var;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sun.glass.ui.View;
import com.usedvehicle.beans.sys_roles;
import com.usedvehicle.common.messageHelper;
import com.usedvehicle.common.pagerHelperRQ;
import com.usedvehicle.common.pagerHelperRS;
import com.usedvehicle.service.IjstreeService;
import com.usedvehicle.service.Isys_rolesService;
import com.usedvehicle.vo.jstree;
import com.usedvehicle.vo.sys_modelform;

@Controller
@RequestMapping("treeGrid")
public class treeGridController {

	@Autowired
	private Isys_rolesService sys_rolesService;
	@Autowired
	private IjstreeService jstreeService;
	@RequestMapping("models_treegrid.do")//用於查詢所有的下拉菜單分級顯示
	@ResponseBody//用於AJAX
	public Object models_treegrid(@RequestBody Object modelform) {
		return modelform;
	}
	
}

package com.usedvehicle.controllers;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.aspectj.weaver.ast.Var;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sun.glass.ui.View;
import com.usedvehicle.auth.AuthPassport;
import com.usedvehicle.beans.sys_modelmenu;
import com.usedvehicle.beans.sys_models;
import com.usedvehicle.common.messageHelper;
import com.usedvehicle.common.pagerHelperRQ;
import com.usedvehicle.common.pagerHelperRS;
import com.usedvehicle.service.IjstreeService;
import com.usedvehicle.service.Isys_modelsService;
import com.usedvehicle.vo.Admin_menu_tree;
import com.usedvehicle.vo.jstree;
import com.usedvehicle.vo.sys_modelform;

@Controller
@RequestMapping("sys")
public class loginController {

	@RequestMapping("login.do")//跳转到登录页面
	@ResponseBody//用於AJAX
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		return mv;
	}
	
	@RequestMapping("login_post.do")//跳转到登录页面
	@ResponseBody//用於AJAX
	public Object login_post() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		
		
		
		return mv;
	}
	
	@AuthPassport
	@RequestMapping("index.do")//判定登录是否成功跳转到index页面
	@ResponseBody
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("sys_models_view");
		return mv;
	}

}

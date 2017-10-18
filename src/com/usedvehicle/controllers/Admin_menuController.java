package com.usedvehicle.controllers;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.usedvehicle.beans.Admin_menu;
import com.usedvehicle.service.IAdmin_menuService;


@Controller
@RequestMapping("admin_menu")
public class Admin_menuController {

	@Autowired
	private IAdmin_menuService admin_menuService;
	
	@RequestMapping("queryTreeMenu.do")//用於查詢所有的下拉菜單分級顯示
	@ResponseBody//用於AJAX
	public Object queryMember() {
		
		List<Admin_menu> adminmenus = null;
		adminmenus = admin_menuService.queryAll();
		return adminmenus;
		
	}
	
	@RequestMapping("view.do")//用於查詢所有的下拉菜單分級顯示
	public ModelAndView view() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin_menu_view");
		return mv;
	}
	//分页查询
	@RequestMapping("serch.do")//用於查詢所有的下拉菜單分級顯示
	@ResponseBody//用於AJAX
	public Object serch(int page,int limit) {
		List<Admin_menu> adminmenus = null;
		
		adminmenus = admin_menuService.serch(page, limit);
		return adminmenus;
	}
	//分页查询
	@RequestMapping("add.do")//用於查詢所有的下拉菜單分級顯示
	@ResponseBody//用於AJAX
	public void add(Admin_menu menus) {
		
	}
	
}

package com.usedvehicle.controllers;

import java.util.List;
import java.util.Map;

import org.aspectj.weaver.ast.Var;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sun.glass.ui.View;
import com.usedvehicle.beans.sys_users;
import com.usedvehicle.common.messageHelper;
import com.usedvehicle.common.pagerHelperRQ;
import com.usedvehicle.common.pagerHelperRS;
import com.usedvehicle.service.Isys_usersService;
import com.usedvehicle.vo.sys_modelform;
import com.usedvehicle.vo.sys_userform;

@Controller
@RequestMapping("sys_users")
public class sys_usersController {

	@Autowired
	private Isys_usersService sys_usersService;
	@RequestMapping("queryTreeMenu.do")//用於查詢所有的下拉菜單分級顯示
	@ResponseBody//用於AJAX
	public Object queryMember() {
		
		List<sys_users> adminmenus = null;
		adminmenus = sys_usersService.queryAll();
		return adminmenus;
		
	}
	
	@RequestMapping("view.do")//用於查詢所有的下拉菜單分級顯示
	public ModelAndView view() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("sys_users_view");
		return mv;
	}

	
	@RequestMapping("add_view.do")//用於查詢所有的下拉菜單分級顯示
	@ResponseBody//用於AJAX
	public ModelAndView add_view() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("sys_users_add");
		//View view=mv.getClass();
		return mv;
	}
	
	@RequestMapping("edit_view.do")//用於查詢所有的下拉菜單分級顯示
	//@ResponseBody//用於AJAX
	public ModelAndView edit_view(String id) {
		sys_users sys_users=sys_usersService.serchByID(id);
		ModelAndView mv = new ModelAndView("sys_users_edit");
		String names="nihao";
		mv.addObject(sys_users);
		mv.addObject("ret","nihao  ninasinfi");
		//mv.setViewName("sys_users_edit");
		//View view=mv.getClass();
		return mv;
	}
	//分页查询
	@RequestMapping("serch.do")//用於查詢所有的下拉菜單分級顯示
	@ResponseBody//用於AJAX
	public Object serch(pagerHelperRQ pager) {
		pagerHelperRS pagerrs=sys_usersService.serchbypager(pager);
		return pagerrs;
	}

	
	//分页查询
	@RequestMapping("serchCount.do")//用於查詢所有的下拉菜單分級顯示
	@ResponseBody//用於AJAX
	public int  serchCount(String name) {
		int count = sys_usersService.countAll(name);
		return count;
	}
	//分页查询
	@RequestMapping("add.do")//用於查詢所有的下拉菜單分級顯示
	@ResponseBody//用於AJAX
	public Object add(sys_users menus) {
		messageHelper message= new messageHelper();
		try {
			 int result= sys_usersService.addone(menus);
			 if(result>0){
				message.setMst(0);
				message.setMsg("新增菜单功能成功！");
			 }else{
				message.setMst(1);
				message.setMsg("新增菜单功能失败！");
			 }
		} catch (Exception e) {
			message.setMst(1);
			message.setMsg("新增菜单功能失败！"+e.getMessage());
		}
		return message;
	}
	
	//修改 
		@RequestMapping("edit.do")//用於查詢所有的下拉菜單分級顯示
		@ResponseBody//用於AJAX
		public Object edit(sys_users menus) {
			messageHelper message= new messageHelper();
			try {
				 int result= sys_usersService.modify(menus);
				 if(result>0){
					message.setMst(0);
					message.setMsg("修改菜单功能成功！");
				 }else{
					message.setMst(1);
					message.setMsg("修改菜单功能失败！");
				 }
			} catch (Exception e) {
				message.setMst(1);
				message.setMsg("修改菜单功能失败！"+e.getMessage());
			}
			return message;
		}
	//分页查询
	@RequestMapping("delmenu.do")//用於查詢所有的下拉菜單分級顯示
	@ResponseBody//用於AJAX
	public Object delmenu(String id) {
		messageHelper message= new messageHelper();
		try {
			 int result= sys_usersService.delById(id);
			 if(result>0){
				message.setMst(0);
				message.setMsg("删除菜单功能成功！");
			 }else{
				message.setMst(1);
				message.setMsg("删除菜单功能失败！");
			 }
			
		} catch (Exception e) {
			message.setMst(1);
			message.setMsg("删除菜单功能失败！"+e.getMessage());
		}
		return message;
	}
	
	@RequestMapping(value= "updateroles.do",method={RequestMethod.POST})//用於查詢所有的下拉菜單分級顯示
	@ResponseBody//用於AJAX
	public Object updateroles(@RequestBody sys_userform modelform) {
		messageHelper message= new messageHelper();
		try {
			boolean result= sys_usersService.adduserroles(modelform.getUserid(), modelform.getLstsys_userrole());
			 if(result){
				message.setMst(0);
				message.setMsg("调整菜单功能成功！");
			 }else{
				message.setMst(1);
				message.setMsg("调整菜单功能失败！");
			 }
		} catch (Exception e) {
			message.setMst(1);
			message.setMsg("调整菜单功能失败！"+e.getMessage());
		}
		return message;
	}

	
}

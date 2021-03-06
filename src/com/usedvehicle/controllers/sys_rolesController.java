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
import com.usedvehicle.auth.AuthPassport;
import com.usedvehicle.beans.sys_rolemodel;
import com.usedvehicle.beans.sys_rolemodelfunc;
import com.usedvehicle.beans.sys_rolemodelmenu;
import com.usedvehicle.beans.sys_roles;
import com.usedvehicle.common.messageHelper;
import com.usedvehicle.common.pagerHelperRQ;
import com.usedvehicle.common.pagerHelperRS;
import com.usedvehicle.service.IjstreeService;
import com.usedvehicle.service.Isys_rolesService;
import com.usedvehicle.vo.jstree;
import com.usedvehicle.vo.sys_modelform;
import com.usedvehicle.vo.sys_rolemodelfuncvo;
import com.usedvehicle.vo.sys_rolemodelmenuvo;
import com.usedvehicle.vo.sys_rolemodelvo;

@Controller
@RequestMapping("sys_roles")
public class sys_rolesController {

	@Autowired
	private Isys_rolesService sys_rolesService;
	@Autowired
	private IjstreeService jstreeService;
	@RequestMapping("queryTreeMenu.do")//用於查詢所有的下拉菜單分級顯示
	@ResponseBody//用於AJAX
	public Object queryMember() {
		
		List<sys_roles> adminmenus = null;
		adminmenus = sys_rolesService.queryAll();
		return adminmenus;
		
	}
	@AuthPassport
	@RequestMapping("view.do")//用於查詢所有的下拉菜單分級顯示
	public ModelAndView view() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("sys/role/sys_roles_view");
		return mv;
	}

	@AuthPassport
	@RequestMapping("add_view.do")//用於查詢所有的下拉菜單分級顯示
	@ResponseBody//用於AJAX
	public ModelAndView add_view() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("sys/role/sys_roles_add");
		//View view=mv.getClass();
		return mv;
	}
	@AuthPassport
	@RequestMapping("edit_view.do")//用於查詢所有的下拉菜單分級顯示
	//@ResponseBody//用於AJAX
	public ModelAndView edit_view(String id) {
		sys_roles sys_roles=sys_rolesService.serchByID(id);
		ModelAndView mv = new ModelAndView("sys/role/sys_roles_edit");
		String names="nihao";
		mv.addObject(sys_roles);
		mv.addObject("ret","nihao  ninasinfi");
		//mv.setViewName("sys_roles_edit");
		//View view=mv.getClass();
		return mv;
	}
	//分页查询
	@RequestMapping("serch.do")//用於查詢所有的下拉菜單分級顯示
	@ResponseBody//用於AJAX
	public Object serch(pagerHelperRQ pager) {
		pagerHelperRS pagerrs=sys_rolesService.serchbypager(pager);
		return pagerrs;
	}

	
	//分页查询
	@RequestMapping("serchCount.do")//用於查詢所有的下拉菜單分級顯示
	@ResponseBody//用於AJAX
	public int  serchCount(String name) {
		int count = sys_rolesService.countAll(name);
		return count;
	}
	//分页查询
	@RequestMapping("add.do")//用於查詢所有的下拉菜單分級顯示
	@ResponseBody//用於AJAX
	public Object add(sys_roles menus) {
		messageHelper message= new messageHelper();
		try {
			 int result= sys_rolesService.addone(menus);
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
		public Object edit(sys_roles menus) {
			messageHelper message= new messageHelper();
			try {
				 int result= sys_rolesService.modify(menus);
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
	@AuthPassport
	@RequestMapping("delmenu.do")//用於查詢所有的下拉菜單分級顯示
	@ResponseBody//用於AJAX
	public Object delmenu(String id) {
		messageHelper message= new messageHelper();
		try {
			 int result= sys_rolesService.delById(id);
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
	@RequestMapping("roles_Tree.do")//用於查詢所有的下拉菜單分級顯示
	@ResponseBody//用於AJAX
	public Object roles_Tree() {
 		List<jstree> jstrees = jstreeService.role_tree();
		return jstrees;
	}
	/*
	 * 角色赋模组权限
	 * */
	@RequestMapping(value= "updateRoleModels.do",method={RequestMethod.POST})//用於查詢所有的下拉菜單分級顯示
	@ResponseBody//用於AJAX
	public Object updateRoleModels(@RequestBody sys_rolemodelvo modelform) {
		messageHelper message= new messageHelper();
		try {
			boolean result= sys_rolesService.updateRoleModels(modelform.getRoleid(), modelform.getSys_rolemodels());
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
	/*
	 * 通过roleid查询所有模组权限
	 * */
	@RequestMapping(value= "selectRoleModels.do",method={RequestMethod.POST})//用於查詢所有的下拉菜單分級顯示
	@ResponseBody//用於AJAX
	public Object selectRoleModels(String id) {
		messageHelper message= new messageHelper();
		try {
			List<sys_rolemodel> lstsys_rolemodel= sys_rolesService.selectRoleModels(id);
				message.setMst(0);
				message.setMsg("");
				message.setData(lstsys_rolemodel);
		} catch (Exception e) {
			message.setMst(1);
			message.setMsg("查询失败！"+e.getMessage());
		}
		return message;
	}
	/*
	 * 角色赋模组按钮权限
	 * */
	@RequestMapping(value= "updateRoleModelMenus.do",method={RequestMethod.POST})//用於查詢所有的下拉菜單分級顯示
	@ResponseBody//用於AJAX
	public Object updateRoleModelMenus(@RequestBody sys_rolemodelmenuvo modelform) {
		messageHelper message= new messageHelper();
		try {
			boolean result= sys_rolesService.updateRoleModelMenus(modelform.getRoleid(), modelform.getSys_rolemodelmenus());
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
	/*
	 * 通过roleid查询所有模组菜单权限
	 * */
	@RequestMapping(value= "selectRoleModelMenus.do",method={RequestMethod.POST})//用於查詢所有的下拉菜單分級顯示
	@ResponseBody//用於AJAX
	public Object selectRoleModelMenus(String id) {
		messageHelper message= new messageHelper();
		try {
			List<sys_rolemodelmenu> lstsys_rolemodelmenu= sys_rolesService.selectRoleModelMenus(id);
				message.setMst(0);
				message.setMsg("");
				message.setData(lstsys_rolemodelmenu);
		} catch (Exception e) {
			message.setMst(1);
			message.setMsg("查询失败！"+e.getMessage());
		}
		return message;
	}
	
	/*
	 * 角色赋模组按钮权限
	 * */
	@RequestMapping(value= "updateRoleModelfuncs.do",method={RequestMethod.POST})//用於查詢所有的下拉菜單分級顯示
	@ResponseBody//用於AJAX
	public Object updateRoleModelfuncs(@RequestBody sys_rolemodelfuncvo modelform) {
		messageHelper message= new messageHelper();
		try {
			boolean result= sys_rolesService.updateRoleModelfuncs(modelform.getRoleid(), modelform.getSys_rolemodelfuncs());
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
	/*
	 * 通过roleid查询所有模组菜单权限
	 * */
	@RequestMapping(value= "selectRoleModelfuncs.do",method={RequestMethod.POST})//用於查詢所有的下拉菜單分級顯示
	@ResponseBody//用於AJAX
	public Object selectRoleModelfuncs(String id) {
		messageHelper message= new messageHelper();
		try {
			List<sys_rolemodelfunc> lstsys_rolemodelmenu= sys_rolesService.selectRoleModelfuncs(id);
				message.setMst(0);
				message.setMsg("");
				message.setData(lstsys_rolemodelmenu);
		} catch (Exception e) {
			message.setMst(1);
			message.setMsg("查询失败！"+e.getMessage());
		}
		return message;
	}
	
}

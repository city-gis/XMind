package com.usedvehicle.controllers;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.usedvehicle.beans.sys_menus;
import com.usedvehicle.service.Isys_menusService;
import com.usedvehicle.vo.sys_menusvo;
import com.usedvehicle.vo.sys_users_session_enum;

@Controller
@RequestMapping("sys")
public class indexController {
	@Autowired
	private Isys_menusService sys_menusService;
	
	@RequestMapping("index.do") // 判定登录是否成功跳转到index页面
	@ResponseBody
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		return mv;
	}
	@RequestMapping("getpagemenu.do") // 判定登录是否成功跳转到index页面
	@ResponseBody
	public Object getpagemenu(String modelid,HttpServletRequest request) {
		HttpSession session =request.getSession();
		String userid= (String) session.getAttribute(sys_users_session_enum.userid.toString());
		List<sys_menusvo> lstMenu=sys_menusService.serchWithPage(modelid,userid);
		return lstMenu;
	}
}

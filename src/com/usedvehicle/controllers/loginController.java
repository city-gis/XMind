package com.usedvehicle.controllers;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.usedvehicle.auth.AuthPassport;
import com.usedvehicle.beans.sys_users;
import com.usedvehicle.common.messageHelper;
import com.usedvehicle.service.Isys_usersService;

@Controller
public class loginController {

	@Autowired
	private Isys_usersService sys_usersService;

	@RequestMapping("login.do") // 跳转到登录页面
	@ResponseBody // 用於AJAX
	public ModelAndView login(HttpServletRequest request) {
		initSession(request);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		return mv;
	}

	@RequestMapping("login_post.do") // 跳转到登录页面
	@ResponseBody // 用於AJAX
	public Object login_post(String name, String pwd, String code, HttpServletRequest request) {
		messageHelper message = new messageHelper();
		try {
			HttpSession session=request.getSession();
			String codes = (String) session.getAttribute("randCode");
			if (!code.toLowerCase().trim().equals(codes.toLowerCase())) {
				message.setMst(1);
				message.setMsg("验证码错误！");
				return message;
			}
			sys_users sys_user = sys_usersService.serchByName(name);
			if (sys_user == null) {
				message.setMst(1);
				message.setMsg("账号或密码错误！");
			} else {
				if (sys_user.getPassword().equals(pwd)) {
					// 正常登录
					session.setAttribute("user", sys_user);
					message.setMst(0);
					message.setMsg("登录成功！");
				} else {
					message.setMst(1);
					message.setMsg("账号或密码错误！");
				}
			}
		} catch (Exception e) {
			message.setMst(1);
			message.setMsg("账号或密码错误！" + e.getMessage());
		}
		return message;
	}

	@RequestMapping("index.do") // 判定登录是否成功跳转到index页面
	@ResponseBody
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		return mv;
	}

	@RequestMapping("loginout.do") // 登出系统
	public ModelAndView loginout(HttpServletRequest request) {
		initSession(request);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		return mv;
	}

	/*
	 * 清空所有缓存
	 */
	private void initSession(HttpServletRequest request) {
		Enumeration em = request.getSession().getAttributeNames();
		while (em.hasMoreElements()) {
			request.getSession().removeAttribute(em.nextElement().toString());
		}
	}
}

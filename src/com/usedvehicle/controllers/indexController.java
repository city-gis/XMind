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
import com.usedvehicle.vo.sys_users_session_enum;

@Controller
@RequestMapping("sys")
public class indexController {
	@RequestMapping("index.do") // 判定登录是否成功跳转到index页面
	@ResponseBody
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		return mv;
	}
}

package com.usedvehicle.auth;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.usedvehicle.vo.sys_users_session_enum;

public class LoginInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session=request.getSession();
		if (session!=null) {
			if(session.getAttribute(sys_users_session_enum.userid.toString())!=null){
				return true;
			}else{
				// 返回到登录界面
				response.sendRedirect("../sys/login.do");
				return false;
			}
		} else{
			// 返回到登录界面
			response.sendRedirect("../sys/login.do");
			return false;
		}
			
	}
}

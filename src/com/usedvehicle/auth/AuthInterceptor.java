package com.usedvehicle.auth;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.usedvehicle.service.Isys_usersService;
import com.usedvehicle.vo.sys_users_session_enum;

public class AuthInterceptor extends HandlerInterceptorAdapter {
	@Autowired
	private Isys_usersService sys_usersService;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session=request.getSession();
		String contextPath=request.getContextPath();
	    String  url=request.getServletPath().toString();
		if (session!=null) {
			if(session.getAttribute(sys_users_session_enum.userid.toString())!=null){
				if (handler.getClass().isAssignableFrom(HandlerMethod.class)) {
					AuthPassport authPassport = ((HandlerMethod) handler).getMethodAnnotation(AuthPassport.class);
					// 
					
					if (authPassport == null || authPassport.validate() == false)
						return true;
					else {
						// 
						String userid=(String)session.getAttribute(sys_users_session_enum.userid.toString());
						 System.out.println(url+"@@"+userid);
						int result=sys_usersService.hasAU(url,userid);
						if (result>0)// 
							return true;
						else// 
						{
							// 
							response.sendRedirect(contextPath+"/404.jsp");
							return false;
						}
					}
					//return true;
				} else{
					return true;
				}
			}else{
				// ���ص���¼����
				response.sendRedirect(contextPath+"/login.jsp");
				return false;
			}
		} else{
			// ���ص���¼����
			response.sendRedirect(contextPath+"/login.jsp");
			return false;
		}
	}
}

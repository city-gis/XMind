package com.usedvehicle.auth;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.usedvehicle.vo.sys_users_session_enum;

public class AuthInterceptor extends HandlerInterceptorAdapter {

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
					// û��������ҪȨ��,������������֤Ȩ��
					if (authPassport == null || authPassport.validate() == false)
						return true;
					else {
						// ������ʵ���Լ���Ȩ����֤�߼�
						if (false)// �����֤�ɹ�����true������ֱ��дfalse��ģ����֤ʧ�ܵĴ���
							return true;
						else// �����֤ʧ��
						{
							// ���ص���¼����
							response.sendRedirect(contextPath+"/login.jsp");
							return false;
						}
					}
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

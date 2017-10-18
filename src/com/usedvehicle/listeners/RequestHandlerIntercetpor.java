package com.usedvehicle.listeners;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class RequestHandlerIntercetpor implements HandlerInterceptor {

	private static Logger logger = Logger.getLogger(RequestHandlerIntercetpor.class);
	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse arg1, Object arg2) throws Exception {
		//记录请求的日志
		
		//获取请求访问的Controller的URI
		String uri = request.getRequestURI(); 
		
		StringBuilder builder = new StringBuilder();
		Enumeration<String> enums = request.getParameterNames();
		while(enums.hasMoreElements()){
			String param_name = enums.nextElement();
			String param_value = request.getParameter(param_name);
			builder.append(param_name).append(":").append(param_value).append("|");
		}
		
		//记录日志
		logger.debug("uri:"+uri+"|"+builder.toString());
		
		return true;
	}

}

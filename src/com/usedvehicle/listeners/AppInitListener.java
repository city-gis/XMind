package com.usedvehicle.listeners;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.usedvehicle.service.IAppInitService;

public class AppInitListener implements ServletContextListener {

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		//从容器中获取 AppInitServiceImpl对象
		WebApplicationContext ac = WebApplicationContextUtils
				     .getRequiredWebApplicationContext(sce.getServletContext());
		
		
		IAppInitService initService = (IAppInitService) ac.getBean("appInitServiceImpl");
		if( initService == null) {
			System.out.println("初始字典表对象错误");
		} else {
			initService.initDictionary();
		}
		System.out.println("contextInitialized");
	}

}

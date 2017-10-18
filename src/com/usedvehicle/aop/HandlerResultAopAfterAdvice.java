package com.usedvehicle.aop;

import org.apache.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.web.servlet.ModelAndView;

import com.usedvehicle.view.ViewResult;

@Aspect
public class HandlerResultAopAfterAdvice {

	Logger logger = Logger.getLogger(HandlerResultAopAfterAdvice.class);
	
	//后置通知的方法
	@AfterReturning(value="execution(* com.usedvehicle.controllers.*.*(..))",returning="result")
	public void controllAfterReturing(JoinPoint jp,Object result){
		
		StringBuilder builder = new StringBuilder();
		
		builder.append(jp.getSignature().getName()).append("|");
		
		if( result !=null) {
			if( result instanceof ViewResult) {
				ViewResult vr = (ViewResult)result;
				builder.append(vr.getResult());
			} else if( result instanceof ModelAndView) {
				ModelAndView mv= (ModelAndView)result;
				builder.append(mv.getViewName());
			} else{
				builder.append(result.toString());
			}
		}
		
		//记录访问处理器方法的参数
		Object [] args = jp.getArgs(); 
		
		logger.debug(builder.toString());
		
	}
}

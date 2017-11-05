package com.usedvehicle.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NavigationController {
	
	
	@RequestMapping("nextjsp.do")
	public ModelAndView nextPage(String target,Long vid){
		ModelAndView mv = new ModelAndView();
		mv.setViewName(target);
		mv.addObject("vid", "111111111");
		return mv;
	}

}

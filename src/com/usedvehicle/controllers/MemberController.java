package com.usedvehicle.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.usedvehicle.beans.Members;
import com.usedvehicle.service.IMemberService;

@Controller
@RequestMapping("member")
public class MemberController {

	@Autowired
	private IMemberService memberService;
	
	@RequestMapping("queryMember.do")
	@ResponseBody
	public Object queryMember(String phone) {
		
		Members member = null;
		if( phone != null && !phone.isEmpty()) {
			member = memberService.queryMemberByPhone(phone);
		}
		
		return member;
		
	}
}

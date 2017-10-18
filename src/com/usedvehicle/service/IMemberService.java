package com.usedvehicle.service;

import com.usedvehicle.beans.Members;

public interface IMemberService {
	
	//根据手机号找到对应的成员信息
	Members queryMemberByPhone(String phone);

}

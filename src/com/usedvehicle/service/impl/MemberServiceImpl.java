package com.usedvehicle.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.usedvehicle.beans.Members;
import com.usedvehicle.dao.MembersMapper;
import com.usedvehicle.service.IMemberService;

@Service
public class MemberServiceImpl implements IMemberService {

	@Autowired
	private MembersMapper memberDao;
	
	//根据手机号查询会员信息
	@Override
	public Members queryMemberByPhone(String phone) {
		Members member = null;
		if( phone != null && !phone.isEmpty() ) {
			//调用Dao类的查询方法。
			member = memberDao.selecctMemberByPhone(phone);
		}
		return member;
	}

}

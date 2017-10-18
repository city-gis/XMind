package com.usedvehicle.dao;

import com.usedvehicle.beans.Members;
import java.util.List;

public interface MembersMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Members record);

    Members selectByPrimaryKey(Long id);

    List<Members> selectAll();

    int updateByPrimaryKey(Members record);
    
    //自定义方法开始
    
    //根据手机号查询得到会员信息
    Members selecctMemberByPhone(String phone);
}
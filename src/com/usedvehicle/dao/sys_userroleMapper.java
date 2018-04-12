package com.usedvehicle.dao;

import java.util.List;

import com.usedvehicle.beans.sys_userrole;


public interface sys_userroleMapper {
    /*
     * 通过userid搜索
     * */
    List<sys_userrole> serchByUserId(sys_userrole sys_userrole);//
    /*
     * 添加一个用户角色对应
     * */
    int adduserorle(sys_userrole sys_userrole);//
    /*
     * 通过userid删除
     * */
    int delByUserid(String userid);//
}

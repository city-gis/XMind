package com.usedvehicle.dao;

import java.util.List;

import com.usedvehicle.beans.sys_departrole;


public interface sys_departroleMapper {
    /*
     * 通过userid搜索
     * */
    List<sys_departrole> serchByDeapartId(String departid);//
    /*
     * 添加一个用户角色对应
     * */
    int adddepartrole(sys_departrole sys_departrole);//
    /*
     * 通过userid删除
     * */
    int delByDepartid(String userid);//
}

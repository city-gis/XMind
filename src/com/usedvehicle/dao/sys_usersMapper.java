package com.usedvehicle.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.usedvehicle.beans.sys_users;
import com.usedvehicle.common.pagerHelperRQ;


public interface sys_usersMapper {

    List<sys_users> selectAll();
    List<sys_users> serchByPage(@Param("pagerHelperRQ") pagerHelperRQ pagerHelperRQ);
    int countAll(@Param("name") String name);
    int delByID(@Param("userid") String menu_id);
    //List<sys_users_tree>  selectTree();
    int addone(sys_users sys_users );
    int modify(sys_users sys_users );
    sys_users serchById(@Param("id") String id);
    sys_users serchByName(@Param("name") String name);//登录使用
    int hasAU(@Param("url") String url,@Param("userid") String roleid);
}

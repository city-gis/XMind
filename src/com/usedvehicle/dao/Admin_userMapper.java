package com.usedvehicle.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.usedvehicle.beans.Admin_user;
import com.usedvehicle.common.pagerHelperRQ;


public interface Admin_userMapper {

    List<Admin_user> selectAll();
    List<Admin_user> serchByPage(@Param("pagerHelperRQ") pagerHelperRQ pagerHelperRQ);
    int countAll(@Param("name") String name);
    int delByID(@Param("userid") String menu_id);
    //List<Admin_user_tree>  selectTree();
    int addone(Admin_user Admin_user );
    int modify(Admin_user Admin_user );
    Admin_user serchById(@Param("id") String id);
}

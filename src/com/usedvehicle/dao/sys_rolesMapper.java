package com.usedvehicle.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.usedvehicle.beans.sys_roles;
import com.usedvehicle.common.pagerHelperRQ;


public interface sys_rolesMapper {

    List<sys_roles> selectAll();
    List<sys_roles> serchByPage(@Param("pagerHelperRQ") pagerHelperRQ pagerHelperRQ);
    int countAll(@Param("name") String name);
    int delByID(@Param("roleid") String menu_id);
    //List<sys_roles_tree>  selectTree();
    int addone(sys_roles sys_roles );
    int modify(sys_roles sys_roles );
    sys_roles serchById(@Param("id") String id);
}

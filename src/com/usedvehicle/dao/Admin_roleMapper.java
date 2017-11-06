package com.usedvehicle.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.usedvehicle.beans.Admin_role;
import com.usedvehicle.common.pagerHelperRQ;
//import com.usedvehicle.vo.Admin_role_tree;


public interface Admin_roleMapper {

    List<Admin_role> selectAll();
    List<Admin_role> serchByPage(@Param("pagerHelperRQ") pagerHelperRQ pagerHelperRQ);
    int countAll(@Param("name") String name);
    int delByID(@Param("roleid") String menu_id);
    //List<Admin_role_tree>  selectTree();
    int addone(Admin_role Admin_role );
    int modify(Admin_role Admin_role );
    Admin_role serchById(@Param("id") String id);
}

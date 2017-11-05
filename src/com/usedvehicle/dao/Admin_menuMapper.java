package com.usedvehicle.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.usedvehicle.beans.Admin_menu;
import com.usedvehicle.common.pagerHelperRQ;
import com.usedvehicle.vo.Admin_menu_tree;


public interface Admin_menuMapper {

    List<Admin_menu> selectAll();
    List<Admin_menu> serchByPage(@Param("pagerHelperRQ") pagerHelperRQ pagerHelperRQ);
    int countAll(@Param("name") String name);
    int delByID(@Param("menu_id") String menu_id);
    List<Admin_menu_tree>  selectTree();
    int addone(Admin_menu Admin_menu );
    int modify(Admin_menu Admin_menu );
    Admin_menu serchById(@Param("id") String id);
}

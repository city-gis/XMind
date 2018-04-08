package com.usedvehicle.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.usedvehicle.beans.sys_menus;
import com.usedvehicle.common.pagerHelperRQ;


public interface sys_menusMapper {

    List<sys_menus> selectAll();
    List<sys_menus> serchByPage(@Param("pagerHelperRQ") pagerHelperRQ pagerHelperRQ);
    int countAll(@Param("name") String name);
    int delByID(@Param("menuid") String menu_id);
    //List<sys_menus_tree>  selectTree();
    int addone(sys_menus sys_menus );
    int modify(sys_menus sys_menus );
    sys_menus serchById(@Param("id") String id);
}

package com.usedvehicle.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.usedvehicle.beans.sys_modelfuncs;
import com.usedvehicle.common.pagerHelperRQ;


public interface sys_modelfuncsMapper {

    List<sys_modelfuncs> selectAll();
    List<sys_modelfuncs> serchByPage(@Param("pagerHelperRQ") pagerHelperRQ pagerHelperRQ);
    int countAll(@Param("name") String name);
    int delByID(@Param("funcid") String menu_id);
    //List<sys_modelfuncs_tree>  selectTree();
    int addone(sys_modelfuncs sys_modelfuncs );
    int modify(sys_modelfuncs sys_modelfuncs );
    sys_modelfuncs serchById(@Param("id") String id);
}

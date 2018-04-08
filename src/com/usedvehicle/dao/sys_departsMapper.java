package com.usedvehicle.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.usedvehicle.beans.sys_departs;
import com.usedvehicle.common.pagerHelperRQ;


public interface sys_departsMapper {

    List<sys_departs> selectAll();
    List<sys_departs> serchByPage(@Param("pagerHelperRQ") pagerHelperRQ pagerHelperRQ);
    int countAll(@Param("name") String name);
    int delByID(@Param("departid") String menu_id);
    //List<sys_departs_tree>  selectTree();
    int addone(sys_departs sys_departs );
    int modify(sys_departs sys_departs );
    sys_departs serchById(@Param("id") String id);
}

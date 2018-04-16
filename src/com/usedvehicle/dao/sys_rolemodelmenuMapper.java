package com.usedvehicle.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.usedvehicle.beans.sys_rolemodelmenu;


public interface sys_rolemodelmenuMapper {

    List<sys_rolemodelmenu> selectAll();
    List<sys_rolemodelmenu> selectByRoleid(@Param("roleid") String roleid);
    int delByID(@Param("roleid") String menu_id);
    int addone(sys_rolemodelmenu sys_rolemodelmenu );
}

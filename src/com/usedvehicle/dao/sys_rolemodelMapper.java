package com.usedvehicle.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.usedvehicle.beans.sys_rolemodel;


public interface sys_rolemodelMapper {

    List<sys_rolemodel> selectAll();
    List<sys_rolemodel> selectByRoleid(@Param("roleid") String roleid);
    int delByID(@Param("roleid") String menu_id);
    int addone(sys_rolemodel sys_rolemodel );
}

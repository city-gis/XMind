package com.usedvehicle.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.usedvehicle.beans.sys_rolemodelfunc;


public interface sys_rolemodelfuncMapper {

    List<sys_rolemodelfunc> selectAll();
    List<sys_rolemodelfunc> selectByRoleid(@Param("roleid") String roleid);
    int delByID(@Param("roleid") String menu_id);
    int addone(sys_rolemodelfunc sys_rolemodelfunc );
}

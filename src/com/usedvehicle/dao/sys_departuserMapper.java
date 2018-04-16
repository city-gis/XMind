package com.usedvehicle.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.usedvehicle.beans.sys_departuser;


public interface sys_departuserMapper {

    List<sys_departuser> selectAll();
    List<sys_departuser> selectByRoleid(@Param("userid") String roleid);
    int delByID(@Param("userid") String menu_id);
    int addone(sys_departuser sys_departuser );
}

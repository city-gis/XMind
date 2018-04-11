package com.usedvehicle.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.usedvehicle.beans.sys_authority;


public interface sys_authorityMapper {
    int delByroleid(@Param("userid") String menu_id);
    int addone(sys_authority sys_authority );
    List<sys_authority> serchByroleid(@Param("roleid") String id);
}

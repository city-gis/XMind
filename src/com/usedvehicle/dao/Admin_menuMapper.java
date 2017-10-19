package com.usedvehicle.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.usedvehicle.beans.Admin_menu;


public interface Admin_menuMapper {

    List<Admin_menu> selectAll();
    List<Admin_menu> serchByPage(@Param("page") int page,@Param("limits") int limits,@Param("name") String name);
    int countAll(@Param("name") String name);
    int delByID(@Param("menu_id") int menu_id);
}

package com.usedvehicle.dao;

import java.util.List;
import java.util.Map;

import com.usedvehicle.beans.Admin_menu;


public interface Admin_menuMapper {

    List<Admin_menu> selectAll();
    List<Admin_menu> serchByPage(int page,int limit,String key);
    
}

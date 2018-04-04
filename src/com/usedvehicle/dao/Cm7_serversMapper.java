package com.usedvehicle.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.usedvehicle.beans.Cm7_servers;
import com.usedvehicle.common.pagerHelperRQ;
//import com.usedvehicle.vo.Cm7_servers_tree;


public interface Cm7_serversMapper {

    List<Cm7_servers> selectAll();
    List<Cm7_servers> serchByPage(@Param("pagerHelperRQ") pagerHelperRQ pagerHelperRQ);
    int countAll(@Param("name") String name);
    int delByID(@Param("id") String id);
//    List<Cm7_servers_tree>  selectTree();
    int addone(Cm7_servers Cm7_servers );
    int modify(Cm7_servers Cm7_servers );
    Cm7_servers serchById(@Param("id") String id);
}

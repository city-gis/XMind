package com.usedvehicle.dao;

import java.util.List;

import com.usedvehicle.beans.Vehicle;
import com.usedvehicle.vo.ViewVehicle;

public interface VehicleMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Vehicle record);
    
    //int insert(VehicleVo record);

    Vehicle selectByPrimaryKey(Long id);

    List<Vehicle> selectAll();

    int updateByPrimaryKey(Vehicle record);
    
    //根据车辆id，查询车辆信息
    ViewVehicle selectVehicleById(Long id);
}
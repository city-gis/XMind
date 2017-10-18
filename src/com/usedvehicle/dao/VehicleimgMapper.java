package com.usedvehicle.dao;

import com.usedvehicle.beans.Vehicleimg;
import java.util.List;

public interface VehicleimgMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Vehicleimg record);

    Vehicleimg selectByPrimaryKey(Integer id);

    List<Vehicleimg> selectAll();

    int updateByPrimaryKey(Vehicleimg record);
    
    //自定义查询
    Vehicleimg selectVehicleimgByVechileId(Long vehicleId);
    
    //插入操作
    void insertImg(Vehicleimg vimg);
    
    //更新
    void updateImg(Vehicleimg vimg);
}
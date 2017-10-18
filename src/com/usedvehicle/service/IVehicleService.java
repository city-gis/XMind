package com.usedvehicle.service;

import com.usedvehicle.beans.Vehicleimg;
import com.usedvehicle.vo.VehicleVo;
import com.usedvehicle.vo.ViewVehicle;

public interface IVehicleService {
	
	Long addVehicle(VehicleVo vo);
	
	//按车辆id(vehicleId) ，有无图片
	Vehicleimg queryVechleImage(Long vehicleId);
	
	//处理上传的图片，如果有记录，更新， 没有记录执行插入操作
	//车辆id， 位置， 新的文件名
	void editVehicleImage(Long vehicleId,int type, String filename);
	
	ViewVehicle queryVehicleById(Long vehicleId);

}

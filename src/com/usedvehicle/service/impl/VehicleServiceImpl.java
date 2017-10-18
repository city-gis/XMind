package com.usedvehicle.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.usedvehicle.beans.Vehicle;
import com.usedvehicle.beans.Vehicleimg;
import com.usedvehicle.dao.VehicleMapper;
import com.usedvehicle.dao.VehicleimgMapper;
import com.usedvehicle.service.IVehicleService;
import com.usedvehicle.vo.VehicleVo;
import com.usedvehicle.vo.ViewVehicle;

@Service
public class VehicleServiceImpl implements IVehicleService {

	@Autowired
	private VehicleMapper vehicleDao;
	
	@Autowired
	private VehicleimgMapper imgDao;
	
	@Override
	public Long addVehicle(VehicleVo vo) {
		
		Vehicle car  = new Vehicle();
		car.setHopeprice(vo.getHopePrice());
		car.setLicenseplatenumber(vo.getLicensePlateNumber());
		car.setMemberid(vo.getMemberId());
		car.setMileage(vo.getMileage());
		car.setRegistercode(vo.getRegisterCode());
		car.setRegisterdate(vo.getRegisterDate());
		car.setStartingprice(vo.getStartingPrice());
		car.setStatus(0);
		car.setType(vo.getType());
		car.setTypeid(vo.getTypeId());
		car.setVin(vo.getVin());
		
		vehicleDao.insert(car);
		//获取的主键id
		return car.getId();
		
		
		
		
	}

	@Override
	public Vehicleimg queryVechleImage(Long vehicleId) {
		return imgDao.selectVehicleimgByVechileId(vehicleId);
	}

	@Override
	public void editVehicleImage(Long vehicleId, int type, String filename) {
		
		Vehicleimg img = imgDao.selectVehicleimgByVechileId(vehicleId);
		if( img == null){
			//没有数据插入
			Vehicleimg vimg = new Vehicleimg();
			vimg.setVehicleid(vehicleId);
			if( type == 1) {
				vimg.setFimg(filename);
			}else if( type == 2) {
				vimg.setBimg(filename);
			}else if( type == 3) {
				vimg.setLimg(filename);
			}else if( type == 4) {
				vimg.setRimg(filename);
			}
			
			imgDao.insertImg(vimg);
		} else {
			//有图片，更新
			Vehicleimg vimg = new Vehicleimg();
			vimg.setVehicleid(vehicleId);
			if( type == 1) {
				vimg.setFimg(filename);
			}else if( type == 2) {
				vimg.setBimg(filename);
			}else if( type == 3) {
				vimg.setLimg(filename);
			}else if( type == 4) {
				vimg.setRimg(filename);
			}
			imgDao.updateImg(vimg);
		}
			 
		
	}

	@Override
	public ViewVehicle queryVehicleById(Long vehicleId) {
		//
		ViewVehicle vv = null;
		vv = vehicleDao.selectVehicleById(vehicleId);
		return vv;
	}

}

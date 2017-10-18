package com.usedvehicle.controllers;


import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.usedvehicle.init.AppInit;
import com.usedvehicle.init.ConfigParam;
import com.usedvehicle.service.IVehicleService;
import com.usedvehicle.view.ViewResult;
import com.usedvehicle.vo.VehicleVo;
import com.usedvehicle.vo.ViewVehicle;

@Controller
@RequestMapping("vehicle")
public class VehicleController {
	
	@Autowired
	private IVehicleService carService;

	@RequestMapping("/getVehicle.do")
	@ResponseBody
	public Object queryVehicleById(Long vehicleId){
		ViewResult vr = new ViewResult();
		if( vehicleId == null && vehicleId.longValue() < 1) {
			//参数联正确
			vr.setResult(1); //参数不对
			vr.setCode(-1);
			vr.setData("");
		} else {
			ViewVehicle vv = carService.queryVehicleById(vehicleId);
			if( vv == null) {
				vr.setResult(1); //没有车辆信息
				vr.setCode(-2);  //没有车辆信息
				vr.setData(vv);
			} else {
				vr.setResult(0);
				vr.setCode(0);  
				vr.setData(vv);
			}
		}
		return vr;
		
	}
	
	
	
	//获取所有的品牌
	@RequestMapping("initBrand.do")
	@ResponseBody
	public Object queryBrand(){
		return AppInit.global_brandList;
	}
	
	//根据品牌id获取车系信息
	@RequestMapping("initSeriesByBrandId.do")
	@ResponseBody
	public Object querySeries(Long brandId){
		return AppInit.global_seriesMap.get(brandId);
	}
	
	//根据车系id获取类型信息
	@RequestMapping("initTypeBySeriesId.do")
	@ResponseBody
	public Object queryType(Long seriesId){
		return AppInit.global_typeMap.get(seriesId);
	}
	
	@RequestMapping("insertVechicle.do")
	public ModelAndView addVehicle(VehicleVo vo){
		//数据的校验。
		Long vehicleId = carService.addVehicle(vo);
		
		ModelAndView mv  = new ModelAndView();
		if( vehicleId > 0 ){
			//增加车辆信息成功
			mv.addObject("vehicleId", vehicleId);
			//转发到车辆图片的插入页面
			mv.setViewName("photoInsert");
		} else {
			//增加车辆信息失败
			mv.setViewName("addError");
		}
		return mv;
	}
	
	@Autowired
	private ConfigParam configParam;
	
	//上传图片
	//图片，车辆的id，图片的位置（前面 1  ， 后面2，左侧3，右侧4)
	@RequestMapping("upload.do")
	@ResponseBody
	public Object uploadImg(MultipartFile photo,Long vehicleId, int type) throws IllegalStateException, IOException{
		
		int result = 1 ; // 1 表示错误，上传失败 ； 0 表示成功
		int code = -1 ; //表示错误码， 代码错误的类型 , 0 表示没有错误
		
		String path = configParam.getImagePath();
		String newFileName = "";
		
		//判断 vehicleId必须有值
		if(vehicleId !=null && vehicleId.longValue() > 0 ) {
			if( photo.isEmpty() ){
				//没有上传文件
				code = 2; //没有上传文件
			} else {
				//有文件上传
				String fileName = photo.getOriginalFilename();
				//判断上传文件的类型，  gif， jpg，png
				fileName = fileName.toLowerCase();
				if( fileName.endsWith(".gif") || 
						fileName.endsWith(".jpg") || fileName.endsWith(".png")){
					
					//生成新的文件名
					String uuid = UUID.randomUUID().toString().replaceAll("-", "");
					//扩展名
					int pos = fileName.indexOf(".");
					String extName = fileName.substring(pos);
					
					//新的文件名
					newFileName = uuid + extName;
					
					//存到磁盘
					File fout = new File(path,newFileName);
					photo.transferTo(fout);
					result = 0; //表示没有错误
					code = 0; //表示没有错误
					//记录到数据库
					carService.editVehicleImage(vehicleId, type, newFileName);
					
				} else {
					//扩展名不支持
					code = 3;
				}
			}
		} else {
			//没有车辆id
			code = 1 ;//表示没有车辆id
		}
		
		//返回结果
		ViewResult vr  = new ViewResult();
		vr.setCode(code);
		vr.setResult(result);
		vr.setData( configParam.getImageUrl() + newFileName );
		return vr;
		
	}
	

	//处理日期
	//@InitBinder(value="registerDate")
	@InitBinder
	public void customDate(WebDataBinder binder){
		DateFormat dateFormate = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, 
				new CustomDateEditor(dateFormate, true));
		
	}
	
	
	
	
}

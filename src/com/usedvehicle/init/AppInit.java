package com.usedvehicle.init;

import java.util.List;
import java.util.Map;

import com.usedvehicle.beans.Brand;

public class AppInit {
	
	//品牌的全局数据
	public static List<Brand> global_brandList;
	
	//车系的Map
	public static Map<Long,List<Object>> global_seriesMap;
	
	//车类型的Map
	public static Map<Long,List<Object>> global_typeMap;

}

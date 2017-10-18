package com.usedvehicle.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.usedvehicle.beans.Brand;
import com.usedvehicle.beans.Series;
import com.usedvehicle.beans.Type;
import com.usedvehicle.dao.BrandMapper;
import com.usedvehicle.dao.SeriesMapper;
import com.usedvehicle.dao.TypeMapper;
import com.usedvehicle.init.AppInit;
import com.usedvehicle.service.IAppInitService;

@Service
public class AppInitServiceImpl implements IAppInitService {

	@Autowired
	private BrandMapper brandDao;
	
	@Autowired
	private SeriesMapper seriesDao;
	
	@Autowired
	private TypeMapper typeDao;
	

	@Override
	public void initDictionary() {
		List<Brand> brandList = brandDao.selectAllBrandByRn();
	
		//车系
		List<Series> seriesList = seriesDao.selectAllSeriesByRn();
		//车类型
		List<Type> typeList = typeDao.selectAllTypeByRn();
		
		generateDictionary(seriesList);
		
		generateDictionary(typeList);
		
		
		//给全局变量赋值
		AppInit.global_brandList = brandList;
		
	}
	
	private void generateDictionary(List<?> srcList) {
		// 把List---Map
		Map<Long, List<Object>> cMap = new HashMap<>();
		List<Object> cList = new ArrayList<Object>();

		int category =  0 ;
		// cid:当前行的id ， ocid 上一行的id
		Long cid = 0L, ocid = 0L;
		Object element = null;
		
		try{
			for (int i = 0, len = srcList.size(); i < len; i++) {
				
				element = srcList.get(i);
				if( element instanceof Series) {
					cid = ((Series)element).getBrandid();
					category  = 1;
					
				} else if( element instanceof Type) {
					cid = ((Type)element).getSeriesid();
					category  = 2;
				}
				
				if (i > 0 && cid != ocid) {
					cMap.put(ocid, cList);
					cList = new ArrayList<Object>();
				}
				cList.add(element);
				// 把当前赋给了之前的
				ocid = cid; // ocid=2

			}
			// 把最后一个的比较结果处理
			cMap.put(ocid, cList);
			
			// 给全局的Map赋值
			switch (category) {
			case 1:
				//车系
				AppInit.global_seriesMap = cMap;
				break;
			case 2:
				//车类型
				AppInit.global_typeMap  = cMap;
				break;
			}

		} catch(Exception e) {
			e.printStackTrace();
		}

	}
	
	
	
	/*private void generateDictionary1(List<Type> srcList) {
		  //把List---Map
		  Map<Long,List<Object>> cMap = new HashMap<>();
		  List<Object> cList = new ArrayList<Object>();
		  
		  // cid:当前行的id ， ocid 上一行的id
		  Long cid = 0L , ocid = 0L;
		  
		  Type type = null;
		  for(int i=0,len = srcList.size();i< len ;i++){
			  type = srcList.get(i); // 3
			  cid = type.getSeriesid();
			  
			  if( i > 0 && cid != ocid ) {
				  cMap.put(ocid, cList);
				  cList = new ArrayList<Object>();
			  }
			  cList.add(type);
			  //把当前赋给了之前的
			  ocid = cid;  //  ocid=2
			  
		  }
			
		  //把最后一个的比较结果处理
		  cMap.put(ocid, cList);
			
			
		}*/
	
	
	/*private void generateDictionary2(List<Series> srcList) {
		  //把List---Map
		  Map<Long,List<Object>> cMap = new HashMap<>();
		  List<Object> cList = new ArrayList<Object>();
		  
		  // cid:当前行的id ， ocid 上一行的id
		  Long cid = 0L , ocid = 0L;
		  
		  Series series = null;
		  for(int i=0,len = srcList.size();i< len ;i++){
			  series = srcList.get(i); // 3
			  cid = series.getBrandid();  //2
			  
			  if( i > 0 && cid != ocid ) {
				  cMap.put(ocid, cList);
				  cList = new ArrayList<Object>();
			  }
			  cList.add(series);
			  //把当前赋给了之前的
			  ocid = cid;  //  ocid=2
			  
		  }
			
		  //把最后一个的比较结果处理
		  cMap.put(ocid, cList);
			
			
		}*/
	
	
	

	

}

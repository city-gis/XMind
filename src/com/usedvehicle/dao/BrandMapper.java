package com.usedvehicle.dao;

import com.usedvehicle.beans.Brand;
import java.util.List;

public interface BrandMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Brand record);

    Brand selectByPrimaryKey(Long id);

    List<Brand> selectAll();

    int updateByPrimaryKey(Brand record);
    
    //自定义方法开始
    List<Brand> selectAllBrandByRn();
}
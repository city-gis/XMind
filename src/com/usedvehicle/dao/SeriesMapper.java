package com.usedvehicle.dao;

import com.usedvehicle.beans.Series;
import java.util.List;

public interface SeriesMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Series record);

    Series selectByPrimaryKey(Long id);

    List<Series> selectAll();

    int updateByPrimaryKey(Series record);
    
    //自定义方法
    List<Series> selectAllSeriesByRn();
}
package com.usedvehicle.dao;

import com.usedvehicle.beans.Type;
import java.util.List;

public interface TypeMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Type record);

    Type selectByPrimaryKey(Long id);

    List<Type> selectAll();

    int updateByPrimaryKey(Type record);
    
    List<Type> selectAllTypeByRn();
}
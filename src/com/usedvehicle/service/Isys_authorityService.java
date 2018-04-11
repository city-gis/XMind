package com.usedvehicle.service;

import java.util.List;
import com.usedvehicle.beans.sys_authority;

public interface Isys_authorityService {
	boolean addAuth(List<sys_authority> lst,String roleid);
    List<sys_authority> serchByroleid(String id);
}

package com.usedvehicle.service;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.usedvehicle.beans.Cm7_servers;
import com.usedvehicle.common.pagerHelperRQ;
import com.usedvehicle.common.pagerHelperRS;
//import com.usedvehicle.vo.Cm7_servers_tree;

public interface ICm7_serversService {
	List<Cm7_servers>  queryAll();
	pagerHelperRS  serchbypager(pagerHelperRQ pager);
	List<Cm7_servers>  serchAll();
	//List<Cm7_servers_tree>  serchTree();
	int countAll(String name);
	int delById(String id);
	int addone(Cm7_servers menu);
	int modify(Cm7_servers menu);
	Cm7_servers serchByID(String id);
}

package com.usedvehicle.service;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.usedvehicle.vo.jstree;

public interface IjstreeService {
	List<jstree>  model_tree();
	List<jstree>  role_tree();
	List<jstree>  modelfunc_tree();
}

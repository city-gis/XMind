package com.usedvehicle.dao;

import java.util.List;
import com.usedvehicle.vo.jstree;

public interface jstreeMapper {
	/*
	 * ģ������б�ҳ�������
	 * */
    List<jstree>  model_tree();
	/*
	 * ��ɫ�����б�ҳ�������
	 * */
    List<jstree>  role_tree();
	/*
	 * ��ɫ�б�ҳ�淽��Ȩ�޹���
	 * */
    List<jstree>  modelfunc_tree();
    
}

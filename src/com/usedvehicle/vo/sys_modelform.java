package com.usedvehicle.vo;

import java.util.List;

import com.usedvehicle.beans.sys_modelmenu;

public class sys_modelform {
		//引用类型的属性
		private List<sys_modelmenu> sys_modelmenuss;
		private String modelid;

		public List<sys_modelmenu> getSys_modelmenuss() {
			return sys_modelmenuss;
		}

		public void setSys_modelmenuss(List<sys_modelmenu> sys_modelmenuss) {
			this.sys_modelmenuss = sys_modelmenuss;
		}

		public String getModelid() {
			return modelid;
		}

		public void setModelid(String modelid) {
			this.modelid = modelid;
		}
		
}

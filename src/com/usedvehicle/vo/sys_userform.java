package com.usedvehicle.vo;

import java.util.List;

import com.usedvehicle.beans.sys_modelmenu;
import com.usedvehicle.beans.sys_roles;
import com.usedvehicle.beans.sys_userrole;

public class sys_userform {
		//引用类型的属性
		private List<sys_userrole> lstsys_userrole;
		private String userid;
		public List<sys_userrole> getLstsys_userrole() {
			return lstsys_userrole;
		}
		public void setLstsys_userrole(List<sys_userrole> lstsys_userrole) {
			this.lstsys_userrole = lstsys_userrole;
		}
		public String getUserid() {
			return userid;
		}
		public void setUserid(String userid) {
			this.userid = userid;
		}
		

}

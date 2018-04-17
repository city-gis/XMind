package com.usedvehicle.vo;

import java.util.List;

import com.usedvehicle.beans.sys_departrole;

public class sys_departrole_vo {
		//引用类型的属性
		private List<sys_departrole> lstsys_departrole;
		private String departid;
		public List<sys_departrole> getLstsys_departrole() {
			return lstsys_departrole;
		}
		public void setLstsys_departrole(List<sys_departrole> lstsys_departrole) {
			this.lstsys_departrole = lstsys_departrole;
		}
		public String getDepartid() {
			return departid;
		}
		public void setDepartid(String departid) {
			this.departid = departid;
		}
		
}

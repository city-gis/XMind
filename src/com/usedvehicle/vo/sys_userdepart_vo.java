package com.usedvehicle.vo;

import java.util.List;

import com.usedvehicle.beans.sys_departuser;

public class sys_userdepart_vo {
		//人员主页面--给人员分配部门
		private List<sys_departuser> lstsys_userdepart;
		private String userid;
		public List<sys_departuser> getLstsys_userdepart() {
			return lstsys_userdepart;
		}
		public void setLstsys_userdepart(List<sys_departuser> lstsys_userdepart) {
			this.lstsys_userdepart = lstsys_userdepart;
		}
		public String getUserid() {
			return userid;
		}
		public void setUserid(String userid) {
			this.userid = userid;
		}
}

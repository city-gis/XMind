package com.usedvehicle.vo;

import java.util.List;

import com.usedvehicle.beans.sys_rolemodel;

public class sys_rolemodelvo {
		//�������͵�����
		private List<sys_rolemodel> sys_rolemodels;
		private String roleid;
		public List<sys_rolemodel> getSys_rolemodels() {
			return sys_rolemodels;
		}
		public void setSys_rolemodels(List<sys_rolemodel> sys_rolemodels) {
			this.sys_rolemodels = sys_rolemodels;
		}
		public String getRoleid() {
			return roleid;
		}
		public void setRoleid(String roleid) {
			this.roleid = roleid;
		}

		
		
}

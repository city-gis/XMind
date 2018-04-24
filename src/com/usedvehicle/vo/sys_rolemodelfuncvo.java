package com.usedvehicle.vo;

import java.util.List;

import com.usedvehicle.beans.sys_rolemodelfunc;

public class sys_rolemodelfuncvo {
		//角色主页面--给角色赋模组按钮权限
		private List<sys_rolemodelfunc> sys_rolemodelfuncs;
		private String roleid;
		public List<sys_rolemodelfunc> getSys_rolemodelfuncs() {
			return sys_rolemodelfuncs;
		}
		public void setSys_rolemodelfuncs(List<sys_rolemodelfunc> sys_rolemodelfuncs) {
			this.sys_rolemodelfuncs = sys_rolemodelfuncs;
		}
		public String getRoleid() {
			return roleid;
		}
		public void setRoleid(String roleid) {
			this.roleid = roleid;
		}
		
}

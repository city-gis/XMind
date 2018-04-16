package com.usedvehicle.vo;

import java.util.List;

import com.usedvehicle.beans.sys_modelmenu;
import com.usedvehicle.beans.sys_rolemodelmenu;

public class sys_rolemodelmenuvo {
		//角色主页面--给角色赋模组按钮权限
		private List<sys_rolemodelmenu> sys_rolemodelmenus;
		private String roleid;
		public List<sys_rolemodelmenu> getSys_rolemodelmenus() {
			return sys_rolemodelmenus;
		}
		public void setSys_rolemodelmenus(List<sys_rolemodelmenu> sys_rolemodelmenus) {
			this.sys_rolemodelmenus = sys_rolemodelmenus;
		}
		public String getRoleid() {
			return roleid;
		}
		public void setRoleid(String roleid) {
			this.roleid = roleid;
		}
}

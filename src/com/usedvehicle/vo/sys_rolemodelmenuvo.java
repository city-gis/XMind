package com.usedvehicle.vo;

import java.util.List;

import com.usedvehicle.beans.sys_modelmenu;
import com.usedvehicle.beans.sys_rolemodelmenu;

public class sys_rolemodelmenuvo {
		//��ɫ��ҳ��--����ɫ��ģ�鰴ťȨ��
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

package com.usedvehicle.controllers;

import java.util.List;
import java.util.Map;

import org.aspectj.weaver.ast.Var;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sun.glass.ui.View;
import com.usedvehicle.beans.Cm7_servers;
//import com.usedvehicle.vo.Cm7_servers_tree;
import com.usedvehicle.common.messageHelper;
import com.usedvehicle.common.pagerHelperRQ;
import com.usedvehicle.common.pagerHelperRS;
import com.usedvehicle.service.ICm7_serversService;

@Controller
@RequestMapping("cm7_servers")
public class Cm7_serversController {

	@Autowired
	private ICm7_serversService Cm7_serversService;
	@RequestMapping("queryTreeMenu.do")//��춲�ԃ���е������ˆηּ��@ʾ
	@ResponseBody//���AJAX
	public Object queryMember() {
		
		List<Cm7_servers> adminmenus = null;
		adminmenus = Cm7_serversService.queryAll();
		return adminmenus;
		
	}
	
	@RequestMapping("view.do")//��춲�ԃ���е������ˆηּ��@ʾ
	public ModelAndView view() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cm7_servers_view");
		return mv;
	}

	
	@RequestMapping("add_view.do")//��춲�ԃ���е������ˆηּ��@ʾ
	@ResponseBody//���AJAX
	public ModelAndView add_view() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cm7_servers_add");
		//View view=mv.getClass();
		return mv;
	}
	
	@RequestMapping("edit_view.do")//��춲�ԃ���е������ˆηּ��@ʾ
	//@ResponseBody//���AJAX
	public ModelAndView edit_view(String id) {
		Cm7_servers Cm7_servers=Cm7_serversService.serchByID(id);
		ModelAndView mv = new ModelAndView("cm7_servers_edit");
		String names="nihao";
		mv.addObject(Cm7_servers);
		mv.addObject("ret","nihao  ninasinfi");
		//mv.setViewName("Cm7_servers_edit");
		//View view=mv.getClass();
		return mv;
	}
	//��ҳ��ѯ
	@RequestMapping("serch.do")//��춲�ԃ���е������ˆηּ��@ʾ
	@ResponseBody//���AJAX
	public Object serch(pagerHelperRQ pager) {
		pagerHelperRS pagerrs=Cm7_serversService.serchbypager(pager);
		return pagerrs;
	}

//	//��ҳ��ѯ
//	@RequestMapping("serchCm7_servers_Tree.do")//��춲�ԃ���е������ˆηּ��@ʾ
//	@ResponseBody//���AJAX
//	public Object serchAll() {
//		List<Cm7_servers_tree> adminmenus = null;
//		
//		adminmenus = Cm7_serversService.serchTree();
//		return adminmenus;
//	}
	//��ҳ��ѯ
	@RequestMapping("serchCount.do")//��춲�ԃ���е������ˆηּ��@ʾ
	@ResponseBody//���AJAX
	public int  serchCount(String name) {
		int count = Cm7_serversService.countAll(name);
		return count;
	}
	//��ҳ��ѯ
	@RequestMapping("add.do")//��춲�ԃ���е������ˆηּ��@ʾ
	@ResponseBody//���AJAX
	public Object add(Cm7_servers menus) {
		messageHelper message= new messageHelper();
		try {
			 int result= Cm7_serversService.addone(menus);
			 if(result>0){
				message.setMst(0);
				message.setMsg("�����˵����ܳɹ���");
			 }else{
				message.setMst(1);
				message.setMsg("�����˵�����ʧ�ܣ�");
			 }
		} catch (Exception e) {
			message.setMst(1);
			message.setMsg("�����˵�����ʧ�ܣ�"+e.getMessage());
		}
		return message;
	}
	
	//�޸� 
		@RequestMapping("edit.do")//��춲�ԃ���е������ˆηּ��@ʾ
		@ResponseBody//���AJAX
		public Object edit(Cm7_servers menus) {
			messageHelper message= new messageHelper();
			try {
				 int result= Cm7_serversService.modify(menus);
				 if(result>0){
					message.setMst(0);
					message.setMsg("�޸Ĳ˵����ܳɹ���");
				 }else{
					message.setMst(1);
					message.setMsg("�޸Ĳ˵�����ʧ�ܣ�");
				 }
			} catch (Exception e) {
				message.setMst(1);
				message.setMsg("�޸Ĳ˵�����ʧ�ܣ�"+e.getMessage());
			}
			return message;
		}
	//��ҳ��ѯ
	@RequestMapping("delmenu.do")//��춲�ԃ���е������ˆηּ��@ʾ
	@ResponseBody//���AJAX
	public Object delmenu(String id) {
		messageHelper message= new messageHelper();
		try {
			 int result= Cm7_serversService.delById(id);
			 if(result>0){
				message.setMst(0);
				message.setMsg("ɾ���˵����ܳɹ���");
			 }else{
				message.setMst(1);
				message.setMsg("ɾ���˵�����ʧ�ܣ�");
			 }
			
		} catch (Exception e) {
			message.setMst(1);
			message.setMsg("ɾ���˵�����ʧ�ܣ�"+e.getMessage());
		}
		return message;
	}
	
}

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
import com.usedvehicle.beans.Admin_role;
//import com.usedvehicle.vo.admin_role_tree;
import com.usedvehicle.common.messageHelper;
import com.usedvehicle.common.pagerHelperRQ;
import com.usedvehicle.common.pagerHelperRS;
import com.usedvehicle.service.IAdmin_roleService;

@Controller
@RequestMapping("admin_role")
public class Admin_roleController {

	@Autowired
	private IAdmin_roleService Admin_roleService;
	@RequestMapping("queryTreeMenu.do")//鐢ㄦ柤鏌ヨ鎵�鏈夌殑涓嬫媺鑿滃柈鍒嗙礆椤ず
	@ResponseBody//鐢ㄦ柤AJAX
	public Object queryMember() {
		
		List<Admin_role> adminmenus = null;
		adminmenus = Admin_roleService.queryAll();
		return adminmenus;
		
	}
	
	@RequestMapping("demo.do")//鐢ㄦ柤鏌ヨ鎵�鏈夌殑涓嬫媺鑿滃柈鍒嗙礆椤ず
	@ResponseBody//鐢ㄦ柤AJAX
	public Object demo() {
		
		return "[{'modelid':0,'modelname':'王三','level':0,'endDate':'2017-03-07','isLeaf':false,'nodeLevel':20,'expanded':true,'description':'123'}, {'modelid':1,'modelname':'王三','level':1,'endDate':'2017-03-07','isLeaf':false,'nodeLevel':21,'parent':0,'expanded':true,'description':'123'},{'modelid':2,'modelname':'王三','level':2,'endDate':'2017-03-07','isLeaf':true,'nodeLevel':22,'parent':1,'expanded':true,'description':'123'}]";
		
	}
	
	@RequestMapping("view.do")//鐢ㄦ柤鏌ヨ鎵�鏈夌殑涓嬫媺鑿滃柈鍒嗙礆椤ず
	public ModelAndView view() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin_role_view");
		return mv;
	}

	
	@RequestMapping("add_view.do")//鐢ㄦ柤鏌ヨ鎵�鏈夌殑涓嬫媺鑿滃柈鍒嗙礆椤ず
	@ResponseBody//鐢ㄦ柤AJAX
	public ModelAndView add_view() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin_role_add");
		//View view=mv.getClass();
		return mv;
	}
	
	@RequestMapping("edit_view.do")//鐢ㄦ柤鏌ヨ鎵�鏈夌殑涓嬫媺鑿滃柈鍒嗙礆椤ず
	//@ResponseBody//鐢ㄦ柤AJAX
	public ModelAndView edit_view(String id) {
		Admin_role admin_role=Admin_roleService.serchByID(id);
		ModelAndView mv = new ModelAndView("admin_role_edit");
		String names="nihao";
		mv.addObject(admin_role);
		mv.addObject("ret","nihao  ninasinfi");
		//mv.setViewName("admin_role_edit");
		//View view=mv.getClass();
		return mv;
	}
	//鍒嗛〉鏌ヨ
	@RequestMapping("serch.do")//鐢ㄦ柤鏌ヨ鎵�鏈夌殑涓嬫媺鑿滃柈鍒嗙礆椤ず
	@ResponseBody//鐢ㄦ柤AJAX
	public Object serch(pagerHelperRQ pager) {
		pagerHelperRS pagerrs=Admin_roleService.serchbypager(pager);
		return pagerrs;
	}
	//鍒嗛〉鏌ヨ
	@RequestMapping("serchCount.do")//鐢ㄦ柤鏌ヨ鎵�鏈夌殑涓嬫媺鑿滃柈鍒嗙礆椤ず
	@ResponseBody//鐢ㄦ柤AJAX
	public int  serchCount(String name) {
		int count = Admin_roleService.countAll(name);
		return count;
	}
	//鍒嗛〉鏌ヨ
	@RequestMapping("add.do")//鐢ㄦ柤鏌ヨ鎵�鏈夌殑涓嬫媺鑿滃柈鍒嗙礆椤ず
	@ResponseBody//鐢ㄦ柤AJAX
	public Object add(Admin_role menus) {
		messageHelper message= new messageHelper();
		try {
			 int result= Admin_roleService.addone(menus);
			 if(result>0){
				message.setMst(0);
				message.setMsg("鏂板鑿滃崟鍔熻兘鎴愬姛锛�");
			 }else{
				message.setMst(1);
				message.setMsg("鏂板鑿滃崟鍔熻兘澶辫触锛�");
			 }
		} catch (Exception e) {
			message.setMst(1);
			message.setMsg("鏂板鑿滃崟鍔熻兘澶辫触锛�"+e.getMessage());
		}
		return message;
	}
	
	//淇敼 
		@RequestMapping("edit.do")//鐢ㄦ柤鏌ヨ鎵�鏈夌殑涓嬫媺鑿滃柈鍒嗙礆椤ず
		@ResponseBody//鐢ㄦ柤AJAX
		public Object edit(Admin_role menus) {
			messageHelper message= new messageHelper();
			try {
				 int result= Admin_roleService.modify(menus);
				 if(result>0){
					message.setMst(0);
					message.setMsg("淇敼鑿滃崟鍔熻兘鎴愬姛锛�");
				 }else{
					message.setMst(1);
					message.setMsg("淇敼鑿滃崟鍔熻兘澶辫触锛�");
				 }
			} catch (Exception e) {
				message.setMst(1);
				message.setMsg("淇敼鑿滃崟鍔熻兘澶辫触锛�"+e.getMessage());
			}
			return message;
		}
	//鍒嗛〉鏌ヨ
	@RequestMapping("delmenu.do")//鐢ㄦ柤鏌ヨ鎵�鏈夌殑涓嬫媺鑿滃柈鍒嗙礆椤ず
	@ResponseBody//鐢ㄦ柤AJAX
	public Object delmenu(String id) {
		messageHelper message= new messageHelper();
		try {
			 int result= Admin_roleService.delById(id);
			 if(result>0){
				message.setMst(0);
				message.setMsg("鍒犻櫎鑿滃崟鍔熻兘鎴愬姛锛�");
			 }else{
				message.setMst(1);
				message.setMsg("鍒犻櫎鑿滃崟鍔熻兘澶辫触锛�");
			 }
			
		} catch (Exception e) {
			message.setMst(1);
			message.setMsg("鍒犻櫎鑿滃崟鍔熻兘澶辫触锛�"+e.getMessage());
		}
		return message;
	}
	
}

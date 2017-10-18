<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<title>竞拍管理系统</title>
<link href="css/admin.css" rel="stylesheet" type="text/css" />
<script src="js/calendar/WdatePicker.js" ></script>
<script src="js/jquery.js" ></script>
<script type="text/javascript">
	$(function(){
		//////////////默认选中状态下拉列表
		var v_vehicleStatus="${whereMap.vehicleStatus}";
		$(".status2[value='"+v_vehicleStatus+"']").attr("selected","selected");
		/////////////////
		
		
		$(".fy").bind("click",function(){
			//由于超链接本身没有value属性所以不能使用val()方法获取 数据值
			var v_nextPageNumber= $(this).attr("value");
			
			if(v_nextPageNumber<1||v_nextPageNumber*1>("${whereMap.pageSize}")*1||v_nextPageNumber=="${whereMap.pageNumber}"){
				return;
			}
			$("#pageNumber").val(v_nextPageNumber)
			//执行表单提交
			$("#nextForm").submit();
			
		})
		$("#goPage").bind("click",function(){
			
			var v_nextPageNumber=$("#goPageNumber").val();
			//获取跳转至的输入框值并判断是否是数字 如果不是数字则中断程序
			if(isNaN(v_nextPageNumber)){
				$("#goPageNumber").val("");
				return ;
			}
	
			if(v_nextPageNumber<1||v_nextPageNumber*1>=("${whereMap.pageSize}")*1||v_nextPageNumber=="${whereMap.pageNumber}"){
				$("#goPageNumber").val("");
				return;
			}
			//修改翻页表单的当前页码
			$("#pageNumber").val(v_nextPageNumber)
			//执行表单提交
			$("#nextForm").submit();
		})
	})

</script>
</head>
<body>
<div id="container">
<div class="top center">
	<ul>
		<li class="admin_logo"><img src="images/adminlogo.jpg" width="387" height="60"/></li>
		<li class="admin_prompt">
        <div id="logo"></div>
         <br clear="all" />
        <div class="txt_pad"> 用户名：admin &nbsp;&nbsp;|&nbsp;&nbsp;<a href="login.html" class="white">退出登录</a> &nbsp;&nbsp;</div>
        </li>
	</ul>
</div>
<div class="main">
	<div id="navigation">
		<div id="left-nav">
			<div class="top-level"> 
        <a href="javascript:location='carInfoMenu.html'" class="active">车辆管理</a>
        <a href="javascript:location='auctionMenu.html'">竞拍管理</a>
        <a href="javascript:location='carBidMenu.html'">举牌竞拍现场</a>
        <a href="javascript:location='accountMenu.html'">结算管理</a>
        <a href="javascript:location='memberMenu.html'">会员管理</a>
        <a href="javascript:location='bacthMenu.html'">接口管理</a>
        <a href="javascript:location='systemMenu.html'">系统管理</a>
            </div>
		</div>
	</div>
	<div id="content">
     <!--start:内容标题-->
  <div class="top_title">
  <div class="left">
		<h3><img src="images/local_ico.jpg" width="20" height="20" align="absmiddle" />&nbsp;<a href="carInfoMenu.html">车辆管理</a> >>&nbsp;车辆信息查询</h3>
  </div>
   <div class="right">
    当前时间：<script language=JavaScript>                                                                            
   var enable=0; today=new Date();                                                                             
   var day; var date; var clocktext;                                                                           
   var time_start = new Date();                                                                             
   var clock_start = time_start.getTime();                                                                             
   if(today.getDay()==0) day="星期日&nbsp;"                                                                             
   if(today.getDay()==1) day="星期一&nbsp;"                                                                             
   if(today.getDay()==2) day="星期二&nbsp;"                                                                             
   if(today.getDay()==3) day="星期三&nbsp;"                                                                             
   if(today.getDay()==4) day="星期四&nbsp;"                                                                             
   if(today.getDay()==5) day="星期五&nbsp;"                                                                             
   if(today.getDay()==6) day="星期六&nbsp;"                                                                             
   date=(today.getFullYear())+"年"+(today.getMonth()+1)+"月"+today.getDate()+"日&nbsp;";   
   sec = today.getSeconds();
   hr = today.getHours();
   min = today.getMinutes();
   if (hr <= 9) hr = "0" + hr;
   if (min <= 9) min = "0" + min;
   if (sec <= 9) sec = "0" + sec;
   clocktext =  hr + ":" + min + ":" + sec;       
   document.write(date+day+clocktext);                                                                    
          </script> &nbsp;&nbsp;
   </div>
  </div>
 <!--end:内容标题-->
        <div class="caradmin_title">
            <div class="caradmin_left"><h1>车辆信息查询</h1></div>
        </div>
		<div class="rightContent center">
			<form use="inside" action="searchVehicle" method="post" >
				<table width="100%" cellspacing="1" cellpadding="0" border="0" class="contentTab">
					<tbody>
						<tr class="writebg">
							<td colspan="2" class="bluebg_title">车辆信息查询</td>
						</tr>
						<tr class="writebg">
							<td width="20%" align="left" class="boldtitle">车辆ID：</td>
							<td ><input value="${whereMap.vehicleId }" name="vehicleId" type="text" id="vehicleId" class="put_type" maxlength="10"></td>
						</tr>
						<tr class="writebg">
							<td  align="left" class="boldtitle">会员ID：</td>
							<td ><input  value="${whereMap.memberId }" name="memberId" type="text" class="put_type" id="userId" maxlength="10"></td>
						</tr>
						<tr class="writebg">
							<td align="left" class="boldtitle">状态：</td>
							<td >
                              <select id="status" name="vehicleStatus"  class="select_w">
                                <option class="status2" value="0" >--全部--</option>
                                <option class="status2" value="1" > 录入中</option>
                                <option class="status2" value="2">待检测</option>
                                <option class="status2" value="3">待照相</option>
                                <option class="status2" value="4">录入完了</option>
                              </select>
                            </td>
						</tr>
						<tr class="writebg">
							<td  align="left" class="boldtitle">VIN：</td>
							<td ><input  value="${whereMap.vehicleVin }" name="vehicleVin" type="text" id="vin" maxlength="50" class="put_type"></td>
						</tr>
						<tr class="writebg">
							<td  align="left" class="boldtitle">登记时间：</td>
							<td ><input  value='<fmt:formatDate value="${whereMap.startDate }"  pattern="yyyy-MM-dd"/>'  type="text" name="startDate" size="21" id="dll RegDate" onclick="WdatePicker()" class="put_type_small" > 至 <input   value='<fmt:formatDate value="${whereMap.endDate }"  pattern="yyyy-MM-dd"/>' type="text" name="endDate" size="21" id="dll RegDate" onclick="WdatePicker()"  class="put_type_small"> </td>
						</tr>
					</tbody>
				</table>
              <div class="bid_price">
                 <table width="100%" cellspacing="0" cellpadding="0" border="0">
                   <tr>
                     <td width="20%">&nbsp;</td>
                     <td height="40" align="left">
                  <input type="submit" value=" 检索 " name="submit" class="btn btn_small" >
								&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="reset" value=" 重置 " name="submit" class="btn btn_small">
                 </td>
             </tr>
          </table> 
		  <table width="100%" cellspacing="1" cellpadding="0" border="0" class="contentTab">
					<tbody>
						<tr class="writebg" style="margin:5px 0">
							<th align="center" class="bluebg" >序号</th>
							<th align="center" class="bluebg" >车辆ID</th>
							<th align="center" class="bluebg" >会员信息</th>
							<th align="center" class="bluebg" >起拍价格</th>
							<th align="center" class="bluebg" >厂牌型号</th>
							<th align="center" class="bluebg" >添加时间</th>
							<th align="center" class="bluebg" >状态</th>
							<th align="center" class="bluebg" >操作</th>
						</tr>
						<c:forEach items="${list }" var="obj" varStatus="s">
						<tr class="writebg">
							<td align="center">${s.count }</td>
							<td align="center"><a href="carInfoSearch4.html">${obj.id }</a></td>
							<td align="center"><img src="images/lx.png" width="16" height="16" align="right"  style="padding:3px 3px 0 0" />暂无数据</td>
							<td align="center">${obj.startingPrice }</td>
							<td align="center">${obj.typeId }</td>
							<td align="center"><fmt:formatDate value="${obj.registerDate }" pattern="yyyy-MM-dd" /> </td>
							<td align="center"><font class="bBlack">${obj.status }</font></td>
							<td align="center"><a href="deleteVehicle?id=${obj.id }">删除</a> <a href="goUpdateVehicle?id=${obj.id }">修改</a></td>
						</tr>
						</c:forEach>
						
						
					</tbody>
				</table>
			<a href="javaScript:void(0)" class="fy" value="1">首页</a>	<a href="javaScript:void(0)" class="fy" value="${whereMap.pageNumber-1 }">上一页 </a>    <a href="javaScript:void(0)" class="fy" value="${whereMap.pageNumber+1 }">下一页</a>  <a href="javaScript:void(0)" class="fy" value="${whereMap.pageSize}">尾页</a>   共${whereMap.total}条记录 共${whereMap.pageSize}页 当前第${whereMap.pageNumber}页 跳转至<input type="text" id="goPageNumber"> <input type="button" value="跳转" id="goPage"> 
        </div>
			</form>
		</div>
	</div>
</div>
</div>

<form   action="searchVehicle" method="post"  id="nextForm">
							 <input value="${whereMap.vehicleId }" name="vehicleId" type="hidden" id="vehicleId"   > 
							 <input value="${whereMap.memberId }" name="memberId" type="hidden"   id="userId"  > 
							  <input value="${whereMap.vehicleStatus }" name="vehicleStatus" type="hidden"   id="userId"  > 
                            
						 <input value="${whereMap.vehicleVin }" name="vehicleVin" type="hidden"    > 
						 <input value='<fmt:formatDate value="${whereMap.startDate }"  pattern="yyyy-MM-dd"/>'  type="hidden" name="startDate"    >  
						  <input value='<fmt:formatDate value="${whereMap.endDate }"  pattern="yyyy-MM-dd"/>'  type="hidden" name="endDate"    >  
						 <input value="${whereMap.pageNumber }"   type="hidden" name="pageNumber"    id="pageNumber">  
</body>
</html>
    
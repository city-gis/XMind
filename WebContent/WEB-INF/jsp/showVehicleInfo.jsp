<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<title>竞拍管理系统</title>
<link href="css/admin.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/calendar/WdatePicker.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery.js"></script>
<script type="text/javascript">
  $(function(){
	  
	  
		$.post( "vehicle/getVehicle.do",
				 {"vehicleId" : ${vid} },
				function(response) {
			       if(response.result ==0){
			    	  $("#vin").html(response.data.vin);
			    	  $("#brandDiv").html(response.data.bname);
			       }
					 
			     
		       }, "json")
	  
  })

</script>



</head>
<body>
	<div id="container">
		<div class="top center">
			<ul>
				<li class="admin_logo"><img src="images/adminlogo.jpg"
					width="387" height="60" /></li>
				<li class="admin_prompt">
					<div id="logo"></div> <br clear="all" />
					<div class="txt_pad">
						用户名：admin &nbsp;&nbsp;|&nbsp;&nbsp;<a href="login.html"
							class="white">退出登录</a> &nbsp;&nbsp;
					</div>
				</li>
			</ul>
		</div>
		<div class="main">
			<div id="navigation">
				<div id="left-nav">
					<div class="top-level">
						<a href="javascript:location='carInfoMenu.html'" class="active">车辆管理</a>
						<a href="javascript:location='auctionMenu.html'">竞拍管理</a> <a
							href="javascript:location='carBidMenu.html'">举牌竞拍现场</a> <a
							href="javascript:location='accountMenu.html'">结算管理</a> <a
							href="javascript:location='memberMenu.html'">会员管理</a> <a
							href="javascript:location='bacthMenu.html'">接口管理</a> <a
							href="javascript:location='systemMenu.html'">系统管理</a>
					</div>
				</div>

			</div>
			<div id="content">
				<!--start:内容标题-->
				<div class="top_title">
					<div class="left">
						<h3>
							<img src="images/local_ico.jpg" width="20" height="20"
								align="absmiddle" />&nbsp;<a href="carInfoMenu.html">车辆管理</a>
							>>&nbsp;车辆信息录入
						</h3>
					</div>
					<div class="right">
						当前时间：
						<script language=JavaScript>
							var enable = 0;
							today = new Date();
							var day;
							var date;
							var clocktext;
							var time_start = new Date();
							var clock_start = time_start.getTime();
							if (today.getDay() == 0)
								day = "星期日&nbsp;"
							if (today.getDay() == 1)
								day = "星期一&nbsp;"
							if (today.getDay() == 2)
								day = "星期二&nbsp;"
							if (today.getDay() == 3)
								day = "星期三&nbsp;"
							if (today.getDay() == 4)
								day = "星期四&nbsp;"
							if (today.getDay() == 5)
								day = "星期五&nbsp;"
							if (today.getDay() == 6)
								day = "星期六&nbsp;"
							date = (today.getFullYear()) + "年"
									+ (today.getMonth() + 1) + "月"
									+ today.getDate() + "日&nbsp;";
							sec = today.getSeconds();
							hr = today.getHours();
							min = today.getMinutes();
							if (hr <= 9)
								hr = "0" + hr;
							if (min <= 9)
								min = "0" + min;
							if (sec <= 9)
								sec = "0" + sec;
							clocktext = hr + ":" + min + ":" + sec;
							document.write(date + day + clocktext);
						</script>
						&nbsp;&nbsp;
					</div>
				</div>
				<!--end:内容标题-->


				<div class="rightContent center">

					<div class="table_con">
						<table width="100%" cellspacing="1" cellpadding="0" border="0"
							class="contentTab">
							<tbody>
								<tr class="writebg">
									<td colspan="2" class="bluebg_title">会员基本信息</td>
								</tr>
								
								<tr>
									<td align="left" class="boldtitle">会员姓名：</td>
									<td align="left" class="blue" id="owner"></td>
								</tr>
								<tr class="writebg">
									<td align="left" class="boldtitle">联系电话：</td>
									<td align="left" class="blue" id="phone"></td>
								</tr>
								
							</tbody>
						</table>
						<table width="100%" cellspacing="1" cellpadding="0" border="0"
							class="contentTab">
							<tbody>
								<tr class="writebg">
									<td colspan="2" class="bluebg_title">车辆基本信息</td>
								</tr>

								<tr class="writebg">
									<td align="left" class="boldtitle" width="20%">VIN码：<span
										class="red">*</span></td>
									<td><div id="vin"></div> &nbsp;<span><font
											id="vinMessage"></font> </span>
									</td>
								</tr>
								<tr>
									<td align="left" class="boldtitle">车辆款式：</td>
									<td><div id="brandDiv"></div>&nbsp;&nbsp;${vehicle.series.name}</td>
								</tr>
								<tr class="writebg">
									<td align="left" class="boldtitle">厂牌型号：</td>
									<td><div id="typeid"></div></td>
								</tr>
								<tr>
									<td align="left" class="boldtitle">号牌号码：</td>
									<td>${vehicle.licensePlateNumber }</td>
								</tr>



								<tr>
									<td align="left" class="boldtitle">登记证号：</td>
									<td>${vehicle.registerCode }</td>
								</tr>
								<tr>
									<td align="left" class="boldtitle">里程数：</td>
									<td>${vehicle.mileage }</td>
								</tr>


								<tr class="writebg">
									<td align="left" class="boldtitle">初次登记日期：</td>
									<td>${vehicle.registerDate }</td>
								</tr>

								<tr>
									<td align="left" class="boldtitle">车辆类型：</td>
									<td>${vehicle.type }</td>
								</tr>
								<tr>
									<td align="left" class="boldtitle">起拍价格：<span class="red">*</span></td>
									<td>${vehicle.startingPrice }元</td>
								</tr>
								<tr class="writebg">
									<td align="left" class="boldtitle">期望成交价格：<span
										class="red">*</span></td>
									<td>${vehicle.hopePrice }元</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>

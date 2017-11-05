<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<title>竞拍管理系统</title>
<link href="css/admin.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/calendar/WdatePicker.js"></script>

<script type="text/javascript" src="js/jquery.js"></script>

<script type="text/javascript">
	$(function() {
		//----------------检查vin----------------------
		$("#vin").bind("blur", function() {
			
			$.post("checkVin", {
				"vin" : $(this).val()
			}, function(data) {
				if (data) {
					$("#vinMessage").html("这个vin已经存在了");
					$("#vinMessage").attr("color", "red")
				} else {
					$("#vinMessage").html("这个vin可以使用");
					$("#vinMessage").attr("color", "green")
				}

			}, "json");
		});
		//--------------------------------------------
		//-----------------初始化车辆品牌下拉列表-----------------
		$.post("vehicle/initBrand.do", null, function(data) {
			$.each(data, function(i, n) {
				$("#vehicleBrand").append(
						'<option value="'+n.id+'">' + n.name + '</option>');
			})
		}, "json");
		//---------------------------------------------------

		//-----------改变车辆品牌初始化车系下拉列表------------------
		$("#vehicleBrand").bind(
				"change",
				function() {
					//触发事件后 初始化车系下拉列表默认内容 （清空多余选项）
					$("#vehicleStyle").html(
							'<option value="0">--请选择车系--</option>');
					//触发事件后 初始化车型下拉列表默认内容 （清空多余选项）
					$("#vehicleType").html('<option value="0">--请选择型号--</option>');
					//获取品牌的value值 (品牌主键)
					var v_brandId = $(this).val();
					//如果选择了请选择 那么中断程序
					if (v_brandId == 0) {

						return;
					}

					//发送异步请求
					$.post("vehicle/initSeriesByBrandId.do", {
						"brandId" : v_brandId
					}, function(data) {
						$.each(data, function(i, n) {
							$("#vehicleStyle").append(
									'<option value="'+n.id+'">' + n.name
											+ '</option>');
						})
					}, "json")

				})
		//---------------------------------------------------

		//-----------改变车辆车系初始化型号下拉列表------------------
		$("#vehicleStyle").bind(
				"change",
				function() {
					//触发事件后 初始化车型下拉列表默认内容 （清空多余选项）
					$("#vehicleType").html(
							'<option value="0">--请选择型号--</option>');
					//获取车系的value值 (系列的主键)
					var v_seriesId = $(this).val();
					//如果选择了请选择 那么中断程序
					if (v_seriesId == 0) {

						return;
					}

					//发送异步请求
					$.post("vehicle/initTypeBySeriesId.do", {
						"seriesId" : v_seriesId
					}, function(data) {
						$.each(data, function(i, n) {
							$("#vehicleType").append(
									'<option value="'+n.id+'">' + n.name
											+ '</option>');
						})
					}, "json")

				})
		//---------------------------------------------------
		
		//----------------------表单数据验证-----------------------------
		$("#saveButton").bind(
				"click",
				function() {
					//获取vin输入框的值并去掉空格
					var v_vin = $.trim($("#vin").val());
					//如果vin为"" 给用户提示  并 阻止表单提交
					if (v_vin == "") {
						alert("vin不能为空")
						return false;
					}
					//获取起拍价格输入框的值并去掉空格
					var v_startingPrice = $.trim($("#startingPrice").val())

					if (v_startingPrice == "" || isNaN(v_startingPrice)
							|| v_startingPrice <= 0) {
						alert("起拍价格不能为空 并且必须是大于0的数字")
						return false;
					}
					//获取期望价格输入框的值并去掉空格
					var v_hopePrice = $.trim($("#hopePrice").val())

					if (v_hopePrice == "" || isNaN(v_hopePrice)
							|| v_hopePrice <= 0) {
						alert("期望价格不能为空 并且必须是大于0的数字")
						return false;
					}
				});
		//---------------------------------------------------
		//--------查询会员信息的按钮事件--------
		$("#searchBtn").bind("click",function() {
			alert("phone:" + $("#phoneId").val());
			$.post("member/queryMember.do", {
				"phone" : $("#phoneId").val()
			}, function(data) {
				$("#owner").text(data.name);
				$("#phone").text(data.phone);
				$("#memberId").val(data.id)
			}, "json")
			
		})
		//---------------------------------------------------
		
		
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
				<div class="caradmin_title">
					<div class="caradmin_left1">
						<h1>车辆信息录入</h1>
					</div>
					<div class="zhushi">
						<span class="redbold">*</span>为用户必填项
					</div>
					<div class="zhushi">
						<p class="redbold">
							<img src="images/close.gif" width="27" height="26"
								align="absmiddle" />缺少SVN码不能进行保存
						</p>
						<p class="redbold">
							<img src="images/close.gif" width="27" height="26"
								align="absmiddle" />请填写起拍价格进行下一步
						</p>
					</div>
				</div>

				<div class="rightContent center">
					<form use="inside" action="vehicle/insertVechicle.do" method="post" >
						<div class="right status">
							<table cellpadding="0" cellspacing="0" width="80%" align="right"
								style="line-height: 20px;">
								<tr>
									<td align="right">车辆ID:</td>
									<td align="left" class="space">DSFK16589</td>
								</tr>
								<tr>
									<td align="right">状态:</td>
									<td align="left" class="space">录入中</td>
								</tr>
							</table>
						</div>
						<div class="table_con">
							<table width="100%" cellspacing="1" cellpadding="0" border="0"
								class="contentTab">
								<tbody>
									<tr class="writebg">
										<td colspan="2" class="bluebg_title">会员基本信息</td>
									</tr>
									<tr class="writebg">
										<td width="20%" align="left" class="boldtitle">会员电话:<span
											class="red">*</span></td>
										<td align="left" height="30">
											<div class="jianjv">
												<input name="url" type="text" value="P120400001" id="phoneId"
													maxlength="11" class="put_type">
											</div>
											<div class="jianjv">
												&nbsp;<input type="button" class="search_btn" id="searchBtn" value="检 索" />
											</div>
										</td>
									</tr>
									<tr>
										<td align="left" class="boldtitle">会员姓名：</td>
										<td align="left" class="blue" id="owner">孙路路</td>
									</tr>
									<tr class="writebg">
										<td align="left" class="boldtitle">联系电话：</td>
										<td align="left" class="blue" id="phone">13504111234</td>
									</tr>
									<tr>
										<td align="left" class="boldtitle">会员类型：</td>
										<td align="left" class="blue " id="salestype">个人</td>
									</tr>
									<tr class="writebg">
										<td align="left" class="boldtitle">邮箱：</td>
										<td align="left" class="blue" id="mail">tianqu@chejiwang.com</td>
									</tr>
									<tr>
										<td align="left" class="boldtitle">其他联系方式：</td>
										<td align="left" class="blue" id="otherPhone">041182828282</td>
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
										<td><input type="text" id="vin" value="" maxlength="50"
											class="put_type_small" name="vin" /> <span><font
												id="vinMessage"> </font> </span></td>
									</tr>
									<tr>
										<td align="left" class="boldtitle">车辆款式：</td>
										<td><select id="vehicleBrand" class="put_select">
												<option value="0">--请选择品牌--</option>
										</select> <select id="vehicleStyle" class="put_select">
												<option value="0">--请选择车系--</option>
										</select></td>
									</tr>
									<tr class="writebg">
										<td align="left" class="boldtitle">车辆型号：</td>
										<td><select id="vehicleType" name="typeId">
												<option value="0">--请选择型号--</option>
										</select></td>
									</tr>
									<tr>
										<td align="left" class="boldtitle">号牌号码：</td>
										<td><input name="licensePlateNumber"
											class=" put_type_small" type="text" id="licensePlateNumber"
											maxlength="11" /></td>
									</tr>

									<tr>
										<td align="left" class="boldtitle">登记证号：</td>
										<td><input name="registerCode" class=" put_type_small"
											type="text" id="registerCode" maxlength="11" /></td>
									</tr>
									<tr class="writebg">
										<td align="left" class="boldtitle">行驶里程：</td>
										<td><input name="mileage" class="numInput put_type_small"
											type="text" id="mileage" value="" maxlength="11" />&nbsp;公里</td>
									</tr>



									<tr class="writebg">
										<td align="left" class="boldtitle">初次登记日期：</td>
										<td><input name="registerDate" type="text"
											id="dll firstRegDate" onclick="WdatePicker()"
											class="put_type_small" readonly="readonly" /></td>
									</tr>


									<tr>
										<td align="left" class="boldtitle">车辆类型：</td>
										<td><select class="put_select" id="carType" name="type">
												<option value="-1">--请选择--</option>
												<option value="0">轿车</option>
												<option selected="selected" value="1">微型轿车</option>
												<option value="2">小型轿车</option>
												<option value="3">小型客车（轿车）</option>
												<option value="4">小型越野车</option>
												<option value="5">出租车</option>
												<option value="6">租赁</option>
												<option value="7">旅游客运（公交客运）</option>
												<option value="8">小型普通客车</option>
												<option value="9">微型普通客车</option>
												<option value="10">中型普通客车</option>
												<option value="11">大型普通客车</option>
												<option value="12">农用车</option>
												<option value="13">轻型普通货车</option>
												<option value="14">小型货车（栏板）</option>
												<option value="15">轻型厢式货车</option>
												<option value="16">中型普通货车</option>
												<option value="17">重型自卸货车</option>
												<option value="18">大吊车</option>
												<option value="19">大型卧铺客车</option>
												<option value="20">特种车</option>
										</select></td>
									</tr>

									<tr>
										<td align="left" class="boldtitle">起拍价格：<span class="red">*</span></td>
										<td><input type="text" class="numInput put_type_small"
											id="startingPrice" value="" maxlength="11"
											name="startingPrice" /> 元</td>
									</tr>
									<tr class="writebg">
										<td align="left" class="boldtitle">期望成交价格：<span
											class="red">*</span></td>
										<td><input type="text" class="numInput put_type_small"
											id="hopePrice" value="" maxlength="11" name="hopePrice" /> 元</td>
									</tr>
									
									<input type="hidden" name="memberId" id="memberId" value="0"/> 
								</tbody>
							</table>
							<div class="bid_price">
								<table width="100%" cellspacing="0" cellpadding="0" border="0">
									<tr>
										<td width="20%" height="40"></td>
										<td height="40" align="left"><input type="submit"
											value=" 保存 " name="submit" id="saveButton"
											class="btn btn_small"> &nbsp;&nbsp;&nbsp;&nbsp; <input
											type="reset" value=" 重置 " name="submit" class="btn btn_small"> ${vid}</td>
									</tr>
								</table>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>

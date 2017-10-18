<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>竞拍管理系统</title>
<link href="${pageContext.request.contextPath }/css/admin.css" rel="stylesheet" type="text/css" />
<script type="text/javascript"	src="${pageContext.request.contextPath }/js/auction.js"></script>
<script src="${pageContext.request.contextPath }/js/artDialog.source.js?skin=opera"></script>
<script src="${pageContext.request.contextPath }/js/jquery.js"></script>
<script src="${pageContext.request.contextPath }/js/ajaxfileupload.js"></script>

<script type="text/javascript">

   function uploadImg(fileId,imgId,type){
	   
	   $.ajaxFileUpload({
		   url:"upload.do?vehicleId="+$("#vehicleId").val()+"&type="+type,
		   secureuri:false,
		   fileElementId:fileId,
		   dataType:"json",
		   success:function(response){
			   alert("rsponse:" + response);
			  
			   
			   if( response.result == 0){
				   //成功
				   $("#"+imgId).attr("src",response.data);
			   } else {
				   var code = response.code;
				   if( code == 2) {
					   alert("没有上传文件");
				   }else if( code==3) {
					   alert("扩展名不支持");
				   }else if(code==1) {
					   alert("没有车辆id");
				   }
			   }
				   
			   
		   },
		   error:function(response) {
			   alert("response:"+response);
			   alert("上传文件失败")
		   }
	   });
   }

   function showVechilce(vid){
	   
	   window.location.href="${pageContext.request.contextPath }/nextjsp.do?target=showVehicleInfo&vid="+vid;
	   
   }

</script>

</head>
<body >
<div id="container">
<div class="top center">
	<ul>
		<li class="admin_logo"><img src="${pageContext.request.contextPath }/images/adminlogo.jpg" width="387" height="60"/></li>
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
		<h3><img src="${pageContext.request.contextPath }/images/local_ico.jpg" width="20" height="20" align="absmiddle" />&nbsp;<a href="carInfoMenu.html">车辆管理</a> >>&nbsp;车辆照片</h3>
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
            <div class="caradmin_left"><h1>上传车辆照片</h1></div>
        </div>
		<div class="rightContent center">
			<form use="inside" action="" method="post" target="form_post">
            <div class="right status">        
             <table cellpadding="0" cellspacing="0" width="80%" align="right" style="line-height:20px;">
            <tr>
              <td align="right">车辆ID:</td>
              <td align="left" class="space"><input type="text" id="vehicleId" value="${vehicleId }" size="5"/></td>
            </tr>
             <tr>
              <td align="right">状态:</td>
              <td align="left" class="space">待照相</td>
            </tr>
          </table></div>
				<table width="100%" cellspacing="1" cellpadding="0" border="0" class="contentTab">
				<tr class="writebg">
							<th colspan="2" align="center" class="bluebg">照片信息</th>
						</tr>
						<tr class="writebg">
							<td align="center"  class="bold">正面照片</td>
							<td align="center" class="bold">背面照片</td>
						</tr>
						<tr class="writebg">
							<td height="125" align="center" id="tdPic1"><a href="javascript:;" onclick="artContent('<img src=${pageContext.request.contextPath }/images/car1.jpg />','','照片1')"><img id="img1"  src="${pageContext.request.contextPath }/images/car.jpg" width="150" height="113" /></a></td>
							<td align="center" id="tdPic2"><a href="javascript:;" onclick="artContent('<img src=${pageContext.request.contextPath }/images/car1.jpg />','','照片2')"><img  id="img2" src="${pageContext.request.contextPath }/images/car.jpg" width="150" height="113" /></a></td>
						</tr>
						<tr>
							<td height="35" align="center">
                           <input name="photo" id="PhotoUrl1" class="put_type_file" type="file" maxlength="50"/>
                           <input type="button" class="put_upload" id="btn" name="btn" onClick="uploadImg('PhotoUrl1','img1','1')" value="上传" /> </td>
							<td align="center">
                            <input name="photo" id="PhotoUrl2" class="put_type_file" type="file"  maxlength="50"/>
                            <input type="button" id="btn" class="put_upload" name="btn" onClick="uploadImg('PhotoUrl2','img2','2')" value="上传" />
                            </td>
						</tr>
                        
  						<tr class="writebg">
							<td align="center" class="bold">左侧照片</td>
							<td align="center" class="bold">右侧照片</td>
						</tr>
						<tr class="writebg">
							<td height="125" align="center" id="tdPic3"><a href="javascript:;" onclick="artContent('<img src=${pageContext.request.contextPath }/images/car1.jpg />','','照片3')"><img id="img3" src="${pageContext.request.contextPath }/images/car.jpg" width="150" height="113" /></a></td>
							<td align="center" id="tdPic4"><a href="javascript:;" onclick="artContent('<img src=${pageContext.request.contextPath }/images/car1.jpg />','','照片4')"><img id="img4" src="${pageContext.request.contextPath }/images/car.jpg" width="150" height="113" /></a></td>
						</tr>
						<tr>
							<td align="center" height="35">
                            <input name="photo" id="PhotoUrl3" class="put_type_file" type="file"  maxlength="50"/>
                             <input type="button" id="btn" name="btn" class="put_upload"  onClick="uploadImg('PhotoUrl3','img3','3')" value="上传" />
                            </td>
							<td align="center">
                            <input name="photo" id="PhotoUrl4" class="put_type_file" type="file" onClick="uploadImg('PhotoUrl4','img4','4')" maxlength="50"/>
                             <input type="button" id="btn" name="btn" class="put_upload" value="上传" />
                            </td>
						</tr>

				</table>
                  <div class="bid_price">
               <table width="100%" cellspacing="0" cellpadding="0" border="0">
                   <tr>
                     <td height="40" align="middle" colspan="2">
                     <input type="button" value="显示车辆信息 " onclick="showVechilce('${vehicleId}')" class="btn btn_big">&nbsp;&nbsp;&nbsp;&nbsp;
               
               
                 </td>
             </tr>
          </table> 
          </div>
			</form>
		</div>
	</div>
</div>
</div>
</body>
</html>
    
  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改页面</title>
<meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
<meta name="description"
	content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">
<link rel="shortcut icon" href="favicon.ico">
<link href="../css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
<link href="../css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
<link href="../css/animate.min.css" rel="stylesheet">
<link href="../css/style.min.css?v=4.0.0" rel="stylesheet">
<link href="../css/plugins/toastr/toastr.min.css" rel="stylesheet">
<base target="_blank">
</head>
<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">
		<div class="row">
			<div class="col-sm-12">
				<form class="form-horizontal m-t" id="signupForm"
					action="../admin_menu/add.do">
					<div class="form-group">
						<label class="col-sm-2 control-label">名称：</label>
						<div class="col-sm-4">
						<input name ="menu_id" type ="hidden" value="${ admin_menu.menu_id}"/>
							<input id="name" name="name" class="form-control"  value="${admin_menu.name }"
								aria-required="true" aria-invalid="true" type="text">
						</div>
						<label class="col-sm-2 control-label">父节点：</label>
						<div class="col-sm-4">
							<input id="lastname" name="parentid" class="form-control"
							 value="${ admin_menu.parentid}"	type="text" aria-required="true" aria-invalid="true"
								class="valid">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">模块：</label>
						<div class="col-sm-4">
							<input id="password" name="m" class="form-control"
							 value="${ admin_menu.m}"		type="text">
						</div>
						
						<label class="col-sm-2 control-label">方法：</label>
						<div class="col-sm-4">
							<input id="confirm_password" name="a" aria-invalid="true"
									 value="${ admin_menu.a}"		class="form-control" type="text">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">图标：</label>
						<div class="col-sm-4">
							<input id="img"  value="${admin_menu.img}"	 name="img" class="form-control">
						</div>
						
						<input type ="hidden" id = "hdcheckDisplay" value="${admin_menu.display}">
						<label class="col-sm-2 control-label">是否显示：</label>
						<div class="col-sm-4 col-sm-offset-3"
							style="margin-left: 0px !important;">
							<input type="hidden" name="display" id="display" value="${admin_menu.display}" />
							<div class="switch">
								<div class="onoffswitch">
									<input type="checkbox" ${admin_menu.display==1?'checked':'' }
										onchange="changeDisplay(this);" class="onoffswitch-checkbox"
										id="example1"> <label class="onoffswitch-label"
										for="example1"> <span class="onoffswitch-inner"></span>
										<span class="onoffswitch-switch"></span>
									</label>
								</div>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-4 col-sm-offset-3">
							<button class="btn btn-primary" id="btnSave" type="submit">保存</button>
						</div>
						<div class="col-sm-4">
							<button class="btn btn-primary" id="btnSaveAndClose"
								type="submit">保存并关闭</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script src="../js/jquery.min.js?v=2.1.4"></script>
	<script src="../js/bootstrap.min.js?v=3.3.5"></script>
	<script src="../js/content.min.js?v=1.0.0"></script>
	<script src="../js/plugins/validate/jquery.validate.min.js"></script>
	<script src="../js/plugins/validate/messages_zh.min.js"></script>
	<script src="../js/demo/form-validate-demo.min.js"></script>
	<script src="../js/jquery.form.js"></script>
    <script src="../js/plugins/toastr/toastr.min.js"></script>
		<script src="../js/plugins/jqgrid/i18n/grid.locale-cn.js"></script>
		<script src="../js/plugins/jqgrid/jquery.jqGrid.min.js"></script>
	<script type="text/javascript"
		src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
	<script type="text/javascript">
	/*
	初始化消息提示
	*/
	toastr.options = {
			  "closeButton": true,
			  "debug": false,
			  "progressBar": false,
			  "positionClass": "toast-top-center",
			  "onclick": null,
			  "showDuration": "300",
			  "hideDuration": "1000",
			  "timeOut": "5000",
			  "extendedTimeOut": "1000",
			  "showEasing": "swing",
			  "hideEasing": "linear",
			  "showMethod": "fadeIn",
			  "hideMethod": "fadeOut"
			};
	/*
	初始化表单验证控件
	*/
	$.validator.setDefaults({
	    submitHandler: function(form) {
	    	postForm(form);
	    	return false;
	    }
	});
	/*
	表单提交方法
	*/
	function postForm(form){
		$(form).ajaxSubmit({
            type: 'post', // 提交方式 get/post
            url: '../admin_menu/edit.do', // 需要提交的 url,
            success: function(data) { // data 保存提交后返回的数据，一般为 json 数据
                // 此处可对 data 作相关处理
                if(data.mst==0){
                	toastr.success(data.msg);
                	$(form).resetForm(); // 提交后重置表单
                	if(btn&&btn=="close"){
                		parent.reloadGrid()
                		setTimeout(function(){
                			$('.parent_win_closed', window.parent.document).click();
                		},1000);
                		//alert(1);
                	}
                	//setTimeout(function(){$("#frameView", window.parent.document).attr("src","");},1000);
                }else{
                	toastr.error(data.msg);
                }
            }
            
        });
	}
		/*
		是否显示改变事件
		*/
		function changeDisplay(obj) {
			if ($(obj).is(':checked')) {
				$("#display").val(1);
			} else {
				$("#display").val(0);
			}
		}
		/*
		生成表单验证并给保存并关闭按钮注册事件
		*/
		$(function() {
			$("#btnSaveAndClose").on("click", function() {
				closeWind();
			});
			$("#signupForm").validate();
			/*var check=$("#hdcheckDisplay").val();
			if(check=="1" && $("#display").is(':checked')){
				$("#example1").click();
			} if(check=="0" && $("#display").is(':checked')==false){
				$("#example1").click();
			}*/
			//$("#example1")
		});
		var btn;
		function closeWind() {
			btn="close";
		}
	</script>
</body>
</html>
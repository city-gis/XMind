<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>角色管理</title>
<meta name="keywords" content="角色管理">
<meta name="description"
	content="角色管理">
<link rel="shortcut icon" href="favicon.ico">
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/animate.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/style.min.css?v=4.0.0" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/plugins/toastr/toastr.min.css" rel="stylesheet">
<base target="_blank">
</head>
<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">
		<div class="row">
			<div class="col-sm-12">
				<form class="form-horizontal m-t" id="signupForm"
					action="${pageContext.request.contextPath}/sys_roles/add.do">
					<div class="form-group">
						<label class="col-sm-2 control-label">名称：</label>
						<div class="col-sm-4">
							<input id="name" name="rolename" class="form-control"
								aria-required="true" aria-invalid="true" type="text">
						</div>
						<label class="col-sm-2 control-label">顺序：</label>
						<div class="col-sm-4">
							<input id="orderby" name="orderby" class="form-control"
								aria-required="true" aria-invalid="true" type="text">
						</div>
					</div>
					
					
					
					
					<div class="form-group">
					<label class="col-sm-2 control-label">描述：</label>
						<div class="col-sm-8">
							<textarea rows="3" cols="20" id="description" name="description" class="form-control"
								></textarea>
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
	<script src="${pageContext.request.contextPath}/js/jquery.min.js?v=2.1.4"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js?v=3.3.5"></script>
	<script src="${pageContext.request.contextPath}/js/content.min.js?v=1.0.0"></script>
	<script src="${pageContext.request.contextPath}/js/plugins/validate/jquery.validate.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/plugins/validate/messages_zh.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/demo/form-validate-demo.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.form.js"></script>
    <script src="${pageContext.request.contextPath}/js/plugins/toastr/toastr.min.js"></script>
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
            url: '${pageContext.request.contextPath}/sys_roles/add.do', // 需要提交的 url,
            success: function(data) { // data 保存提交后返回的数据，一般为 json 数据
                // 此处可对 data 作相关处理
                if(data.mst==0){
                	toastr.success(data.msg);
                	$(form).resetForm(); // 提交后重置表单
                	if(btn&&btn=="close"){
                		parent.reloadGrid();
                		setTimeout(function(){
                			$('.parent_win_closed', window.parent.document).click();
                		},1000);
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
		});
		var btn;
		function closeWind() {
			btn="close";
		}
	</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>方法管理列表页面</title>

<meta name="keywords" content="方法管理列表页面">
<meta name="description"
	content="方法管理列表页面">

<link rel="shortcut icon" href="favicon.ico">
<link href="../css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
<link href="../css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
<link href="../css/plugins/jqgrid/ui.jqgrid.css" rel="stylesheet">
<link href="../css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
<link href="../css/plugins/jsTree/style.min.css" rel="stylesheet">
<link href="../css/animate.min.css" rel="stylesheet">
<link href="../css/style.min.css?v=4.0.0" rel="stylesheet">
<link href="../css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
<!-- Sweet Alert -->
<link href="../css/plugins/sweetalert/sweetalert.css" rel="stylesheet">
<link href="../css/plugins/toastr/toastr.min.css" rel="stylesheet">
<base target="_blank">
<style>
.jstree-open>.jstree-anchor>.fa-folder:before {
	content: "\f07c"
}

.jstree-default .jstree-icon.none {
	width: 0
}

.modal-header {
	padding: 15px 15px !important;
	text-align: center;
}
.modal-dialog{
	    margin: 0px auto !important;
}
</style>
</head>

<body class="gray-bg">
	<div class="wrapper wrapper-content  animated fadeInRight">

		<div class="row">
			<div class="col-sm-12">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>方法列表</h5>
						<div class="ibox-tools">
							<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
							</a>
							<!-- <a class="close-link"> <i class="fa fa-times"></i></a> -->
						</div>
					</div>
					<div class="ibox-content" style="padding: 0px">
						<div class="jqGrid_wrapper">
							<table id="table_list_2"></table>
							<div id="pager_list_2"></div>
						</div>

					</div>
				</div>
			</div>
		</div>
		<!-- 弹出窗口内容开始 -->
		<div class="modal inmodal" id="addmodal" tabindex="-1" role="dialog"
			aria-hidden="true">
			<div class="modal-dialog modal-lg" style="width: 100%; height: 98%;">
				<div class="modal-content animated fadeIn" style="height: 91%">
					<div class="modal-header">
						<button type="button" class="parent_win_closed close" data-dismiss="modal">
							<span aria-hidden="true">×</span><span class="sr-only">Close</span>
						</button>
						<h1 class="modal-title">窗口标题</h1>
					</div>
					<!-- 弹出框frame -->
					<iframe id="frameView" src=""
						style="border: 0px; margion: 0px; padding: 0px; width: 100%; height: 100%;"></iframe>
						<input type="button" id="reloadGrid" style="display:none" onclick="reloadGrid();">
				</div>
			</div>
		</div>
		</div>
		<script src="../js/jquery.min.js?v=2.1.4"></script>
		<script src="../js/bootstrap.min.js?v=3.3.5"></script>
		<script src="../js/content.min.js?v=1.0.0"></script>
		<script src="../js/plugins/jsTree/jstree.min.js"></script>
		<script src="../js/plugins/peity/jquery.peity.min.js"></script>
		<script src="../js/plugins/jqgrid/i18n/grid.locale-cn.js"></script>
		<script src="../js/plugins/jqgrid/jquery.jqGrid.min.js"></script>
		<script src="../js/plugins/sweetalert/sweetalert.min.js"></script>
    	<script src="../js/plugins/toastr/toastr.min.js"></script>
		<script src="../js/page/sys_modelfuncs_view.js"></script>
    
</body>

</html>
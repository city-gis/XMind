<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>模块管理</title>
<meta name="keywords" content="模块管理">
<meta name="description"
	content="模块管理">
<link rel="shortcut icon" href="favicon.ico">
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/plugins/jqgrid/ui.jqgrid.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/animate.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
<!-- Sweet Alert -->
<link href="${pageContext.request.contextPath}/css/plugins/toastr/toastr.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/layui.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/style.min.css?v=4.0.0" rel="stylesheet">
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
</style>
</head>
<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">
		<div class="row">
			<div class="col-sm-12">
				<form class="form-horizontal m-t" id="signupForm"
					action="${pageContext.request.contextPath}/sys_models/add.do">
					<div class="form-group">
						<label class="col-sm-2 control-label">名称：</label>
						<div class="col-sm-4">
							<input id="name" name="modelname" class="form-control"
								aria-required="true" aria-invalid="true" type="text">
						</div>
						<label class="col-sm-2 control-label">上级模块：</label>
						<div class="col-sm-4">
							<input id="parentid" name="parentname" class="form-control"
							readonly type="text" aria-required="true" aria-invalid="true"
								class="valid">
								<input id="parentidhid" name="parentid" type="hidden" >
						</div>
					</div>
					<div class="form-group">
					<label class="col-sm-2 control-label">顺序：</label>
						<div class="col-sm-4">
							<input id="orderby" name="orderby" class="form-control"
								aria-required="true" aria-invalid="true" type="text">
						</div>
						<label class="col-sm-2 control-label">url：</label>
						<div class="col-sm-4">
							<input id="url" name="url" class="form-control"
								type="text" aria-required="true" aria-invalid="true"
								class="valid">
						</div>
					</div>
					
					<div class="form-group">
					<label class="col-sm-2 control-label">是否可见：</label>
						<div class="col-sm-4">
							<input id="isview" name="isview" class="form-control"
								aria-required="true" aria-invalid="true" type="text">
						</div>
						<label class="col-sm-2 control-label">是否启用：</label>
						<div class="col-sm-4">
							<input id="isused" name="isused" class="form-control"
								type="text" aria-required="true" aria-invalid="true"
								class="valid">
						</div>
					</div>
					<div class="form-group">
					<label class="col-sm-2 control-label">图标：</label>
						<div class="col-sm-4">
							<input id="icon" name="icon" class="form-control"
							readonly	aria-required="true" aria-invalid="true" type="text">
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
	
	<!-- 弹出选择父级div -->
	<div class="jqGrid_wrapper" id="menu_showwin"  style="display:none">
		<table id="table_list_alert"></table>
		<!-- <div id="pager_list_2"></div> -->
	</div>
	
	
	<div class="bs-glyphicons" id="divShow" style="display:none">
                            <ul class="bs-glyphicons-list">

                                <li>
                                    <span class="glyphicon glyphicon-asterisk" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-asterisk</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-plus</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-euro" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-euro</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-eur" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-eur</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-minus" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-minus</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-cloud" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-cloud</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-envelope</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-pencil</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-glass" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-glass</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-music" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-music</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-search</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-heart</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-star</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-star-empty</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-user</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-film" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-film</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-th-large" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-th-large</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-th" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-th</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-th-list" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-th-list</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-ok</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-remove</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-zoom-in</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-zoom-out" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-zoom-out</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-off</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-signal" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-signal</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-cog</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-trash</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-home" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-home</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-file" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-file</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-time</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-road" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-road</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-download-alt" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-download-alt</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-download" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-download</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-upload" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-upload</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-inbox" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-inbox</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-play-circle</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-repeat" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-repeat</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-refresh" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-refresh</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-list-alt</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-lock" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-lock</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-flag" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-flag</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-headphones" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-headphones</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-volume-off" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-volume-off</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-volume-down" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-volume-down</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-volume-up" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-volume-up</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-qrcode" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-qrcode</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-barcode" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-barcode</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-tag" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-tag</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-tags" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-tags</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-book" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-book</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-bookmark" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-bookmark</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-print" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-print</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-camera" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-camera</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-font" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-font</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-bold" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-bold</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-italic" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-italic</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-text-height" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-text-height</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-text-width" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-text-width</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-align-left" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-align-left</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-align-center" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-align-center</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-align-right" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-align-right</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-align-justify</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-list" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-list</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-indent-left" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-indent-left</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-indent-right" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-indent-right</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-facetime-video" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-facetime-video</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-picture" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-picture</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-map-marker</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-adjust" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-adjust</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-tint" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-tint</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-edit</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-share" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-share</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-check" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-check</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-move" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-move</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-step-backward" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-step-backward</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-fast-backward" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-fast-backward</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-backward" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-backward</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-play" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-play</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-pause" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-pause</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-stop" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-stop</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-forward" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-forward</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-fast-forward" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-fast-forward</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-step-forward" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-step-forward</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-eject" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-eject</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-chevron-left</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-chevron-right</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-plus-sign</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-minus-sign" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-minus-sign</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-remove-sign" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-remove-sign</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-ok-sign" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-ok-sign</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-question-sign" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-question-sign</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-info-sign</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-screenshot" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-screenshot</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-remove-circle" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-remove-circle</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-ok-circle</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-ban-circle" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-ban-circle</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-arrow-left</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-arrow-right</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-arrow-up" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-arrow-up</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-arrow-down" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-arrow-down</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-share-alt" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-share-alt</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-resize-full" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-resize-full</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-resize-small" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-resize-small</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-exclamation-sign</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-gift" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-gift</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-leaf" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-leaf</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-fire" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-fire</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-eye-open</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-eye-close</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-warning-sign" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-warning-sign</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-plane" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-plane</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-calendar</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-random" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-random</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-comment" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-comment</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-magnet" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-magnet</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-chevron-up" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-chevron-up</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-chevron-down</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-retweet" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-retweet</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-shopping-cart</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-folder-close</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-folder-open</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-resize-vertical" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-resize-vertical</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-resize-horizontal" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-resize-horizontal</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-hdd" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-hdd</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-bullhorn" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-bullhorn</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-bell" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-bell</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-certificate" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-certificate</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-thumbs-up</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-thumbs-down" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-thumbs-down</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-hand-right" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-hand-right</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-hand-left" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-hand-left</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-hand-up" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-hand-up</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-hand-down" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-hand-down</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-circle-arrow-right</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-circle-arrow-left" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-circle-arrow-left</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-circle-arrow-up" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-circle-arrow-up</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-circle-arrow-down" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-circle-arrow-down</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-globe" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-globe</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-wrench" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-wrench</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-tasks" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-tasks</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-filter" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-filter</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-briefcase" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-briefcase</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-fullscreen</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-dashboard" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-dashboard</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-paperclip" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-paperclip</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-heart-empty" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-heart-empty</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-link" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-link</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-phone" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-phone</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-pushpin" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-pushpin</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-usd" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-usd</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-gbp" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-gbp</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-sort" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-sort</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-sort-by-alphabet" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-sort-by-alphabet</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-sort-by-alphabet-alt" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-sort-by-alphabet-alt</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-sort-by-order" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-sort-by-order</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-sort-by-order-alt" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-sort-by-order-alt</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-sort-by-attributes" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-sort-by-attributes</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-sort-by-attributes-alt" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-sort-by-attributes-alt</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-unchecked" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-unchecked</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-expand" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-expand</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-collapse-down" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-collapse-down</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-collapse-up" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-collapse-up</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-log-in" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-log-in</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-flash" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-flash</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-log-out</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-new-window" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-new-window</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-record" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-record</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-save" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-save</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-open" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-open</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-saved" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-saved</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-import" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-import</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-export" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-export</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-send" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-send</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-floppy-disk</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-floppy-saved" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-floppy-saved</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-floppy-remove" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-floppy-remove</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-floppy-save" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-floppy-save</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-floppy-open" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-floppy-open</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-credit-card" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-credit-card</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-transfer" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-transfer</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-cutlery" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-cutlery</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-header" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-header</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-compressed" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-compressed</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-earphone</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-phone-alt" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-phone-alt</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-tower" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-tower</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-stats" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-stats</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-sd-video" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-sd-video</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-hd-video" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-hd-video</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-subtitles" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-subtitles</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-sound-stereo" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-sound-stereo</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-sound-dolby" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-sound-dolby</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-sound-5-1" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-sound-5-1</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-sound-6-1" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-sound-6-1</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-sound-7-1" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-sound-7-1</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-copyright-mark" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-copyright-mark</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-registration-mark" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-registration-mark</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-cloud-download" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-cloud-download</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-cloud-upload" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-cloud-upload</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-tree-conifer" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-tree-conifer</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-tree-deciduous" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-tree-deciduous</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-cd" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-cd</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-save-file" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-save-file</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-open-file" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-open-file</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-level-up" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-level-up</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-copy" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-copy</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-paste" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-paste</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-alert" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-alert</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-equalizer" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-equalizer</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-king" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-king</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-queen" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-queen</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-pawn" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-pawn</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-bishop" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-bishop</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-knight" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-knight</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-baby-formula" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-baby-formula</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-tent" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-tent</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-blackboard" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-blackboard</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-bed" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-bed</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-apple" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-apple</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-erase" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-erase</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-hourglass" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-hourglass</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-lamp" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-lamp</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-duplicate" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-duplicate</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-piggy-bank" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-piggy-bank</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-scissors" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-scissors</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-bitcoin" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-bitcoin</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-btc" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-btc</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-xbt" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-xbt</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-yen" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-yen</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-jpy" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-jpy</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-ruble" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-ruble</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-rub" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-rub</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-scale" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-scale</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-ice-lolly" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-ice-lolly</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-ice-lolly-tasted" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-ice-lolly-tasted</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-education" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-education</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-option-horizontal" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-option-horizontal</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-option-vertical" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-option-vertical</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-menu-hamburger" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-menu-hamburger</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-modal-window" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-modal-window</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-oil" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-oil</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-grain" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-grain</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-sunglasses" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-sunglasses</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-text-size" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-text-size</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-text-color" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-text-color</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-text-background" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-text-background</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-object-align-top" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-object-align-top</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-object-align-bottom" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-object-align-bottom</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-object-align-horizontal" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-object-align-horizontal</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-object-align-left" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-object-align-left</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-object-align-vertical" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-object-align-vertical</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-object-align-right" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-object-align-right</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-triangle-right" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-triangle-right</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-triangle-left" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-triangle-left</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-triangle-bottom</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-triangle-top" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-triangle-top</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-console" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-console</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-superscript" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-superscript</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-subscript" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-subscript</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-menu-left</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-menu-right</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-menu-down</span>
                                </li>

                                <li>
                                    <span class="glyphicon glyphicon-menu-up" aria-hidden="true"></span>
                                    <span class="glyphicon-class">glyphicon glyphicon-menu-up</span>
                                </li>

                            </ul>
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
		src="${pageContext.request.contextPath}/js/plugins/lay/layui.js" charset="UTF-8"></script>
	<script src="${pageContext.request.contextPath}/js/plugins/jqgrid/i18n/grid.locale-cn.js"></script>
	<script src="${pageContext.request.contextPath}/js/plugins/jqgrid/jquery.jqGrid.min.js"></script>
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
            url: '${pageContext.request.contextPath}/sys_models/add.do', // 需要提交的 url,
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
			$("#icon").on("click",function(){
				 layui.use('layer', function () { //独立版的layer无需执行这一句
			            var layer = layui.layer; //独立版的layer无需执行这一句
			            layer.open({
			                type: 1
			                , anim: 5
			                , isOutAnim: false
			                , offset: 'auto' //具体配置参考：http://www.layui.com/doc/modules/layer.html#offset
			                , id: "divShowLayer"  //防止重复弹出
			                , content:$("#divShow")
			                , area: [500 + 'px', 300 + 'px']
			                , btnAlign: 'c' //按钮居中
			                , shade: 0 //不显示遮罩
			                // , yes: function () {
			                //     layer.closeAll();
			                // },
			                , success: function (layero, index) {
			                   $(".bs-glyphicons-list>li").on("click",function(){
			                	   var span=$(this).find(".glyphicon-class");
			                	   $("#icon").val($(span).html());
			                	   layer.closeAll();
			                   })
			                }
			            });
			        });
			});
			$("#parentid").on("click",function(){
				 layui.use('layer', function () { //独立版的layer无需执行这一句
			            var layer = layui.layer; //独立版的layer无需执行这一句
			            layer.open({
			                type: 1
			                , anim: 5
			                , isOutAnim: false
			                , offset: 'auto' //具体配置参考：http://www.layui.com/doc/modules/layer.html#offset
			                , id: "menu_showwinlayui"  //防止重复弹出
			                , content:$("#menu_showwin")
			                , area: [500 + 'px', 300 + 'px']
			                , btnAlign: 'c' //按钮居中
			                ,btn: ['确定', '取消']
			                , shade: 0 //不显示遮罩
			                 , yes: function () {
			                	 var id=$('#table_list_alert').jqGrid('getGridParam','selrow');
			                	 if(id && id.length==1 ){
			                		 var rowDatas = $('#table_list_alert').jqGrid('getRowData',id);
				                	 $("#parentid").val(rowDatas.modelname);
				                	 $("#parentidhid").val(rowDatas.modelid);
				                     layer.closeAll();
			                	 }else{
			                		 toastr.error("你没有选取或者选取为多行数据");
			                		 return ;
			                	 }
			                 },
			                 btn2:function(){
			                	 layer.closeAll();
			                 }
			                , success: function (layero, index) {
			                   $(".bs-glyphicons-list>li").on("click",function(){
			                	   var span=$(this).find(".glyphicon-class");
			                	   $("#icon").val($(span).html());
			                	   layer.closeAll();
			                   })
			                }
			            });
			        });
			})
			$("#table_list_alert").jqGrid({
				url : "${pageContext.request.contextPath}/sys_models/serch.do",
				datatype : "json",
				height : 230,
				autowidth : true,
				shrinkToFit : true,
				rowNum : 10,
				rowList : [ 10, 20, 30 ],
				colNames : [ "id", "parentid", "模块名称", "图标", "描述" ],
				colModel : [ {
					name : "modelid",
					index : "modelid",
					editable : true,
					width : 30,
					search : false,
					hidden : true
				}, {
					name : "parentid",
					index : "parentid",
					editable : true,
					width : 30,
					search : true
				}, {
					name : "modelname",
					index : "modelname",
					editable : true,
					width : 30,
					search : true
				}, {
					name : "icon",
					index : "icon",
					editable : true,
					width : 30,
					search : true
				}, {
					name : "description",
					index : "description",
					editable : true,
					width : 30,
					search : true
				} ],
				//pager : "#pager_list_2",
				viewrecords : true,
				//caption : "jqGrid 示例2",
				add : false,
				edit : false,
				addtext : "Add",
				edittext : "Edit",
				hidegrid : true,
				multiselect : true,  
				cellEdit: false
			});
		});
		var btn;
		function closeWind() {
			btn="close";
		}
	</script>
</body>
</html>
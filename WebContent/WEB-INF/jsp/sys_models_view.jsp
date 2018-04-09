<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<style>
.jstree-open>.jstree-anchor>.fa-folder:before {
	content: "\f07c"
}

.jstree-default .jstree-icon.none {
	width: 0
}
</style>
<title>模块管理列表页面</title>

<meta name="keywords" content="模块管理列表页面">
<meta name="description" content="模块管理列表页面">

<link rel="shortcut icon" href="favicon.ico">
<link href="../css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
<link href="../css/plugins/jqgrid/ui.jqgrid.css" rel="stylesheet">
<link href="../css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
<link href="../css/plugins/jsTree/style.min.css" rel="stylesheet">
<link href="../css/animate.min.css" rel="stylesheet">
<link href="../css/style.min.css?v=4.0.0" rel="stylesheet">
<link href="../css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
<link href="../css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
<link href="../css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
<!-- Sweet Alert -->
<link href="../css/plugins/sweetalert/sweetalert.css" rel="stylesheet">
<link href="../css/plugins/toastr/toastr.min.css" rel="stylesheet">
<link href="../css/layui.css" rel="stylesheet">
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
	<div class="wrapper wrapper-content  animated fadeInRight">

		<div class="row">
			<div class="col-sm-3">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>列表树</h5>
						<div class="ibox-tools">
							<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
							</a>
						</div>
					</div>
					<div class="ibox-content">
						<div id="using_json"></div>

					</div>
				</div>
			</div>
			<div class="col-sm-9">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>模块列表</h5>
						<a style="padding: 5px 15px;" onclick="fnAdd();"
							href="javascript:void(0);"><i class="fa fa-plus"></i> 新增</a> <a
							style="padding: 5px 15px;" onclick="fnEdit();"
							href="javascript:void(0);"><i class="fa fa-edit"></i> 修改</a> <a
							style="padding: 5px 15px;" onclick="fnDel();"
							href="javascript:void(0);"><i class="fa fa-trash"></i> 删除</a> <a
							style="padding: 5px 15px;" onclick="fnSetBtn();"
							href="javascript:void(0);"><i class="fa fa-cogs"></i> 设置按钮</a>
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
			<div class="modal-dialog modal-lg" style="width: 100%; height: 85%;">
				<div class="modal-content animated flipInY" style="height: 80%">
					<div class="modal-header">
						<button type="button" class="parent_win_closed close"
							data-dismiss="modal">
							<span aria-hidden="true">×</span><span class="sr-only">Close</span>
						</button>
						<h1 class="modal-title">窗口标题</h1>
					</div>
					<!-- 弹出框frame -->
					<iframe id="frameView" src=""
						style="border: 0px; margion: 0px; padding: 0px; width: 100%; height: 100%;"></iframe>
					<input type="button" id="reloadGrid" style="display: none"
						onclick="reloadGrid();">
				</div>
			</div>
		</div>
	</div>
	
	<div class="jqGrid_wrapper" id="menu_showwin" style="display:none;">
		<table id="table_list_alert"></table>
		<!-- <div id="pager_list_2"></div> -->
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
	<script type="text/javascript"
		src="../js/plugins/lay/layui.js" charset="UTF-8"></script>
		
	<script>
			$(document).ready(
					function() {
						/*
						初始化消息提示
						 */
						toastr.options = {
							"closeButton" : true,
							"debug" : false,
							"progressBar" : false,
							"positionClass" : "toast-top-center",
							"onclick" : null,
							"showDuration" : "300",
							"hideDuration" : "1000",
							"timeOut" : "5000",
							"extendedTimeOut" : "1000",
							"showEasing" : "swing",
							"hideEasing" : "linear",
							"showMethod" : "fadeIn",
							"hideMethod" : "fadeOut"
						};

						$.jgrid.defaults.styleUI = "Bootstrap";

						$("#table_list_2").jqGrid(
								{
									url : "../sys_models/serch.do",
									datatype : "json",
									height : 350,
									autowidth : true,
									shrinkToFit : true,
									rowNum : 10,
									rowList : [ 10, 20, 30 ],
									colNames : [ "id", "parentid", "模块名称",
											"是否可见", "是否启用", "图标", "描述", "创建人",
											"最后修改人" ],

									colModel : [ {
										name : "modelid",
										index : "modelid",
										editable : true,
										width : 60,
										search : false,
										hidden : true
									}, {
										name : "parentid",
										index : "parentid",
										editable : true,
										width : 60,
										search : true
									}, {
										name : "modelname",
										index : "modelname",
										editable : true,
										width : 60,
										search : true
									}, {
										name : "isview",
										index : "isview",
										editable : true,
										width : 60,
										search : true
									}, {
										name : "isused",
										index : "isused",
										editable : true,
										width : 60,
										search : true
									}, {
										name : "icon",
										index : "icon",
										editable : true,
										width : 60,
										search : true
									}, {
										name : "description",
										index : "description",
										editable : true,
										width : 60,
										search : true
									}, {
										name : "creatuser",
										index : "creatuser",
										editable : true,
										width : 60,
										search : true
									}, {
										name : "modifyuser",
										index : "modifyuser",
										editable : true,
										width : 60,
										search : true
									} ],
									pager : "#pager_list_2",
									viewrecords : true,
									add : true,
									edit : true,
									addtext : "Add",
									edittext : "Edit",
									hidegrid : false,
									multiselect : true,
								});
						$("#table_list_2").jqGrid("navGrid", "#pager_list_2", {
							edit : false,
							add : false,
							del : false,
							search : true,
							editfunc : function(id) {
								var idStr = "#" + id;
								var $currRow = $("#table_list_2").find(idStr);
								var menu_id = $currRow.find("td:eq(1)").text();
								console.log(menu_id);
								editdata(menu_id);
							},
							addfunc : function(id) {
								adddata();
							},
							delfunc : function(id) {
								var idStr = "#" + id;
								var $currRow = $("#table_list_2").find(idStr);
								var menu_id = $currRow.find("td:eq(1)").text();
								deldata(menu_id);
							}
						}, {
							height : 250,
							reloadAfterSubmit : true
						});
						$(window).bind("resize", function() {
							var width = $(".jqGrid_wrapper").width();
							$("#table_list_2").setGridWidth(width);
						});
					});
			function fnAdd() {
				adddata();
				return false;
			}

			function fnEdit() {
				var ids = $("#table_list_2").jqGrid("getGridParam", "selarrrow");
				if (ids.length == 1) {
					var rowid = $("#table_list_2").jqGrid("getGridParam","selrow");
					var rowData = $("#table_list_2").jqGrid('getRowData',rowid);
					var modelid=rowData.modelid;
					editdata(modelid);
				} else {
					toastr.error("你没有选取或者选取为多行数据");
				}
				return false;
			}
			function fnDel(){
				var ids = $("#table_list_2").jqGrid("getGridParam", "selarrrow");
				if (ids.length == 1) {
					var rowid = $("#table_list_2").jqGrid("getGridParam","selrow");
					var rowData = $("#table_list_2").jqGrid('getRowData',rowid);
					var modelid=rowData.modelid;
					deldata(modelid);
				} else {
					toastr.error("你没有选取或者选取为多行数据");
				}
				return false;
			}
			function fnSetBtn(){
				var ids = $("#table_list_2").jqGrid("getGridParam", "selarrrow");
				if (ids.length == 1) {
					var rowid = $("#table_list_2").jqGrid("getGridParam","selrow");
					var rowData = $("#table_list_2").jqGrid('getRowData',rowid);
					var modelid=rowData.modelid;
					setbutton(modelid);
				} else {
					toastr.error("你没有选取或者选取为多行数据");
				}
				return false;
			}
			function setbutton(id){
				layui.use('layer', function () { //独立版的layer无需执行这一句
		            var layer = layui.layer; //独立版的layer无需执行这一句
		            layer.open({
		                type: 1
		                , anim: 5
		                , isOutAnim: false
		                , offset: 'auto' //具体配置参考：http://www.layui.com/doc/modules/layer.html#offset
		                , id: "divShowLayer"  //防止重复弹出
		                , content:$("#menu_showwin")
		                , area: [700 + 'px', 500 + 'px']
		                ,btn: ['确定', '取消']
		                , btnAlign: 'c' //按钮居中
		                , shade: 0 //不显示遮罩
		                ,yes: function () {
		                    //先保存数据，然后关闭
		                    layer.closeAll();
		                },
		                btn2: function(index, layero){
		                	layer.closeAll();
		                },
		                success: function (layero, index) {
		                   
		                }
		            });
		        });
			}
			
			
			function showStatue(cellvalue, options, rowObject) {
				if (cellvalue == 0) {
					return '<span class="label label-primary">启用</span>';
				} else {
					return '<span class="label label-warning">禁用</span>';
				}
			}
			/**
			删除
			 */
			function deldata(id) {
				swal({
					title : "您确定要删除这条信息吗",
					text : "删除后将无法恢复，请谨慎操作！",
					type : "warning",
					showCancelButton : true,
					confirmButtonColor : "#DD6B55",
					confirmButtonText : "删除",
					closeOnConfirm : false
				}, function() {
					$.ajax({
						type : "GET",
						url : "../sys_models/delmenu.do",
						data : {
							id : id
						},
						dataType : "json",
						success : function(data) {
							messageHelper(data, reloadGrid());
						}
					});

				});
			}

			/**
			修改
			 */
			function editdata(id) {
				//alert(id);
				$("#frameView").attr("src",
						"../sys_models/edit_view.do?id=" + id);
				$('#addmodal').modal({
					keyboard : true
				});
			}
			/**
			新增
			 */
			function adddata() {
				$("#frameView").attr("src", "../sys_models/add_view.do");
				$('#addmodal').modal({
					keyboard : true
				});
			}
			//刷新grid
			function reloadGrid() {
				var page = $("#table_list_2").jqGrid("getGridParam", "page");
				$("#table_list_2").jqGrid().trigger("reloadGrid", [ {
					page : page
				} ]); //重载JQGrid
			}
			function messageHelper(data, func) {
				if (data.mst == 0) {
					swal.close();
					toastr.success(data.msg);
					//swal("删除成功！", "您已经永久删除了这条信息。", "success");
					//reloadGrid();
					if (func) {
						func();
					}
				} else {
					toastr.error(data.msg);
					//swal("删除失败！", "请联系管理员", "error");
				}
			}
		</script>

	<script>
	$(document).ready(function() {
		layui.use(['form', 'layedit'], function(){
			  var form = layui.form,layer = layui.layer;
		});
		$("#using_json").jstree({
			"core" : {
				"data" : {
					'url' : '../sys_models/models_Tree.do',
					'dataType' : 'json',
				}
			}
		});
		$("#table_list_alert").jqGrid({
			url : "../sys_menus/serch.do",
			datatype : "json",
			height : "auto",
			width : "100%",
			autowidth : true,
			shrinkToFit : true,
			rowNum : 10,
			rowList : [ 10, 20, 30 ],
			colNames : [ "id", "菜单名称", "描述","对应方法"],
			colModel : [{
				name : "menuid",
				index : "menuid",
				editable : false,
				width : 60,
				search : false,
				hidden:true
			},{
				name : "menuname",
				index : "menuname",
				editable : false,
				width : 200,
				search : true,
				formatter:showicon
			},{
				name : "description",
				index : "description",
				editable : false,
				width : 250,
				search : true
			},{
				name : "action",
				index : "",
				editable : true,
				width : 200,
				search : true,
				editable:true
			}],
			//pager : "#pager_list_2",
			viewrecords : true,
			//caption : "jqGrid 示例2",
			add : false,
			edit : false,
			addtext : "Add",
			edittext : "Edit",
			hidegrid : true,
			multiselect : true,  
			cellEdit: true,
		    cellsubmit: 'clientArray'
		});
		
	});
	function showicon(cellvalue, options, rowObject) {
		return '<i class="'+rowObject.icon+'"></i>&nbsp;&nbsp;&nbsp;&nbsp;'+cellvalue;
	}
    </script>
</body>

</html>
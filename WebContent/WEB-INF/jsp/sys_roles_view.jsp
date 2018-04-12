<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>角色管理列表页面</title>

<meta name="keywords" content="角色管理列表页面">
<meta name="description" content="角色管理列表页面">

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
</style>
</head>

<body class="gray-bg">
	<div class="wrapper wrapper-content  animated fadeInRight">

		<div class="row">
			<div class="col-sm-12">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>角色列表</h5>
						<a style="padding: 5px 15px;" onclick="fnAdd();"
							href="javascript:void(0);"><i class="fa fa-plus"></i> 新增</a> <a
							style="padding: 5px 15px;" onclick="fnEdit();"
							href="javascript:void(0);"><i class="fa fa-edit"></i> 修改</a> <a
							style="padding: 5px 15px;" onclick="fnDel();"
							href="javascript:void(0);"><i class="fa fa-trash"></i> 删除</a> <a
							style="padding: 5px 15px;" onclick="fnSetMoAu();"
							href="javascript:void(0);"><i class="fa fa-cogs"></i> 模块权限</a><a
							style="padding: 5px 15px;" onclick="fnSetMeAu();"
							href="javascript:void(0);"><i class="fa fa-cogs"></i> 菜单权限</a>
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

		<div class="jqGrid_wrapper" id="model_showwin" style="display: none;">
			<table id="table_list_alert"></table>
			<!-- <div id="pager_list_2"></div> -->
		</div>
		
		<div class="jqGrid_wrapper" id="menu_showwin"  style="display: none;">
			<table id="table_list_alert_menu"></table>
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
		<script type="text/javascript" src="../js/plugins/lay/layui.js"
			charset="UTF-8"></script>
		<script>
			$(document).ready(function() {
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
				$("#table_list_2").jqGrid({
					url : "../sys_roles/serch.do",
					datatype : "json",
					height : 350,
					autowidth : true,
					shrinkToFit : true,
					rowNum : 10,
					rowList : [ 10, 20, 30 ],
					colNames : [ "id", "角色名称", "描述", "创建人", "最后修改人" ],

					colModel : [ {
						name : "roleid",
						index : "roleid",
						editable : true,
						width : 60,
						search : false,
						hidden : true
					}, {
						name : "rolename",
						index : "rolename",
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
					//caption : "jqGrid 示例2",
					add : true,
					edit : true,
					addtext : "Add",
					edittext : "Edit",
					hidegrid : false,
					multiselect : true,
				});
				//$("#table_list_2").setSelection(4, true);
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
					//$("#table_list_1").setGridWidth(width);
					$("#table_list_2").setGridWidth(width);
				});
				$("#table_list_alert").jqGrid({
					url : "../sys_models/serch.do",
					datatype : "json",
					height : "auto",
					width : "100%",
					autowidth : true,
					shrinkToFit : true,
					rowNum : 10,
					rowList : [ 10, 20, 30 ],
					colNames : [ "id", "模块名称", "描述" ],
					colModel : [ {
						name : "modelid",
						index : "modelid",
						editable : false,
						width : 60,
						search : false,
						hidden : true
					}, {
						name : "modelname",
						index : "modelname",
						editable : false,
						width : 300,
						search : true,
						formatter : showicon
					}, {
						name : "description",
						index : "description",
						editable : false,
						width : 350,
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
					cellEdit : true,
					cellsubmit : 'clientArray'
				});
				$("#table_list_alert_menu").jqGrid({
					url :  "../js/mydata.json",
					//datastr: [{'modelid':0,'modelname':'王三','level':0,'endDate':'2017-03-07','isLeaf':false,'nodeLevel':20,'expanded':true,'description':'123'}, {'modelid':1,'modelname':'王三','level':1,'endDate':'2017-03-07','isLeaf':false,'nodeLevel':21,'parent':0,'expanded':true,'description':'123'},{'modelid':2,'modelname':'王三','level':2,'endDate':'2017-03-07','isLeaf':true,'nodeLevel':22,'parent':1,'expanded':true,'description':'123'}],  
					datatype : "json",
					height : "auto",
					width : "100%",
					 treeGrid: true,    
		               treeGridModel: 'adjacency',    
		               ExpandColumn : 'id',
					autowidth : true,
					shrinkToFit : true,
					rowNum : 10,
					rowList : [ 10, 20, 30 ],
					colNames : [ "id", "模块名称" ],
					treeIcons: {plus:'fa fa-plus-square-o',minus:'fa fa-minus-square-o',leaf:'fa fa-file-archive-o'}, 
					colModel : [ {
						name : "id",
						index : "id",
						editable : false,
						width : 60,
						search : false,
						//hidden : true
					}, {
						name : "elementName",
						index : "elementName",
						editable : false,
						width : 300,
						search : true,
						formatter : showicon
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
					cellEdit : false,
					cellsubmit : 'clientArray',
	                treeReader : {    
	                     level_field: "leave",    
	                     parent_id_field: "parent",    
	                     leaf_field: "isLeaf",    
	                     expanded_field: "expanded"    
	                }
				});
				
				layui.use([ 'form', 'layedit' ], function() {
					var form = layui.form, layer = layui.layer;
				});
			});
			function showicon(cellvalue, options, rowObject) {
				return '<i class="'+rowObject.icon+'"></i>&nbsp;&nbsp;&nbsp;&nbsp;'+cellvalue;
			}
			function fnAdd() {
			    adddata();
			    return false;
			}
			function fnEdit() {
			    var ids = $("#table_list_2").jqGrid("getGridParam", "selarrrow");
			    if (ids.length == 1) {
			        var rowid = $("#table_list_2").jqGrid("getGridParam", "selrow");
			        var rowData = $("#table_list_2").jqGrid('getRowData', rowid);
			        var modelid = rowData.roleid;
			        editdata(modelid);
			    } else {
			        toastr.error("你没有选取或者选取为多行数据");
			    }
			    return false;
			}
			function fnDel() {
			    var ids = $("#table_list_2").jqGrid("getGridParam", "selarrrow");
			    if (ids.length == 1) {
			        var rowid = $("#table_list_2").jqGrid("getGridParam", "selrow");
			        var rowData = $("#table_list_2").jqGrid('getRowData', rowid);
			        var modelid = rowData.roleid;
			        deldata(modelid);
			    } else {
			        toastr.error("你没有选取或者选取为多行数据");
			    }
			    return false;
			}
			function fnSetMoAu() {
			    var ids = $("#table_list_2").jqGrid("getGridParam", "selarrrow");
			    if (ids.length == 1) {
			        var rowid = $("#table_list_2").jqGrid("getGridParam", "selrow");
			        var rowData = $("#table_list_2").jqGrid('getRowData', rowid);
			        var modelid = rowData.roleid;
			        setbutton(modelid);
			    } else {
			        toastr.error("你没有选取或者选取为多行数据");
			    }
			    return false;
			}
			function setbutton(id) {
			    layui.use('layer', function () { //独立版的layer无需执行这一句
			        var layer = layui.layer; //独立版的layer无需执行这一句
			        layer.open({
			            type: 1
			            , anim: 5
			            , isOutAnim: false
			            , offset: 'auto' //具体配置参考：http://www.layui.com/doc/modules/layer.html#offset
			            , id: "divShowLayer" //防止重复弹出
			            , content: $("#model_showwin"),
			            area: [700 + 'px', 500 + 'px'],
			            btn: ['确定', '取消'],
			            btnAlign: 'c' //按钮居中
			            , shade: 0 //不显示遮罩
			            , yes: function () {
			                //先保存数据，
			                //$('#table_list_alert').jqGrid('getGridParam','selarrrow');
			                //$('#table_list_alert').saveRow();
			                //$('#table_list_alert').jqGrid('saveRow', lastSel);//写在保存方法里  
			                var ids = $('#table_list_alert').jqGrid('getGridParam', 'selarrrow');
			                var modelid = $('#table_list_2').jqGrid('getGridParam', 'selrow');
			                var rowDatas = $('#table_list_2').jqGrid('getRowData', modelid);
			                var datas = [];
			                for (var i = 0; i < ids.length; i++) {
			                    var rowData = $("#table_list_alert").jqGrid('getRowData', ids[i]);
			                    var rowone = {};
			                    rowone.action = rowData.action;
			                    rowone.menuid = rowData.menuid;
			                    rowone.modelid = rowDatas.roleid;
			                    rowone.modelmenuid = "";
			                    datas.push(rowone);
			                }
			                $.ajax({
			                    type: "POST",
			                    url: "../sys_models/updateMenus.do",
			                    data: JSON.stringify({
			                        "sys_modelmenuss": datas, "modelid": rowDatas.modelid
			                    }),
			                    dataType: "json",
			                    contentType: 'application/json',
			                    headers: {
			                        'Content-Type': 'application/json;charset=utf-8'
			                    },
			                    success: function (data) {
			                        messageHelper(data, reloadGrid());
			                        //然后关闭
			                        layer.closeAll();
			                    }
			                });
			            },
			            btn2: function (index, layero) {
			                layer.closeAll();
			            },
			            success: function (layero,index) {
			            	   $("#table_list_alert").jqGrid().trigger("reloadGrid"); //重载JQGrid
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
			        title: "您确定要删除这条信息吗",
			        text: "删除后将无法恢复，请谨慎操作！",
			        type: "warning",
			        showCancelButton: true,
			        confirmButtonColor: "#DD6B55",
			        confirmButtonText: "删除",
			        closeOnConfirm: false
			    }, function () {
			        $.ajax({
			            type: "GET",
			            url: "../sys_roles/delmenu.do",
			            data: { id: id },
			            dataType: "json",
			            success: function (data) {
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
			        "../sys_roles/edit_view.do?id=" + id);
			    $('#addmodal').modal({
			        keyboard: true
			    });
			}
			/**
			新增
			 */
			function adddata() {
			    $("#frameView").attr("src", "../sys_roles/add_view.do");
			    $('#addmodal').modal({
			        keyboard: true
			    });
			}
			//刷新grid
			function reloadGrid() {
			    //alert(1);
			    var page = $("#table_list_2").jqGrid("getGridParam", "page");
			    $("#table_list_2").jqGrid().trigger("reloadGrid", [{
			        page: page
			    }]); //重载JQGrid
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
</body>

</html>
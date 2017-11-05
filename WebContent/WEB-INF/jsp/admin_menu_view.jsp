<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>H+ 后台主题UI框架 - 树形视图</title>

<meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
<meta name="description"
	content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

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
			<!-- 左侧菜单树 start -->
			<div class="col-sm-3">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>菜单树</h5>
						<div class="ibox-tools">
							<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
							</a>
							<!-- <a class="close-link"> <i class="fa fa-times"></i></a> -->
						</div>
					</div>
					<div class="ibox-content">

						<div id="using_json"></div>

					</div>
				</div>
			</div>
			<!-- 左侧菜单树 end -->
			<div class="col-sm-9">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>菜单列表</h5>
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
		<script src="../js/jquery.min.js?v=2.1.4"></script>
		<script src="../js/bootstrap.min.js?v=3.3.5"></script>
		<script src="../js/content.min.js?v=1.0.0"></script>
		<script src="../js/plugins/jsTree/jstree.min.js"></script>
		<script src="../js/plugins/peity/jquery.peity.min.js"></script>
		<script src="../js/plugins/jqgrid/i18n/grid.locale-cn.js"></script>
		<script src="../js/plugins/jqgrid/jquery.jqGrid.min.js"></script>
		<script src="../js/plugins/sweetalert/sweetalert.min.js"></script>
    <script src="../js/plugins/toastr/toastr.min.js"></script>
		<script>
			$(document).ready(function() {
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
				
				
				$.jgrid.defaults.styleUI = "Bootstrap";
				var mydata = [ {
					id : "1",
					invdate : "2010-05-24",
					name : "test",
					note : "note",
					tax : "10.00",
					total : "2111.00"
				}, {
					id : "2",
					invdate : "2010-05-25",
					name : "test2",
					note : "note2",
					tax : "20.00",
					total : "320.00"
				}, {
					id : "3",
					invdate : "2007-09-01",
					name : "test3",
					note : "note3",
					tax : "30.00",
					total : "430.00"
				}, {
					id : "4",
					invdate : "2007-10-04",
					name : "test",
					note : "note",
					tax : "10.00",
					total : "210.00"
				}, {
					id : "5",
					invdate : "2007-10-05",
					name : "test2",
					note : "note2",
					tax : "20.00",
					total : "320.00"
				}, {
					id : "6",
					invdate : "2007-09-06",
					name : "test3",
					note : "note3",
					tax : "30.00",
					total : "430.00"
				}, {
					id : "7",
					invdate : "2007-10-04",
					name : "test",
					note : "note",
					tax : "10.00",
					total : "210.00"
				}, {
					id : "8",
					invdate : "2007-10-03",
					name : "test2",
					note : "note2",
					amount : "300.00",
					tax : "21.00",
					total : "320.00"
				}, {
					id : "9",
					invdate : "2007-09-01",
					name : "test3",
					note : "note3",
					amount : "400.00",
					tax : "30.00",
					total : "430.00"
				}, {
					id : "11",
					invdate : "2007-10-01",
					name : "test",
					note : "note",
					amount : "200.00",
					tax : "10.00",
					total : "210.00"
				}, {
					id : "12",
					invdate : "2007-10-02",
					name : "test2",
					note : "note2",
					amount : "300.00",
					tax : "20.00",
					total : "320.00"
				}, {
					id : "13",
					invdate : "2007-09-01",
					name : "test3",
					note : "note3",
					amount : "400.00",
					tax : "30.00",
					total : "430.00"
				}, {
					id : "14",
					invdate : "2007-10-04",
					name : "test",
					note : "note",
					amount : "200.00",
					tax : "10.00",
					total : "210.00"
				}, {
					id : "15",
					invdate : "2007-10-05",
					name : "test2",
					note : "note2",
					amount : "300.00",
					tax : "20.00",
					total : "320.00"
				}, {
					id : "16",
					invdate : "2007-09-06",
					name : "test3",
					note : "note3",
					amount : "400.00",
					tax : "30.00",
					total : "430.00"
				}, {
					id : "17",
					invdate : "2007-10-04",
					name : "test",
					note : "note",
					amount : "200.00",
					tax : "10.00",
					total : "210.00"
				}, {
					id : "18",
					invdate : "2007-10-03",
					name : "test2",
					note : "note2",
					amount : "300.00",
					tax : "20.00",
					total : "320.00"
				}, {
					id : "19",
					invdate : "2007-09-01",
					name : "test3",
					note : "note3",
					amount : "400.00",
					tax : "30.00",
					total : "430.00"
				}, {
					id : "21",
					invdate : "2007-10-01",
					name : "test",
					note : "note",
					amount : "200.00",
					tax : "10.00",
					total : "210.00"
				}, {
					id : "22",
					invdate : "2007-10-02",
					name : "test2",
					note : "note2",
					amount : "300.00",
					tax : "20.00",
					total : "320.00"
				}, {
					id : "23",
					invdate : "2007-09-01",
					name : "test3",
					note : "note3",
					amount : "400.00",
					tax : "30.00",
					total : "430.00"
				}, {
					id : "24",
					invdate : "2007-10-04",
					name : "test",
					note : "note",
					amount : "200.00",
					tax : "10.00",
					total : "210.00"
				}, {
					id : "25",
					invdate : "2007-10-05",
					name : "test2",
					note : "note2",
					amount : "300.00",
					tax : "20.00",
					total : "320.00"
				}, {
					id : "26",
					invdate : "2007-09-06",
					name : "test3",
					note : "note3",
					amount : "400.00",
					tax : "30.00",
					total : "430.00"
				}, {
					id : "27",
					invdate : "2007-10-04",
					name : "test",
					note : "note",
					amount : "200.00",
					tax : "10.00",
					total : "210.00"
				}, {
					id : "28",
					invdate : "2007-10-03",
					name : "test2",
					note : "note2",
					amount : "300.00",
					tax : "20.00",
					total : "320.00"
				}, {
					id : "29",
					invdate : "2007-09-01",
					name : "test3",
					note : "note3",
					amount : "400.00",
					tax : "30.00",
					total : "430.00"
				} ];

				$("#table_list_2").jqGrid({
					url : "../admin_menu/serch.do",
					datatype : "json",
					height : 350,
					autowidth : true,
					shrinkToFit : true,
					rowNum : 10,
					rowList : [ 10, 20, 30 ],
					colNames : [ "序号", "名称", "是否显示" ],
					colModel : [ {
						name : "menu_id",
						index : "menu_id",
						editable : true,
						width : 60,
						sorttype : "int",
						search : true
					}, {
						name : "name",
						index : "name",
						editable : true,
						width : 90
					}, {
						name : "display",
						index : "display",
						editable : true,
						width : 100,
						sorttype : "int",
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
					edit : true,
					add : true,
					del : true,
					search : true,
					editfunc : function(id) {
						var idStr = "#"+id;
	                    var $currRow = $("#table_list_2").find(idStr);
	                    var menu_id = $currRow.find("td:eq(1)").text();
	                    console.log(menu_id);
						editdata(menu_id);
					},
					addfunc : function(id) {
						adddata();
					},
					delfunc : function(id) {
						var idStr = "#"+id;
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
			});
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
			             type: "GET",
			             url: "../admin_menu/delmenu.do",
			             data: {id:id},
			             dataType: "json",
			             success: function(data){
			            	 messageHelper(data,reloadGrid());
			             }
			         });
					
				});
			}
			/**
			修改
			 */
			function editdata(id) {
				//alert(id);
				$("#frameView").attr("src", "../admin_menu/edit_view.do?id="+id);
				$('#addmodal').modal({
					keyboard : true
				});
			}
			/**
			新增
			 */
			function adddata() {
				$("#frameView").attr("src", "../admin_menu/add_view.do");
				$('#addmodal').modal({
					keyboard : true
				});
			}
			//刷新grid
			function reloadGrid(){
				//alert(1);
				var page=$("#table_list_2").jqGrid("getGridParam","page");
             	$("#table_list_2").jqGrid().trigger("reloadGrid", [{ page: page}]);  //重载JQGrid
			}
			function messageHelper(data,func){
				if(data.mst==0){
           		 swal.close();
                	toastr.success(data.msg);
                	//swal("删除成功！", "您已经永久删除了这条信息。", "success");
                	//reloadGrid();
                	if(func){
                		func();
                	}
                }else{
                	toastr.error(data.msg);
               	 //swal("删除失败！", "请联系管理员", "error");
                }
			}
		</script>

		<script>
			$(document).ready(function() {
				$("#using_json").jstree({
					"core" : {
						"data" : {
							'url' : '../admin_menu/serchAdmin_menu_Tree.do',
							'dataType' : 'json',
						}
					}
				})
			});
		</script>
		<script type="text/javascript"
			src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>

</html>
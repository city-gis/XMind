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
<link href="css/bootstrap.min.css?v=3.3.5" rel="stylesheet">

<link href="css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
<link href="css/plugins/jqgrid/ui.jqgrid.css" rel="stylesheet">
<link href="css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
<link href="css/plugins/jsTree/style.min.css" rel="stylesheet">
<link href="css/animate.min.css" rel="stylesheet">
<link href="css/style.min.css?v=4.0.0" rel="stylesheet">
<base target="_blank">
<style>
.jstree-open>.jstree-anchor>.fa-folder:before {
	content: "\f07c"
}

.jstree-default .jstree-icon.none {
	width: 0
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
					<div class="ibox-content" style="padding:0px">
						<div class="jqGrid_wrapper">
							<table id="table_list_2"></table>
							<div id="pager_list_2"></div>
						</div>
						
					</div>
				</div>
			</div>
		</div>
		<script src="js/jquery.min.js?v=2.1.4"></script>
		<script src="js/bootstrap.min.js?v=3.3.5"></script>
		<script src="js/content.min.js?v=1.0.0"></script>
		<script src="js/plugins/jsTree/jstree.min.js"></script>

		<script src="js/plugins/peity/jquery.peity.min.js"></script>
		<script src="js/plugins/jqgrid/i18n/grid.locale-cn.js"></script>
		<script src="js/plugins/jqgrid/jquery.jqGrid.min.js"></script>

		<script>
			$(document).ready(function() {
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
					url : "admin_menu/serch.do",
					datatype : "json",
					height : 350,
					autowidth : true,
					shrinkToFit : true,
					rowNum : 10,
					rowList : [ 10, 20, 30 ],
					colNames : [ "序号", "日期", "客户", "金额", "运费", "总额", "备注" ],
					colModel : [ {
						name : "id",
						index : "id",
						editable : true,
						width : 60,
						sorttype : "int",
						search : true
					}, {
						name : "invdate",
						index : "invdate",
						editable : true,
						width : 90,
						sorttype : "date",
						formatter : "date"
					}, {
						name : "name",
						index : "name",
						editable : true,
						width : 100
					}, {
						name : "amount",
						index : "amount",
						editable : true,
						width : 80,
						align : "right",
						sorttype : "float",
						formatter : "number"
					}, {
						name : "tax",
						index : "tax",
						editable : true,
						width : 80,
						align : "right",
						sorttype : "float"
					}, {
						name : "total",
						index : "total",
						editable : true,
						width : 80,
						align : "right",
						sorttype : "float"
					}, {
						name : "note",
						index : "note",
						editable : true,
						width : 100,
						sortable : false
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
				$("#table_list_2").setSelection(4, true);
				$("#table_list_2").jqGrid("navGrid", "#pager_list_2", {
					edit : true,
					add : true,
					del : true,
					search : true
				}, {
					height : 150,
					reloadAfterSubmit : true
				});
				$(window).bind("resize", function() {
					var width = $(".jqGrid_wrapper").width();
					//$("#table_list_1").setGridWidth(width);
					$("#table_list_2").setGridWidth(width);
				});
			});
		</script>

		<script>
			$(document).ready(function() {
				$("#using_json").jstree({
					"core" : {
						"data" : {
							'url' : 'admin_menu/serchAdmin_menu_Tree.do',
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
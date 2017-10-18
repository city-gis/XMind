//var navs ;
//$.ajax({
//	 url:"admin_menu/queryTreeMenu.do",
//	 type:"GET",
//	 success:function(result){
//		 navs=result;
//        console.log(result);
//	 }
// });



var navs = [{
	"title" : "后台首页",
	"icon" : "icon-computer",
	"href" : "page/main.html",
	"spread" : false
},{
	"title" : "菜单管理",
	"icon" : "icon-text",
	"href" : "nextjsp.do?target=admin_menu_view",//"admin_menu/view.do",
	"spread" : false
},{
	"title" : "友情链接",
	"icon" : "icon-text",
	"href" : "page/links/linksList.html",
	"spread" : false
},{
	"title" : "404页面",
	"icon" : "&#xe61c;",
	"href" : "page/404.html",
	"spread" : false
},{
	"title" : "系统基本参数",
	"icon" : "&#xe631;",
	"href" : "page/systemParameter/systemParameter.html",
	"spread" : false
},{
	"title" : "系统设置",
	"icon" : "&#xe61c;",
	"href" : "",
	"spread" : false,
	"children" : [
		{
			"title" : "二级菜单1",
			"icon" : "&#xe631;",
			"href" : "",
			"spread" : false
		},
		{
			"title" : "二级菜单2",
			"icon" : "&#xe631;",
			"href" : "",
			"spread" : false
		}
	]
}]
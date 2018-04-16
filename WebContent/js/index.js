$(function() {
	var dataResult;
	$.ajax({
		url : 'sys_models/models_Tree.do',
		type : 'get',
		dataType : 'json',
		async : false,
		success : function(data) {
			//console.log(data);
			dataResult=data;
			$(".sidebar-collapse>.jstree-default .jstree-node").css({"padding":"10px 0"})
			$("#side-menu-div").jstree({
				"core" : {
					"data" : data
				}
			});
		},
		error : function() {
			status = false;
			// return false;
		}
	});
	
	$("#side-menu-div").on('load_node.jstree', function(event, obj) {
		var option = {};
        option.flat = true;
        option.no_state = true;
        option.no_data = true;
        option.no_li_attr = true;
        option.no_a_attr = true;
	    var json = $("#side-menu-div").jstree(true).get_json(null,option);
	    for(var i=0;i<json.length;i++){
	    	var one=$("#side-menu-div").jstree(true).get_json(json[i].id);
	    	if(one.children.length==0){
	    		for(var j=0;j<json.length;j++){
	    			if(json[i].id==dataResult[j].id){
		    			$("#"+one.a_attr.id).attr("href",dataResult[j].url);
		    			break;
	    			}
	    		}
	    		$("#"+one.a_attr.id).attr("class","J_menuItem");
	    	}
	    }
	});
	$('#side-menu-div').on("open_node.jstree",function(e,data){
        //此处如何获取ID
		var option = {};
        option.flat = true;
        option.no_state = true;
        //option.no_data = true;
        option.no_li_attr = true;
        option.no_a_attr = true;
	    var json = $("#side-menu-div").jstree(true).get_json(null,option);
	    var jstrees = $("#side-menu-div").jstree(true);
	    //console.log(json);
	    for(var i=0;i<json.length;i++){
	    	var one=$("#side-menu-div").jstree(true).get_json(json[i].id);
	    	if(one.children.length==0){
	    		for(var j=0;j<json.length;j++){
	    			if(json[i].id==dataResult[j].id){
		    			$("#"+one.a_attr.id).attr("href",dataResult[j].url);
		    			break;
	    			}
	    		}
	    		$("#"+one.a_attr.id).attr("class","J_menuItem");
	    	}
	    }
	    loads_content_menu();
    });

});
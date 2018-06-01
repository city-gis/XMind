$(function(){
	
	var modelid=$($(window)[0].frameElement).attr("modelid");
	$.ajax({
        type: "GET",
        url: "../sys/getpagemenu.do",
        data: { modelid: modelid },
        dataType: "json",
        success: function (data) {
        	console.log(data);
        	var html="";
        	for (var index = 0; index < data.length; index++) {
        	    var element = data[index];
        	    html+='<a class="sys_menus" style="padding: 5px 15px;" onclick="'+element.jsfunc+'" href="javascript:void(0);"><i class="'+element.icon+'"></i> '+ element.menuname+' </a>';
        	}
        	$("#ibox-menus").empty().append(html);
        }
    });
})
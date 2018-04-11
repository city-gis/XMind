$(function() {
	$.ajax({
		url : 'sys_models/indexleftmodels.do',
		type : 'get',
		dataType : 'json',
		async : false,
		success : function(data) {
			
		},
		error : function() {
			status = false;
			// return false;
		}
	});
});
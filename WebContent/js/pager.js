var table_pager=(function(){
	var curr=0;
	var pagesize=10;
	var pager = function() {};
	/*
	 * 初始化分页
	 * */
	layui.use(['laypage', 'layer'], function(){
		  var laypage = layui.laypage,layer = layui.layer;
		pager.prototype.init=function(id,count,pagesizes,pagecurr,func){
			if( !isNaN(pagesize) ){
				pagesize=pagesizes;
			}
			var page
			laypage({
				cont : id,
				pages : Math.ceil(count/pagesize),
				skip: true,
				curr:pagecurr,
			    jump: function(obj, first){
			    	curr=obj.curr;//获取当前控制页码
			      if(!first){
			    	  if(func){
				    	  func(curr);
				      }
			        //layer.msg('第 '+ obj.curr +' 页');
			      }
			      
			    }
			})
		}
	});
	/*
	 * 获取当前控制页码
	 * */
	pager.prototype.curr=function(){
		return curr;
	}
	/*
	 * 获取LimtStart
	 * */
	function start(){
		if( !isNaN(pagesize) ){
			var curent=curr-1;
			return pagesize*curent;
		}else{
			return 0;
		}
	}
	pager.prototype.Lstart=function(){
		return start();
	}
	/*
	 * 获取LimtStart
	 * */
	function end(){
		if( !isNaN(pagesize) ){
			//curr=curr--;
			return pagesize*curr+pagesize;
		}else{
			return 0;
		}
	}
	pager.prototype.Lend=function(){
		return end();
	}
	return pager;
})()


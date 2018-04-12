/*
 * 打开layui弹窗
 */
function openLayWin(type,id,content,area,btn,yes,btn2,suc){
	layui.use('layer', function () { //独立版的layer无需执行这一句
        var layer = layui.layer; //独立版的layer无需执行这一句
        layer.open({
            type: 1
            , anim: 5
            , isOutAnim: false
            , offset: 'auto' //具体配置参考：http://www.layui.com/doc/modules/layer.html#offset
            , id: id //防止重复弹出
            , content: content,
            area: [700 + 'px', 500 + 'px'],
            btn: ['确定', '取消'],
            btnAlign: 'c' //按钮居中
            , shade: 0 //不显示遮罩
            , yes: function () {
               
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
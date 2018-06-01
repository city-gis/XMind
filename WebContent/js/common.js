var Tool = {
    /*
     * 打开layui弹窗
     */
    openLayWin: function (type, id, content, area, btn, yes, btn2, suc) {
        this.layer.open({
            type: 1
        , anim: 5
        , isOutAnim: false
        , offset: 'auto' //具体配置参考：http://www.layui.com/doc/modules/layer.html#offset
        , id: id //防止重复弹出
        , content: content
        , area: [700 + 'px', 500 + 'px']
        , btn: ['确定', '取消']
        , btnAlign: 'c' //按钮居中
        , shade: 0 //不显示遮罩
        , yes: function () {

        }
        , btn2: function (index, layero) {
            layer.closeAll();
        }
        , success: function (layero, index) {
            $("#table_list_alert").jqGrid().trigger("reloadGrid"); //重载JQGrid
        }
        });
    },
    /**
     * 初始化消息提示 toastr
     * 
     **/
    toastrinit: function () {
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
        }
        this.toastr = toastr;
    },
    /**
     * 删除提示框
     * 
     */
    delTipWin: function (message, func) {
        this.layer.open({
            type: 1
        , offset: 'auto' //具体配置参考：http://www.layui.com/doc/modules/layer.html#offset
        , id: 'layui_del_tipwin' //防止重复弹出
        , content: '<div style="padding: 20px 100px;">' + message + '</div>'
        , btn: ['确定', "取消"]
        , btnAlign: 'c' //按钮居中
        , shade: [0.8, '#393D49']
        , yes: function () {
            if (func) {
                func()
            }
            //setTimeout(function () { layer.closeAll(); }, 500);
        },
            btn2: function (index, layero) {
                layer.closeAll();
            }
        });
    },
    /**
     * 消息提示
     */
    messageHelper: function (data, func) {
        if (data.mst == 0) {
            this.toastr.success(data.msg);
            if (func) {
                func();
            }
        } else {
            toastr.error(data.msg);
        }
    }
};
$(function () {
    Tool.toastrinit();
    layui.use('layer', function () { //独立版的layer无需执行这一句
        var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句
        Tool.layer = layui.layer;
    });
})

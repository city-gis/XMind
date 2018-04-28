$(document).ready(function () {
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
    $("#table_list_2").jqGrid({
        url: "../sys_menus/serch.do",
        datatype: "json",
        height: 350,
        autowidth: true,
        shrinkToFit: true,
        rowNum: 10,
        rowList: [10, 20, 30],
        colNames: ["id", "菜单名称", "图标", "描述", "创建人", "最后修改人"],
        colModel: [{
            name: "menuid",
            index: "menuid",
            editable: true,
            width: 60,
            search: false,
            hidden: true
        }, {
            name: "menuname",
            index: "menuname",
            editable: true,
            width: 60,
            search: true
        }, {
            name: "icon",
            index: "icon",
            editable: true,
            width: 60,
            search: true
        }, {
            name: "description",
            index: "description",
            editable: true,
            width: 60,
            search: true
        }, {
            name: "creatuser",
            index: "creatuser",
            editable: true,
            width: 60,
            search: true
        }, {
            name: "modifyuser",
            index: "modifyuser",
            editable: true,
            width: 60,
            search: true
        }],
        pager: "#pager_list_2",
        viewrecords: true,
        //caption : "jqGrid 示例2",
        add: true,
        edit: true,
        addtext: "Add",
        edittext: "Edit",
        hidegrid: false,
        multiselect: true,
    });
    //$("#table_list_2").setSelection(4, true);
    $("#table_list_2").jqGrid("navGrid", "#pager_list_2", {
        edit: true,
        add: true,
        del: true,
        search: true,
        editfunc: function (id) {
            var idStr = "#" + id;
            var $currRow = $("#table_list_2").find(idStr);
            var menu_id = $currRow.find("td:eq(1)").text();
            console.log(menu_id);
            editdata(menu_id);
        },
        addfunc: function (id) {
            adddata();
        },
        delfunc: function (id) {
            var idStr = "#" + id;
            var $currRow = $("#table_list_2").find(idStr);
            var menu_id = $currRow.find("td:eq(1)").text();
            deldata(menu_id);
        }
    }, {
            height: 250,
            reloadAfterSubmit: true
        });
    $(window).bind("resize", function () {
        var width = $(".jqGrid_wrapper").width();
        //$("#table_list_1").setGridWidth(width);
        $("#table_list_2").setGridWidth(width);
    });
   
});
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
            url: "../sys_menus/delmenu.do",
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
    $("#frameView").attr("src", "../sys_menus/edit_view.do?id=" + id);
    $('#addmodal').modal({
        keyboard: true
    });
}
/**
新增
 */
function adddata() {
    $("#frameView").attr("src", "../sys_menus/add_view.do");
    $('#addmodal').modal({
        keyboard: true
    });
}
//刷新grid
function reloadGrid() {
    //alert(1);
    var page = $("#table_list_2").jqGrid("getGridParam", "page");
    $("#table_list_2").jqGrid().trigger("reloadGrid", [{ page: page }]);  //重载JQGrid
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
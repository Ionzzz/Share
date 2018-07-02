<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>标签管理</title>
	<!-- Bootstrap Styles-->
    <link href="<%=basePath%>jsp/manage/assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FontAwesome Styles-->
    <link href="<%=basePath%>jsp/manage/assets/css/font-awesome.css" rel="stylesheet" />
        <!-- Custom Styles-->
    <link href="<%=basePath%>jsp/manage/assets/css/custom-styles.css" rel="stylesheet" />
</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default top-navbar" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.jsp"><strong>Share</strong></a>
            </div>

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">

                        <li>
                            <a class="text-center" href="ReportList.jsp">
                                <strong>举报列表</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-messages -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><i class="fa fa-user fa-fw"></i>
                            <input type="button" value="${manager.manageraccount }"  style= "background-color:transparent ">
                        </li>
                        <li class="divider"></li>
                        <li><a href="${pageContext.request.contextPath }/mngAccount/logout.action">
                            <i class="fa fa-sign-out fa-fw"></i> 退出登录</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
        </nav>
        <!--/. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li>
                        <a href="#"><i class="fa"></i> 管理员模块</a>
                    </li>
                    <li>
                        <a href="index.jsp"><i class="fa fa-dashboard"></i> 管理员账号管理</a>
                    </li>
                    <li>
                        <a href="OpeRecord.jsp"><i class="fa fa-desktop"></i> 操作记录查询</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa"></i> 系统模块</a>
                    </li>
                    <li>
                        <a href="UserManage.jsp"><i class="fa fa-qrcode"></i> 用户管理</a>
                    </li>
                    <li>
                        <a href="UserLvlManage.jsp"><i class="fa fa-qrcode"></i> 用户等级管理</a>
                    </li>
                    <li>
                        <a href="BlogManage.jsp"><i class="fa fa-qrcode"></i> 博客管理</a>
                    </li>
                    <li>
                        <a href="PicManage.jsp"><i class="fa fa-qrcode"></i> 图片管理</a>
                    </li>
                    <li>
                        <a href="CommentManage.jsp"><i class="fa fa-qrcode"></i> 评论管理</a>
                    </li>
                    <li>
                        <a href="LabelManage.jsp"><i class="fa fa-qrcode"></i> 标签管理</a>
                    </li>
                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
		  <div class="header"> 
                        <h1 class="page-header">
                             标签管理
                        </h1>
									
		</div>
		
            <div id="page-inner"> 
               
            <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             标签列表
                            &nbsp&nbsp&nbsp<a href="new_label.jsp" class="glyphicon glyphicon-plus-sign">新建标签</a>
                        </div>


                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>id</th>
                                            <th>标签</th>
                                            <th>描述</th>
                                            <th>创建时间</th>
                                            <th>上次修改时间</th>
                                            <th>编辑</th>
                                            <th>删除</th>
                                        </tr>
                                    </thead>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!--  end  Context Classes  -->
                </div>
            </div>
                <!-- /. ROW  -->
        </div>
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
     <!-- /. WRAPPER  -->
    <!-- JS Scripts-->
    <!-- jQuery Js -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- Bootstrap Js -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- Metis Menu Js -->
    <script src="assets/js/jquery.metisMenu.js"></script>
     <!-- DATA TABLE SCRIPTS -->
    <script src="assets/js/dataTables/jquery.dataTables.js"></script>
    <script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
		<script>
	    (function(){
    var oLanguage={
        "oAria": {
            "sSortAscending": ": 升序排列",
            "sSortDescending": ": 降序排列"
        },
        "oPaginate": {
            "sFirst": "首页",
            "sLast": "末页",
            "sNext": "下页",
            "sPrevious": "上页"
        },
        "sEmptyTable": "没有相关记录",
        "sInfo": "第 _START_ 到 _END_ 条记录，共 _TOTAL_ 条",
        "sInfoEmpty": "第 0 到 0 条记录，共 0 条",
        "sInfoFiltered": "(从 _MAX_ 条记录中检索)",
        "sInfoPostFix": "",
        "sDecimal": "",
        "sInfoThousands": ",",
        "sLengthMenu": "每页显示条数: _MENU_",
        "sLoadingRecords": "正在载入...",
        "sProcessing": "正在载入...",
        "sSearch": "搜索:",
        "sSearchPlaceholder": "",
        "sUrl": "",
        "sZeroRecords": "没有相关记录"
    }
    $.fn.dataTable.defaults.oLanguage=oLanguage;
    //$.extend($.fn.dataTable.defaults.oLanguage,oLanguage)
})();
	</script>
    <script>
        function checkInput(labelname,describe) {
            if(labelname == ""){
                alert("标签名为空");
                return false;
            }else if(describe == ""){
                alert("标签内容为空");
                return false;
            }
            return true;
        }
        //点击“删除”时触发
        function deleteLabel(id){
            if(confirm("确认删除？") == true){
            $.ajax({
                url:"${pageContext.request.contextPath }/mngLabel/delete.action",
                data:{"id":id},
                success:function(){
                    alert("删除成功");
                    location.reload();
                },
                error:function(){
                    alert("后台繁忙");
                }
            })
            }
        }
        $(document).ready(function () {
            var table = $('#dataTables-example').DataTable({
                "bStateSave": true,
                "aaSorting":[[3,"desc"]],
                "ajax":{
                    url:"${pageContext.request.contextPath }/mngLabel/show.action",
                    dataSrc: '',
//                        "dataType":"jsonp",
                },
                "columns":[
                    {"data":"labelId"},
                    { "data": "labelname"},
                    { "data": "labelcontent","render": function ( data, type, row, meta ) {
                        return data;
                    }},
                    { "data": "labelcreatetime","render": function ( data, type, row, meta ) {
                        return new Date(data).toLocaleString();
                    }},
                    { "data": "labelmodifytime","render": function ( data, type, row, meta ) {
                        return new Date(data).toLocaleString();
                    }},
                    {"data":null,"render": function ( data, type, row, meta ) {
                        return '<button class="edit-btn" >编辑</button>';
                    }},
                    { "data": "labelId","render": function ( data, type, row, meta ) {
                        return '<button onclick="deleteLabel('+parseInt(data)+')">删除</button>';
                    }},
                ]
            });
            $("#dataTables-example").on("click",".edit-btn",function(){
                var tds=$(this).parents("tr").children();
                $.each(tds, function(i,val){
                    var jqob=$(val);
                    if(i != 1 && i != 2){return true;}  //只能修改名称和描述
                    var txt=jqob.text();
                    var put=$("<input type='text'>");
                    put.val(txt);
                    jqob.html(put);
                });
                $(this).html("保存");
                $(this).toggleClass("edit-btn");
                $(this).toggleClass("save-btn");
            });

            $("#dataTables-example tbody").on("click",".save-btn",function(){
                var row=table.row($(this).parents("tr"));
                var tds=$(this).parents("tr").children();


                var txt1=tds.eq(1).children().eq(0).val();
                tds.eq(1).html(txt1);

                var txt2=tds.eq(2).children().eq(0).val();
                tds.eq(2).html(txt2);
                /*        //按钮文本：保存——>编辑
                        $.each(tds, function(i,val){
                            var jqob=$(val);
                            //把input变为字符串
                            if(!jqob.has('button').length){
                                var txt=jqob.children("input").val();
                                jqob.html(txt);
                                table.cell(jqob).data(txt);//修改DataTables对象的数据
                            }
                        });*/

                var data=row.data();
                var labelname=txt1;
                var describe=txt2;
                var id=parseInt(data['labelId']);

                //检查输入是否合法
                if(!checkInput(labelname,describe)){
                    $.each(tds, function(i,val){
                        var jqob=$(val);
                        jqob.css({"color":"orangered"});
                    });
                }else{

                    $.ajax({
                        "url":"${pageContext.request.contextPath }/mngLabel/update.action",
                        "data":{
                            "labelname":labelname,
                            "describe":describe,
                            "id":id
                        },
                        "type":"post",
                        "async":"false",
                        "success":function(){
//                            alert("修改成功");
                            $.each(tds, function(i,val){
                                var jqob=$(val);
//                                jqob.css({"color":"lime"});
                                location.reload();
                            });
                        },
                        "error":function(){
                            alert("后台繁忙");
                        }
                    });
                    $(this).html("编辑");
                    $(this).toggleClass("edit-btn");
                    $(this).toggleClass("save-btn");
                }
            });

        });



    </script>

</body>
</html>

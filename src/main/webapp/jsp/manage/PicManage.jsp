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
    <title>图片管理</title>
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
                             图片管理
                        </h1>
									
		</div>
		
            <div id="page-inner"> 
               
            <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             博客列表
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
										    <th width="25%">所在博客</th>
                                            <th width="25%">图片内容</th>
                                            <th width="25%">发布时间</th>
                                            <th width="25%">操作</th>
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
        //点击“删除”时触发
        function deletePic(id){
            confirm("确认删除？");
            $.ajax({
                url:"${pageContext.request.contextPath }/mngPics/delete.action",
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
        $(document).ready(function () {
            $('#dataTables-example').dataTable({
                "bStateSave": true,
                "aaSorting":[[2,"desc"]],
                "ajax":{
                    url:"${pageContext.request.contextPath }/mngPics/show.action",
                    dataSrc: '',
//                        "dataType":"jsonp",
                },
                "columns":[
                    { "data": "blog"},
                    { "data": "pic","render": function ( data, type, row, meta ) {
                        return '<img src="<%=basePath%>'+data+'" height=100 width=100 />';
                    }},
                    { "data": "createTime","render": function ( data, type, row, meta ) {
                        return new Date(data).toLocaleString();
                    }},

                    { "data": "picid","render": function ( data, type, row, meta ) {
                        var delBtn = '<a href="javascript:void(0)" onclick="deletePic('+parseInt(data)+')">删除</a>'
                        return delBtn;
                    }},
                ]
            });
        });
    </script>

</body>
</html>

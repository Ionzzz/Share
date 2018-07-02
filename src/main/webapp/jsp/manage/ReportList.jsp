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
    <title>举报信息列表</title>
    <!-- Bootstrap Styles-->
    <link href="<%=basePath%>jsp/manage/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="<%=basePath%>jsp/manage/assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="<%=basePath%>jsp/manage/assets/css/custom-styles.css" rel="stylesheet" />
    <style type="text/css">
        body {background-image: url('<%=basePath%>images/login-images/1.jpg');}
    </style>
</head>
<body>
<%--<div class="container">--%>
    <div class="container">
        <%--<div class="header" >--%>
            <%--<h1 class="page-header">--%>
                <%--举报信息--%>
            <%--</h1>--%>
        <%--</div>--%>

        <div id="page-inner">

            <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            举报信息列表
                        </div>


                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                        <thead>
                                        <th width="30%">被举报者</th>
                                        <th width="70%">举报内容</th>
                                        </thead>
                                    </table>

                            </div>
                        </div>
                    </div>
                    <!--  end  Context Classes  -->
                </div>
            </div>
            <%--<!-- /. ROW  -->--%>
        </div>
    <%--</div>--%>

</div>

<script src="assets/js/jquery-1.10.2.js"></script>
<!-- Bootstrap Js -->
<script src="assets/js/bootstrap.min.js"></script>
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
    $(document).ready(function () {
        $('#dataTables-example').dataTable({
            "scrollY":"500px",
            "ajax":{
                url:"${pageContext.request.contextPath}/mngReport/show.action",
                dataSrc: '',
//                        "dataType":"jsonp",
            },

            "columns":[
                { "data": "reportedUser"},
                { "data": "reportContent","render": function ( data, type, row, meta ) {
                    if (data == ""){
                        return "未填写原因";
                    }else{
                        return data;
                    }
        }},
            ]
        });
    });
</script>


</body>
</html>

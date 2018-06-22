<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 刘琪
  Date: 2018/5/28
  Time: 18:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>publishBlog</title>
    <link href="<%=basePath%>css/index-css/media_query.css" rel="stylesheet" type="text/css"/>
    <link href="<%=basePath%>css/index-css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="<%=basePath%>css/index-css/font-awesome.min.css">
    <link href="<%=basePath%>css/index-css/animate.css" rel="stylesheet" type="text/css"/>
    <link href="<%=basePath%>css/index-css/Poppins.css" rel="stylesheet">
    <link href="<%=basePath%>css/index-css/owl.carousel.css" rel="stylesheet" type="text/css"/>
    <link href="<%=basePath%>css/index-css/owl.theme.default.css" rel="stylesheet" type="text/css"/>

    <link href="<%=basePath%>css/index-css/style_1.css" rel="stylesheet" type="text/css"/>
    <link href="<%=basePath%>css/index-css/main.css" rel="stylesheet" >
    <link href="<%=basePath%>css/index-css/nav_font.css" rel='stylesheet' type='text/css'>
    <!-- Bootstrap CSS -->
    <link href="<%=basePath%>css/index-css/style_1.css" rel="stylesheet" type="text/css"/>
    <!-- Modernizr JS -->
    <script src="<%=basePath%>js/index-js/modernizr-3.5.0.min.js"></script>

    <script type="text/javascript" charset="utf-8" src="<%=basePath%>editor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="<%=basePath%>editor/ueditor.all.min.js"> </script>
    <script type="text/javascript" charset="utf-8" src="<%=basePath%>editor/lang/zh-cn/zh-cn.js"></script>
    <script src="<%=basePath%>js/index-js/jquery.min.js"></script>
    <script src="<%=basePath%>js/index-js/owl.carousel.min.js"></script>
    <script src="<%=basePath%>js/index-js/tether.min.js"></script>
    <script src="<%=basePath%>js/index-js/bootstrap.min.js"></script>
    <!-- Waypoints -->
    <script src="<%=basePath%>js/index-js/jquery.waypoints.min.js"></script>
    <!-- Main -->
    <script src="<%=basePath%>js/index-js/main.js"></script>
    <script type="text/javascript">


        var value1;
        var value2;
        var value3;
        function getInfo() {
            value1 = $('#select1').val();
            value2 = $('#select2').val();
            value3 = $('#select3').val();
        }

        //实例化编辑器
        //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
        var ue = UE.getEditor('editor');

        //判断编辑器里是否有内容以及获取带有格式的内容
        function hasContent() {
            var arr = [];
            arr.push(UE.getEditor('editor').hasContents());

            var arr1 = [];
            arr1.push(UE.getEditor('editor').getPlainTxt());

            $("#hidden1").val(arr);
            $("#hidden2").val(arr1);
            $("#hidden3").val(value1);
            $("#hidden4").val(value2);
            $("#hidden5").val(value3);

            document.getElementById("form1").submit();
        }

//关闭弹窗
function closeLayer(){
    var arr = [];
    arr.push(UE.getEditor('editor').hasContents());

    if(arr=="false"){
        confirm("还没有填写任何信息哦");
    }else{
        confirm("发布成功");
    }
    parent.layer.closeAll();
    window.parent.location.reload();
}
    </script>

</head>
<body style="margin-bottom: 100px;">
<c:import url="header.jsp"></c:import>

<!--tags-->
<div>
    <form id="form1" action="<%=basePath %>shuDong/publishAllType.action">
        <%--判断内容是否为空--%>
        <input type="hidden" name="content1" id="hidden1"/>
        <%--获取内容--%>
        <input type="hidden" name="content2" id="hidden2"/>
            <%--标志--%>
        <input type="hidden" name="content3" id="hidden3"/>
        <input type="hidden" name="content4" id="hidden4"/>
        <input type="hidden" name="content5" id="hidden5"/>
    </form>
    <!--demo-->

    <script id="editor" type="text/plain" style="width: 90%;height:500px; margin-left: 120px;margin-top: 70px; z-index: 1;"></script></div>

<div style="margin-left:130px;">
<div style="margin-top:20px;"><div style="float:left;">发布选择：</div><select class="form-control col-md-4" onclick="getInfo()" id="select1">
    <option value="-1" selected>请选择</option>
    <option value="0">博客</option>
    <option value="1">树洞</option>
</select></div>
    <div style="margin-top:20px;"><div style="float:left;">文章类型：</div><select class="form-control col-md-4" onclick="getInfo()" id="select2">
        <option value="-1" selected>请选择</option>
        <option value="0">随便写写</option>
        <option value="1">长文本</option>
    </select></div>

    <div style="margin-top:20px;"><div style="float:left;">标&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;签：</div><select class="form-control col-md-4" onclick="getInfo()" id="select3">
        <option value="-1" selected>请选择</option>
        <option value="1">拍照</option>
        <option value="2">音乐</option>
        <option value="3">旅行</option>
        <option value="4">美食</option>
        <option value="5">手绘</option>
        <option value="6">书籍</option>
        <option value="7">手工DIY</option>
        <option value="8">家居</option>
        <option value="9">设计</option>
        <option value="10">插花</option>
        <option value="11">搭配</option>
        <option value="12">美妆</option>
    </select></div>


</div>

<div class="col-12 py-3 text-center" style="margin-right:400px;">
    <span onclick="closeLayer()"><a href="javascript:void(0)" class="btn contact_btn" onclick="hasContent()">发布</a></span>
</div>





</body>
</html>

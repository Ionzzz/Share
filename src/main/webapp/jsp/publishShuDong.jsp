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
    <title>publishShuDong</title>
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>

    <script type='text/javascript' src='<%=basePath %>js/index-js/jquery-1.11.2.js'></script>
    <script type='text/javascript' src='<%=basePath %>layer/layer.js'></script>
    <script type='text/javascript' src='<%=basePath %>layer/mobile/need/layer.css'></script>
    <link href="<%=basePath%>css/index-css/media_query.css" rel="stylesheet" type="text/css"/>
    <link href="<%=basePath%>css/index-css/font-awesome.min.css">
    <link href="<%=basePath%>css/index-css/animate.css" rel="stylesheet" type="text/css"/>
    <link href="<%=basePath%>css/index-css/Poppins.css" rel="stylesheet">
    <link href="<%=basePath%>css/index-css/owl.carousel.css" rel="stylesheet" type="text/css"/>
    <link href="<%=basePath%>css/index-css/owl.theme.default.css" rel="stylesheet" type="text/css"/>
    <!-- Bootstrap CSS -->
    <link href="<%=basePath%>css/index-css/style_1.css" rel="stylesheet" type="text/css"/>
    <!-- Modernizr JS -->
    <script src="<%=basePath%>js/index-js/modernizr-3.5.0.min.js"></script>

    <script type="text/javascript" charset="utf-8" src="<%=basePath%>editor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="<%=basePath%>editor/ueditor.all.min.js"> </script>
    <script type="text/javascript" charset="utf-8" src="<%=basePath%>editor/lang/zh-cn/zh-cn.js"></script>

    <style>
        .texthidden{
            width:320px;
            white-space: nowrap;/*控制单行显示*/
            overflow: hidden;/*超出隐藏*/
            text-overflow: ellipsis;/*隐藏的字符用省略号表示*/
        }
        .default-image{
            background: url("<%=basePath%>images/index-images/default.jpg");
            no-repeat:50% 50%;
        }
    </style>
</head>
<body>

<c:import url="header.jsp"></c:import>

<!--tags-->

<div><script id="editor" type="text/plain" style="width:760px;height:220px;"></script></div><br>

<div class="col-12 py-3 text-center" style="width:134px; height:30px;">
    <form id="form1" action="<%=basePath %>shuDong/InsertBlogComment.action">
        <%--判断内容是否为空--%>
        <input type="hidden" name="content1" id="hidden1"/>
            <%--获取内容--%>
        <input type="hidden" name="content2" id="hidden2"/>
    </form>
    <span onclick="closeLayer()"><a href="javascript:void(0)" onclick="hasContent()" class="btn contact_btn">发布</a></span>

</div><br>

<script type="text/javascript">

    var ue = UE.getEditor('editor');//editor文本框显示

    //判断编辑器里是否有内容以及获取带有格式的内容
    function hasContent() {
        var arr = [];
        arr.push(UE.getEditor('editor').hasContents());
        // var str1= arr.join("\n");
        $("#publishComment").html(arr);

        var arr1 = [];
        arr1.push(UE.getEditor('editor').getPlainTxt());
        // var str2= arr1.join('\n');
        $("#hidden1").val(arr);
        $("#hidden2").val(arr1);

        document.getElementById("form1").submit();
    }

    //关闭弹窗
    function closeLayer(){
        var arr = [];
        arr.push(UE.getEditor('editor').hasContents());

        if(arr=="false"){
            confirm("还没有填写任何信息哦");
        }
        parent.layer.closeAll();
        window.parent.location.reload();
    }
</script>


</body>

<script src="<%=basePath%>js/index-js/jquery.min.js"></script>
<script src="<%=basePath%>js/index-js/owl.carousel.min.js"></script>
<!--<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>-->
<script src="<%=basePath%>js/index-js/tether.min.js"></script>
<!-- Waypoints -->
<script src="<%=basePath%>js/index-js/jquery.waypoints.min.js"></script>
<!-- Main -->
</html>

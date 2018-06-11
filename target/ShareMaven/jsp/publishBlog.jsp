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
        var blogFlag = $('input:radio[name="blogFlag"]:checked').val();
        var blogFlag = $('input:radio[name="essayFlag"]:checked').val();

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
            var blogFlag = $('#f1 input[name="blogFlag"]:checked ').val();
            var essayFlag = $('#f2 input[name="essayFlag"]:checked ').val();
            $("#hidden3").val(blogFlag);
            $("#hidden4").val(essayFlag);

            document.getElementById("form1").submit();
        }
    </script>

</head>
<body>

<!--tags-->
<div>

    <div class="fh5co_tags_all">
        <a href="#" class="fh5co_tagg">音乐</a>
        <a href="#" class="fh5co_tagg">旅行</a>
        <a href="#" class="fh5co_tagg">美食</a>
        <a href="#" class="fh5co_tagg">手绘</a>
        <a href="#" class="fh5co_tagg">书籍</a>
        <a href="#" class="fh5co_tagg">手工DIY</a>
        <a href="#" class="fh5co_tagg">家居</a>
        <a href="#" class="fh5co_tagg">设计</a>
        <a href="#" class="fh5co_tagg">插花</a>
        <a href="#" class="fh5co_tagg">搭配</a>
        <a href="#" class="fh5co_tagg">美妆</a>
        <a href="#" class="fh5co_tagg">拍照</a>
        <a href="#" class="fh5co_tagg">更多...</a>
    </div>

    <form id="form1" action="<%=basePath %>shuDong/publishAllType.action">
        <%--判断内容是否为空--%>
        <input type="hidden" name="content1" id="hidden1"/>
        <%--获取内容--%>
        <input type="hidden" name="content2" id="hidden2"/>
        <input type="hidden" name="content3" id="hidden3"/>
        <input type="hidden" name="content4" id="hidden4"/>
            <div style="margin-top:10px;margin-left:100px;font-size:18px;">
        <div id="f1" class="radio" style="float: left; margin-right: 50px;">
            <input type="radio" name="blogFlag" id="optionsRadios1" value="blog" checked>发布博客
            <input type="radio" name="blogFlag" id="optionsRadios2" value="shuDong">发布树洞
        </div>
        <div id="f2" class="radio">
            <input type="radio" name="essayFlag" id="optionsRadios3" value="longText">发布文本
            <input type="radio" name="essayFlag" id="optionsRadios4" value="shortText" checked>随便写写
        </div>
            </div>
    </form>
    <!--demo-->

    <script id="editor" type="text/plain" style="width: 90%;height:500px;margin: 0 auto;"></script></div>
<div class="col-12 py-3 text-center">
  <a href="#" class="btn contact_btn" onclick="hasContent()">发布</a>
</div>



</body>
</html>

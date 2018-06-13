<%--
  Created by IntelliJ IDEA.
  User: bin
  Date: 2018/6/12
  Time: 19:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script type="text/javascript" charset="utf-8" src="../static/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="../static/ueditor/ueditor.all.min.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="../static/ueditor/lang/zh-cn/zh-cn.js"></script>
    <title>Title</title>
</head>
<body>
<form action="" method="post">
    <!-- 加载编辑器的容器 -->
    <script id="container" name="content" type="text/plain">
            这里写你的初始化内容
        </script>
</form>




<script type="text/javascript">
    var ue = UE.getEditor('container');
</script>
</body>
</html>

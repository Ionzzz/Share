<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <title>管理员账户登录</title>
    <meta name="keywords" content="share" />
    <meta name="description" content="share" />
    <link href="<%=basePath%>jsp/manage/assets/css/bootstrap.css" rel="stylesheet" />
    <script src="<%=basePath%>jsp/manage/assets/js/jquery-1.10.2.js"></script>
</head>

<body class="login-bg">
<div class="main ">
    <script>
        function login() {
            var name = $("#mngname").val();
            var pass = $("#password").val();
            $.ajax({
                url:"${pageContext.request.contextPath }/mngAccount/login.action",
                data:{
                    "name":name,
                    "pass":pass,
                },
                success:function(bool){
                    if(bool){
                        alert("登录成功");
                        window.location.href = "<%=basePath%>jsp/manage/index.jsp";
                    }
                    else{
                        alert("用户名或密码错误");
                    }
                },
                error:function(){
                    alert("后台繁忙");
                }
            })
        }
    </script>
    <!--登录-->

        <div class="container">
            <div style="position: absolute;left: 400px">
                <p style='color:red;font-size:30px;'>管理员登录</p>

            </div>

            <hr />
            <hr />

            <form class="form-horizontal">
                <div class="form-group">
                    <label for="mngname" class="col-sm-2 control-label">账户名:</label>
                    <div class="col-sm-4">
                        <input type="text" class="form-control" name="mngname" id="mngname">
                    </div>
                </div>

                <div class="form-group">
                    <label for="password" class="col-sm-2 control-label">密码:</label>
                    <div class="col-sm-4">
                        <input type="password"  class="form-control" name="password" id="password">
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="button" class="btn btn-default" onclick="login()">登录</button>
                    </div>
                </div>
            </form>

    </div>


    <div class="popupDom">
        <div class="popup text-default">
        </div>
    </div>
</div>
</body>
</html>

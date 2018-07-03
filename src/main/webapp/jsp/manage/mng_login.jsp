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
    <style>
        body {
            background-image: url('<%=basePath%>images/login-images/wizard-city.jpg');
            -webkit-font-smoothing: antialiased;
            font: normal 14px Roboto,arial,sans-serif;
        }

        .container {
            padding: 25px;
            position: fixed;
        }
        .form-login {
            background-color: #EDEDED;
            padding-top: 10px;
            padding-bottom: 20px;
            padding-left: 20px;
            padding-right: 20px;
            border-radius: 15px;
            border-color:#d2d2d2;
            border-width: 5px;
            box-shadow:0 1px 0 #cfcfcf;
        }

        h2 {
            border:0 solid #fff;
            border-bottom-width:1px;
            padding-bottom:10px;
            text-align: center;
        }

        .form-control {
            border-radius: 10px;
        }

        .wrapper {
            text-align: center;
        }

    </style>
</head>

<body>
    <script>
        function login() {
            var name = $("#userName").val();
            var pass = $("#userPassword").val();
            if("" == name){
                alert("账户名不能为空");
            }else if("" == pass){
                alert("密码不能为空");
            }
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

    <div class="container" style=" margin-top: 150px;margin-left: -60px">
        <div class="row">
            <div class="col-md-offset-5 col-md-5">
                <div class="form-login">
                    <h2>管理员登录</h2>
                    <div class="">
                    <input type="text" id="userName" class="form-control input-sm chat-input" placeholder="输入管理员账号" />
                    </br>
                    <input type="password" id="userPassword" class="form-control input-sm chat-input" placeholder="输入账号密码" />
                    </br>
                    <div class="wrapper">
            <span class="group-btn">
                <button class="btn btn-primary btn-md" onclick="login();">登录 <i class="fa fa-sign-in"></i></button>
            </span>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="popupDom">
        <div class="popup text-default">
        </div>
    </div>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Danmon
  Date: 2018/5/29
  Time: 20:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>密码登录页面</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

    <link rel="apple-touch-icon" sizes="76x76" href="<%=basePath%>images/login-images/apple-icon.png" />
    <link rel="icon" type="image/png" href="<%=basePath%>images/login-images/favicon.png" />

    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

    <!-- CSS Files -->
    <link href="<%=basePath%>css/login-css/bootstrap.min.css" rel="stylesheet" />
    <link href="<%=basePath%>css/login-css/material-bootstrap-wizard.css" rel="stylesheet" />

    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="<%=basePath%>css/login-css/demo.css" rel="stylesheet" />
    <link rel="stylesheet" href="<%=basePath%>css/login-css/jigsaw.css">
</head>
<body>
<div class="image-container set-full-height" style="background-image: url('<%=basePath%>images/login-images/wizard-city.jpg')">

    <!--   Big container   -->
    <div class="container">
        <div class="row">
            <div class="col-sm-8 col-sm-offset-2">
                <!--      Wizard container        -->
                <div class="wizard-container">
                    <div class="card wizard-card" data-color="orange" id="wizard">
                        <form action="" method="">
                            <!--        You can switch " data-color="rose" "  with one of the next bright colors: "blue", "green", "orange", "purple"        -->
                            <div class="wizard-header">
                                <h3 class="wizard-title">
                                    Share
                                </h3>
                                <h5>欢迎来到Share</h5>
                            </div>
                            <div class="wizard-navigation">
                                <ul>

                                    <li><a href="#facilities" data-toggle="tab">登录</a></li>

                                </ul>
                            </div>

                            <div class="tab-content">

                                <div class="tab-pane" id="facilities">
                                    <h4 class="info-text">快回到自己的小窝吧</h4>
                                    <div class="row">


                                        <div class="col-sm-7 col-sm-offset-2">
                                            <div class="form-group label-floating">
                                                <label class="control-label">手机号或邮箱</label>
                                                <input type="text" class="form-control" id="">

                                            </div>
                                        </div>

                                        <div class="col-sm-7 col-sm-offset-2">
                                            <div class="form-group label-floating">
                                                <label class="control-label">输入密码</label>
                                                <input type="text" class="form-control" id="">
                                            </div>
                                        </div>

<%--
                                        <div class="col-sm-3">
                                            <div class="form-group label-floating form-control">
                                                <a style="color:orange" href="">获取短信验证码</a>
                                            </div>
                                        </div>
--%>

                                    </div>

                                    <div class="row">
                                        <div class="col-sm-5 col-sm-offset-2">
                                            <a style="color:orange" href="login_verify.jsp">手机验证码登陆</a>
                                        </div>
                                        <div class="col-sm-5">
                                            <a style="color:orange" href="login_forget.jsp">忘记密码?</a>
                                        </div>
                                    </div>
                                </div>

                            </div>



                            <div class="row" style="margin-top:-3em">
                                <div class="col-sm-5 col-sm-offset-3">
                                    <div id="captcha" style="position: relative"></div>
                                    <div id="msg"></div>
                                </div>
                                <div class="col-sm-4"></div>
                            </div>



                            <div class="wizard-footer">
                                <div class="pull-right">

                                    <input type='button' class='btn btn-finish btn-fill btn-primary btn-wd' name='finish' style="background-color:#ff9800" value='登录'
                                           onclick="window.location.href='index.jsp'"
                                    />
                                </div>
                                <div class="pull-left">

                                </div>
                                <div class="clearfix">
                                </div>
                            </div>
                        </form>
                    </div>
                </div> <!-- wizard container -->
            </div>
        </div> <!-- row -->
    </div> <!--  big container -->





    <div class="footer">
        <div class="container text-center">

        </div>
    </div>
</div>

</body>
<!--   Core JS Files   -->
<script src="<%=basePath%>js/login-js/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="<%=basePath%>js/login-js/bootstrap.min.js" type="text/javascript"></script>
<script src="<%=basePath%>js/login-js/jquery.bootstrap.js" type="text/javascript"></script>

<!--  Plugin for the Wizard -->
<script src="<%=basePath%>js/login-js/material-bootstrap-wizard.js"></script>

<!--  More information about jquery.validate here: http://jqueryvalidation.org/	 -->
<script src="<%=basePath%>js/login-js/jquery.validate.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/login-js/jigsaw.js"></script>
<script type="text/javascript">
    jigsaw.init(document.getElementById('captcha'), function () {
        document.getElementById('msg').innerHTML = '验证成功！'
    })
</script>

</html>

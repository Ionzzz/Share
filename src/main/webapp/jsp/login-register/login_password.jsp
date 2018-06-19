<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    <c:set var="myCookie" value="${cookie.userInfo.value }"></c:set>
    <c:set var="np" value='${fn:split(myCookie,"-")}'></c:set>

    <!--   Big container   -->
    <div class="container">
        <div class="row">
            <div class="col-sm-8 col-sm-offset-2">
                <!--      Wizard container        -->
                <div class="wizard-container">
                    <div class="card wizard-card" data-color="orange" id="wizard">
                        <form action="<%=basePath%>userLogin/loginpass.action" method="post">
                            <!--        You can switch " data-color="rose" "  with one of the next bright colors: "blue", "green", "orange", "purple"        -->
                            <div class="wizard-header">
                                <h3 class="wizard-title">
                                    Share
                                </h3>
                                <h5>欢迎来到Share</h5>
                            </div>
                            <div class="wizard-navigation">
                                <ul>

                                    <li><a href="#facilities" data-toggle="tab">密码登录</a></li>

                                </ul>
                            </div>

                            <div class="tab-content">

                                <div class="tab-pane" id="facilities">
                                    <h4 class="info-text">快回到自己的小窝吧</h4>

                                    <div class="row">
                                        <div class="col-sm-5 col-sm-offset-3">
                                            <div class="form-group label-floating">
                                                <label class="control-label">手机号或邮箱</label>
                                                <input type="text" class="form-control" id="input" name="input" value='${np[0] }'/>
                                            </div>
                                        </div>
                                        <div class="col-sm-4" style="padding-top: 40px">
                                            <c:if test="${param.info == 0 }">
                                                <span id="returnInput1" style='color: red'>手机号或邮箱未注册</span>
                                            </c:if>
                                            <span><p id="returnInput"> </p></span>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-sm-5 col-sm-offset-3">
                                            <div class="form-group label-floating">
                                                <label class="control-label">输入密码</label>
                                                <input type="password" class="form-control" id="pass" name="pass" value='${np[1] }'/>
                                            </div>
                                        </div>
                                        <div class="col-sm-4" style="padding-top: 40px">
                                            <c:if test="${param.info == 1 }">
                                                <span id="returnPass1" style='color: red'>密码错误</span>
                                            </c:if>
                                            <span><p id="returnPass"> </p></span>
                                        </div>
                                    </div>


                                </div>

                                <div class="row">
                                    <div class="col-sm-2 col-sm-offset-3">
                                        <a style="color:orange" href="../login_verify.jsp">验证码登陆</a>
                                    </div>
                                    <div class="col-sm-2">
                                        <div class="checkbox" style="margin-top: -2px">
                                            <label>
                                                <c:if test="${empty cookie.userInfo.value }">
                                                    <input type="checkbox" name="flag" value='1'>
                                                    <span style="color: orange">记住密码</span>
                                                </c:if>
                                                <c:if test="${not empty cookie.userInfo.value }">
                                                    <input type="checkbox" name="flag" checked="checked">
                                                    <span style="color: orange">记住密码</span>
                                                </c:if>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-sm-2">
                                        <a style="color:orange" href="../login_forget.jsp">忘记密码?</a>
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
                                    <input type='submit' class='btn btn-finish btn-login btn-fill btn-primary btn-wd' id="login" name='login'
                                           style='background-color:#ff9800' onclick="hide()" value='登录'/>
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

<script type="text/javascript">
    //检查手机号和邮箱格式
    $("#input").blur(function() {
        var input = $("#input").val();
//            alert(input);
        if(input != ""){
            $.ajax({
                type:"post",
                url:'${pageContext.request.contextPath }/userLogin/checkinput.action',
                data : {"input":input},
                dateType:'json',
                success:function (data) {
                    if(data == 0){
                        $("#returnInput1").html("<p style='color:green'></p>");
                        $("#returnInput").html("<p style='color:green'>√</p>");
                    }else if(data == 1){
                        $("#returnInput1").html("<p style='color:green'></p>");
                        $("#returnInput").html("<p style='color:red'>输入格式错误</p>");
                    }else {
                        alert("请稍后重试");
                    }
                },
                error:function (data) {
                    $("#returnInput1").html("<p style='color:green'></p>");
                    $("#returnInput").html("<p style='color:red'>后台链接错误,请稍后重试</p>");
                }
            });
        }else {
            $("#returnInput1").html("<p style='color:green'></p>");
            $("#returnInput").html("<p style='color:red'>请输入手机号或邮箱</p>");
        }
    });

    //    检查密码是否为空
    $("#pass").blur(function () {
        var pass = $("#pass").val();
        if(pass == ""){
            $("#returnPass1").html("<p style='color:green'></p>");
            $("#returnPass").html("<p style='color:red'>密码不能为空</p>");
        }else if(pass.indexOf(' ')!=-1){
            $("#returnPass1").html("<p style='color:green'></p>");
            $("#returnPass").html("<p style='color:red'>密码不能含空格</p>");
        }else {
            $("#returnPass1").html("<p style='color:green'></p>");
            $("#returnPass").html("<p style='color:green'>√</p>");
        }
    });

//    点击按钮隐藏鼠标触发事件的p内容
    function hide() {
        document.getElementById("returnInput").style.display ="none";
        document.getElementById("returnPass").style.display ="none";
    }

</script>

</html>
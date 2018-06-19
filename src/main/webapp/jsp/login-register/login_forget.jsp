<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>忘记密码</title>

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
                        <form action="<%=basePath%>userLogin/savapass.action" method="post">
                            <!--        You can switch " data-color="rose" "  with one of the next bright colors: "blue", "green", "orange", "purple"        -->

                            <div class="wizard-header">
                                <h3 class="wizard-title">
                                    Share
                                </h3>
                                <h5>欢迎来到Share</h5>
                            </div>
                            <div class="wizard-navigation">
                                <ul>

                                    <li><a href="#facilities" data-toggle="tab">验证手机号</a></li>
                                    <li><a href="#setnewpass" data-toggle="tab">设置新密码</a></li>

                                </ul>
                            </div>

                            <div class="tab-content">

                                <div class="tab-pane" id="facilities">
                                    <h4 class="info-text">通过短信验证码找回</h4>



                                    <div class="row">

                                        <div class="row">
                                            <div class="col-sm-5 col-sm-offset-3">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">请输入手机号</label>
                                                    <input type="text" class="form-control" id="input" name="phone"/>
                                                </div>
                                            </div>
                                            <div class="col-sm-4" style="padding-top: 40px">
                                                <span><p id="returnInput"> </p></span>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-sm-3 col-sm-offset-3">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">请输入6位短信验证码</label>
                                                    <input type="text" class="form-control" id="code" />
                                                </div>
                                            </div>
                                            <div class="col-sm-2">
                                                <div class="form-group label-floating form-control">
                                                    <a style="color:orange" id="btn" name="btn" href="javascript:void(0)" onclick="sendMessage()">获取短信验证码</a>
                                                    <%--<input id="btn" name="btn" value="获取短信验证码" style="color:orange" onclick="sendMessage()" />--%>
                                                </div>
                                            </div>
                                            <div class="col-sm-4" style="padding-top: 40px">
                                                <span><p id="returnCode"> </p></span>
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
                                </div>

                                <div class="tab-pane" id="setnewpass">
                                    <h5 class="info-text">请输入新密码</h5>


                                    <div class="row">
                                        <div class="col-sm-5 col-sm-offset-3">
                                            <div class="form-group label-floating">
                                                <label class="control-label">新密码</label>
                                                <input type="password" class="form-control" id="pass"/>
                                            </div>
                                        </div>
                                        <div class="col-sm-4" style="padding-top: 40px">
                                            <span><p id="returnPass"> </p></span>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-sm-5 col-sm-offset-3">
                                            <div class="form-group label-floating">
                                                <label class="control-label">再次输入新密码</label>
                                                <input type="password" class="form-control" id="repass" name="repass" AUTOCOMPLETE="off"/>
                                            </div>
                                        </div>
                                        <div class="col-sm-4" style="padding-top: 40px">
                                            <span><p id="returnRepass"> </p></span>
                                        </div>
                                    </div>

                                </div>

                            </div>

                            <div style="text-align: center">
                                <c:if test="${param.info == 0 }">
                                    <span id="returnInput1" style='color: red'>服务器错误，请稍后重试</span>
                                </c:if>
                                <c:if test="${param.info == 1 }">
                                    <span id="returnInput1" style='color: red'>两次密码输入不同</span>
                                </c:if>
                                <c:if test="${param.info == 2 }">
                                    <span id="returnInput1" style='color: red'>手机号不能为空</span>
                                </c:if>
                        </div>

                            <div class="wizard-footer">
                                <div class="pull-right">
                                    <input type='button' class='btn btn-next btn-select btn-fill btn-primary btn-wd' name='select' id="select" style='background-color:#ff9800' value='确定'/>
                                    <input type='submit' class='btn btn-finish btn-login btn-fill btn-primary btn-wd' name='login' id="login" style='background-color:#ff9800' value='完成并登录' />
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
<script>

    //检查手机号格式
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
                        $("#returnInput").html("<p style='color:green'>输入格式正确</p>");
                    }else if(data == 1){
                        $("#returnInput").html("<p style='color:red'>输入格式错误</p>");
                    }else {
                        alert("请稍后重试");
                    }
                },
                error:function (data) {
                    $("#returnInput").html("<p style='color:red'>后台链接错误,请稍后重试</p>");
                }
            });
        }else {
            $("#returnInput").html("<p style='color:red'>请输入手机号</p>");
        }
    });

    //   判断手机号是否注册-->发送验证码
    var sms="";
    $("#btn").click(function () {
        var input=$("#input").val();
//        alert(input);
        if(input!="") {
            $.ajax({
                url:"${pageContext.request.contextPath}/userLogin/checkphone.action",
                type:"post",
                data:{"phone":input},
                success:function(data){
                    if(data ==0){
//                        手机号未注册
                        $("#returnInput").html("<p style='color:red'>该手机号未注册</p>");
                    }else {
//                        手机号已注册 --> 发送验证码 --> 登录
                        $("#returnInput").html("<p style='color:green'>√</p>");
                        $.ajax({
                            url:"${pageContext.request.contextPath}/user/sendSMS.action",
                            type:"post",
                            data:{"phone":input},
                            success:function(result){
                                sms=result;
                                alert(sms);
                            }
                        });
                    }
                }
            });
        }else{
            $("#returnInput").html("<p style='color:red'>请输入手机号</p>");
            return false;
        }
    });



    //    下一步 --> 判断验证码是否输入正确
    $("#select").click(function(){
        var code=$("#code").val();
        if(code==""){
            $("#returnCode").html("<p style='color:red'>请输入验证码</p>");
            ("#select").html("<input type='button' class='btn btn-select btn-fill btn-primary btn-wd' name='select' id='select' style='background-color:#ff9800' value='确定'/>");
        }else{
            if(sms==code){
                $("#returnCode").html("<p style='color:green'>√</p>");
                <%--location.href="<%=basePath%>index/main.action";--%>
            }else{
                $("#returnCode").html("<p style='color:red'>验证码错误</p>");
                ("#select").html("<input type='button' class='btn btn-select btn-fill btn-primary btn-wd' name='select' id='select' style='background-color:#ff9800' value='确定'/>");
            };
        };
    });

    //    检查密码是否为空
    $("#pass").blur(function () {
        var pass = $("#pass").val();
        if(pass == ""){
            $("#returnPass").html("<p style='color:red'>密码不能为空</p>");
        }else if(pass.indexOf(' ')!=-1){
            $("#returnPass").html("<p style='color:red'>密码不能含空格</p>");
        }else {
            $("#returnPass").html("<p style='color:green'>√</p>");
        }
    });

//    验证再次输入与输入是否相同
    $("#repass").blur(function () {
        var pass = $("#pass").val();
        var repass = $("#repass").val();
        if(pass == "") {
            $("#returnPass").html("<p style='color:red'>密码不能为空</p>");
        }else {
            if (pass == repass){
                $("#returnRepass").html("<p style='color:green'>√</p>");
            }else{
                $("#returnRepass").html("<p style='color:red'>两次输入不一致</p>");
            }
        }
    });




</script>

</html>

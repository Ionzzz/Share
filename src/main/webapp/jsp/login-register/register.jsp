<%--
  Created by IntelliJ IDEA.
  User: Danmon
  Date: 2018/5/29
  Time: 20:05
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
    <title>注册页面</title>
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
                        <form id="signupForm" action="" method="">
                            <!--        You can switch " data-color="rose" "  with one of the next bright colors: "blue", "green", "orange", "purple"        -->

                            <div class="wizard-header">
                                <h3 class="wizard-title">
                                    Share
                                </h3>
                                <h5>欢迎来到Share</h5>
                            </div>
                            <div class="wizard-navigation"1>
                                <ul>
                                    <li><a href="#location" data-toggle="tab">注册</a></li>
                                    <li><a href="#facilities" data-toggle="tab">完善注册信息</a></li>
                                    <li><a href="#type" data-toggle="tab">选择话题</a></li>
                                    <%--<li><a href="#facilities" data-toggle="tab">登录</a></li>--%>
                                </ul>
                            </div>

                            <div class="tab-content">

                                <%--注册--%>
                                <div class="tab-pane" id="location">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <h4 class="info-text"> 注册即代表同意《Share协议》《隐私政策》
                                                注册机构号</h4>
                                        </div>


                                        <div class="row">
                                            <div class="col-sm-5 col-sm-offset-3">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">请输入手机号</label>
                                                    <input type="text" class="form-control" id="phone"/>
                                                </div>
                                            </div>
                                            <div class="col-sm-4" style="padding-top: 40px">
                                                <span><p id="returnPhone"> </p></span>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-sm-3 col-sm-offset-3">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">输入6位短信验证码</label>
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

                                        <div class="row">
                                            <div class="col-sm-3 col-sm-offset-3">
                                                <a style="color:orange" href="javascript:void(0)" onclick="sendSms();">接收语音验证码</a>
                                            </div>
                                            <div class="col-sm-3">
                                                <a style="color:orange" href="javascript:void(0)" onclick="sendSms();">接收语音验证码</a>
                                            </div>

                                        </div>


                                    </div>
                                </div>


                                <%--完善用户信息--%>
                                    <div class="tab-pane" id="facilities">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <h4 class="info-text">欢迎来到Share</h4>
                                            </div>


                                            <div class="row">
                                                <div class="col-sm-5 col-sm-offset-3">
                                                    <div class="form-group label-floating">
                                                        <label class="control-label">用户名</label>
                                                        <input type="text" class="form-control" id="nickname"/>
                                                    </div>
                                                </div>
                                                <div class="col-sm-4" style="padding-top: 40px">
                                                    <span><p id="returnNickname"> </p></span>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-5 col-sm-offset-3">
                                                    <div class="form-group label-floating">
                                                        <label class="control-label">邮箱</label>
                                                        <input type="text" class="form-control" id="email"/>
                                                    </div>
                                                </div>
                                                <div class="col-sm-4" style="padding-top: 40px">
                                                    <span><p id="returnEmail"> </p></span>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-sm-5 col-sm-offset-3">
                                                    <div class="form-group label-floating">
                                                        <label class="control-label">密码</label>
                                                        <input type="password" class="form-control" id="pass" />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4" style="padding-top: 40px">
                                                    <span><p id="returnPass"> </p></span>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-sm-5 col-sm-offset-3">
                                                    <div class="form-group label-floating">
                                                        <label class="control-label">确认密码</label>
                                                        <input type="password" class="form-control" id="repass" />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4" style="padding-top: 40px">
                                                    <span><p id="returnRepass"> </p></span>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-sm-6 col-sm-offset-4">
                                                    接受Share的<a style="color:orange" href="javascript:void(0)" onclick="sendSms();">《服务条例》</a>
                                                </div>
                                            </div>


                                        </div>
                                    </div>





                                <div class="tab-pane" id="type">
                                    <h4 class="info-text">你对以下哪些感兴趣呢？ </h4>
                                    <div class="row">
                                        <div class="col-sm-11">

                                            <div class="col-sm-1 col-sm-offset-1">
                                                <div class="choice" data-toggle="wizard-checkbox" rel="tooltip" title="如果你喜欢读书，可以点这个哦">
                                                    <input type="checkbox" name="type" value="6">
                                                    <div class="icon">
                                                        <i class="material-icons">book</i>
                                                        <h6>书籍</h6>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-sm-1 col-sm-offset-1">
                                                <div class="choice" data-toggle="wizard-checkbox" rel="tooltip" title="如果你喜欢音乐，可以点这个哦">
                                                    <input type="checkbox" name="type" value="2">
                                                    <div class="icon">
                                                        <i class="material-icons">music_note</i>
                                                        <h6>音乐</h6>
                                                    </div>

                                                </div>
                                            </div>

                                            <div class="col-sm-1 col-sm-offset-1">
                                                <div class="choice" data-toggle="wizard-checkbox" rel="tooltip" title="如果你喜欢美食，可以点这个哦">
                                                    <input type="checkbox" name="type" value="4">
                                                    <div class="icon">
                                                        <i class="material-icons">cake</i>
                                                        <h6>美食</h6>
                                                    </div>

                                                </div>
                                            </div>

                                            <div class="col-sm-1 col-sm-offset-1">
                                                <div class="choice" data-toggle="wizard-checkbox" rel="tooltip" title="如果你喜欢拍照，可以点这个哦">
                                                    <input type="checkbox" name="type" value="1">
                                                    <div class="icon">
                                                        <i class="material-icons">monochrome_photos</i>
                                                        <h6>拍照</h6>
                                                    </div>

                                                </div>
                                            </div>

                                            <div class="col-sm-1 col-sm-offset-1">
                                                <div class="choice" data-toggle="wizard-checkbox" rel="tooltip" title="如果你喜欢手绘，可以点这个哦">
                                                    <input type="checkbox" name="type" value="5">
                                                    <div class="icon">
                                                        <i class="material-icons">pan_tool</i>
                                                        <h6>手绘</h6>
                                                    </div>

                                                </div>
                                            </div>

                                            <div class="col-sm-1 col-sm-offset-1">
                                                <div class="choice" data-toggle="wizard-checkbox" rel="tooltip" title="如果你喜欢插花，可以点这个哦">
                                                    <input type="checkbox" name="type" value="10">
                                                    <div class="icon">
                                                        <i class="material-icons">local_florist</i>
                                                        <h6>插花</h6>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-sm-1 col-sm-offset-1">
                                                <div class="choice" data-toggle="wizard-checkbox" rel="tooltip" title="如果你喜欢家居，可以点这个哦">
                                                    <input type="checkbox" name="type" value="8">
                                                    <div class="icon">
                                                        <i class="material-icons">hotel</i>
                                                        <h6>家居</h6>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-sm-1 col-sm-offset-1">
                                                <div class="choice" data-toggle="wizard-checkbox" rel="tooltip" title="如果你喜欢旅行，可以点这个哦">
                                                    <input type="checkbox" name="type" value="3">
                                                    <div class="icon">
                                                        <i class="material-icons">tram</i>
                                                        <h6>旅行</h6>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-sm-1 col-sm-offset-1">
                                                <div class="choice" data-toggle="wizard-checkbox" rel="tooltip" title="如果你喜欢DIY，可以点这个哦">
                                                    <input type="checkbox" name="type" value="7">
                                                    <div class="icon">
                                                        <i class="material-icons">pan_tool</i>
                                                        <h6>DIY</h6>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-sm-1 col-sm-offset-1">
                                                <div class="choice" data-toggle="wizard-checkbox" rel="tooltip" title="如果你喜欢搭配，可以点这个哦">
                                                    <input type="checkbox" name="type" value="11">
                                                    <div class="icon">
                                                        <i class="material-icons">hotel</i>
                                                        <h6>搭配</h6>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-sm-1 col-sm-offset-1">
                                                <div class="choice" data-toggle="wizard-checkbox" rel="tooltip" title="如果你喜欢美妆，可以点这个哦">
                                                    <input type="checkbox" name="type" value="12">
                                                    <div class="icon">
                                                        <i class="material-icons">face</i>
                                                        <h6>美妆</h6>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-sm-1 col-sm-offset-1">
                                                <div class="choice" data-toggle="wizard-checkbox" rel="tooltip" title="如果你喜欢设计，可以点这个哦">
                                                    <input type="checkbox" name="type" value="9">
                                                    <div class="icon">
                                                        <i class="material-icons">hotel</i>
                                                        <h6>设计</h6>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>


                                </div>





                            </div>



                            <div class="wizard-footer">

                                <div class="pull-right">
                                    <input type='button' class='btn btn-next btn-register btn-fill btn-primary btn-wd' name='register' id="register" style='background-color:#ff9800' value='注册'/>
                                    <input type='button' class='btn btn-next btn-select btn-fill btn-primary btn-wd' name='select' id="select" style='background-color:#ff9800' value='确定'/>
                                    <input type='button' class='btn btn-finish btn-login btn-fill btn-primary btn-wd' name='login' id="login" style='background-color:#ff9800' value='完成并登录' />
                                </div>

                                <div class="pull-left">
                                    <%--<input type='button' class='btn btn-previous btn-fill btn-default btn-wd' name='previous' value='上一个'/>--%>
                                </div>
                                <div class="clearfix"></div>
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
    });
</script>

<script type="text/javascript">
//    注册 -- 检查手机号格式
    var phone = "";
    $("#phone").blur(function() {
//        alert("1111111");
        phone = $("#phone").val();
//            alert(phone);
        if(phone != ""){
            $.ajax({
                type:"post",
                url:'${pageContext.request.contextPath }/userLogin/checkinput.action',
                data : {"input":phone},
                dateType:'json',
                success:function (data) {
//                    alert(data);
                    if(data == 0){
                        $("#returnPhone").html("<p style='color:green'>√</p>");
                    }else if(data == 1){
                        $("#returnPhone").html("<p style='color:red'>输入格式错误</p>");
                        return false;
                    }else {
                        alert("请稍后重试");
                        return false;
                    }
                },
                error:function (data) {
                    $("#returnPhone").html("<p style='color:red'>后台链接错误,请稍后重试</p>");
                }
            });
        }else {
            $("#returnPhone").html("<p style='color:red'>请输入手机号</p>");
        }
    });


//   判断手机号是否注册-->发送验证码
    var sms="";
    $("#btn").click(function () {
        phone=$("#phone").val();
        alert(phone);
        if(phone!="") {
            $.ajax({

                url:"${pageContext.request.contextPath}/userLogin/checkphone.action",
                type:"post",
                data:{"phone":phone},
                success:function(data){
                    alert(data);
                    if(data ==0){
//                        手机号未注册 --> 发送验证码 --> 注册
                        $("#returnPhone").html("<p style='color:green'>√</p>");
                        $.ajax({
                            url:"${pageContext.request.contextPath}/user/sendSMS.action",
                            type:"post",
                            data:{"phone":phone},
                            success:function(result){
                                sms=result;
                                alert(sms);
                            }
                        });
                    }else {
//                        手机号已注册
                        $("#returnPhone").html("<p style='color:red'>该手机号已注册</p>");
                        return false;
                    }
                },
                error:function (data) {
                    $("#returnPhone").html("<p style='color:red'>后台链接错误,请稍后重试</p>");
                }
            });
        }else{
            $("#returnPhone").html("<p style='color:red'>请输入手机号</p>");
            return false;
        }
    });

//    注册
    $("#register").click(function () {
//        var input=$("#input").val();
        var  code = $("#code").val();
        if(code==""){
            $("#returnCode").html("<p style='color:red'>请输入验证码</p>");
            ("#register").html("<input type='button' class='btn btn-register btn-fill btn-primary btn-wd' name='register' id='register' style='background-color:#ff9800' value='注册'/>");
        }else if(code != sms) {
            $("#returnCode").html("<p style='color:red'>验证码不正确</p>");
            ("#register").html("<input type='button' class='btn btn-register btn-fill btn-primary btn-wd' name='register' id='register' style='background-color:#ff9800' value='注册'/>");
        }else {
            alert("注册成功");
//            ("#register").html("<input type='button' class='btn btn-register btn-fill btn-primary btn-wd' name='register' id='register' style='background-color:#ff9800' value='注册'/>");
        }
    });


//    完善注册信息 --> 判断用户名是否存在
    var nickname = "";
    $("#nickname").blur(function () {
        nickname =  $("#nickname").val();
        if(nickname != ""){
            $.ajax({
                url:"${pageContext.request.contextPath}/userLogin/checknickname.action",
                type:"post",
                data:{"nickname":nickname},
                dataType:'json',
                success:function(data){
                    if(data == 1){
                        $("#returnNickname").html("<p style='color:red'>用户名存在</p>");
                        return false;
                    }else {
                        $("#returnNickname").html("<p style='color:green'>√</p>");
                    }
                },
                error:function (data) {
                    $("#returnNickname").html("<p style='color:red'>后台链接错误,请稍后重试</p>");
                    return false;
                }
            })
        }else{
            $("#returnNickname").html("<p style='color:red'>用户名不能为空</p>");
            return false;
        }

    });

//    完善用户信息 --> 判断邮箱格式
    var email = "";
    $("#email").blur(function () {
        email = $("#email").val();
        if(email != ""){
            $.ajax({
                url:"${pageContext.request.contextPath}/userLogin/checkinput.action",
                type:"post",
                data:{"input":email},
                dataType:'json',
                success:function(data){
                    if(data == 0){
                        $("#returnEmail").html("<p style='color:green'>√</p>");
                    }else {
                        $("#returnEmail").html("<p style='color:red'>邮箱格式不正确</p>");
                        return false;
                    }
                },
                error:function (data) {
                    $("#returnEmail").html("<p style='color:red'>后台链接错误,请稍后重试</p>");
                    return false;
                }
            })
        }else {
            $("#returnEmail").html("<p style='color:red'>请输入有效的邮箱名</p>");
            return false;
        }
    });


//    完善注册信息 --> 输入密码
    var pass = "" ;
    $("#pass").blur(function () {
       pass = $("#pass").val();
       if(pass != ""){
           $("#returnPass").html("<p style='color:green'>√</p>");
       }else {
           $("#returnPass").html("<p style='color:red'>密码由8-18位字符组成，区分大小写</p>");
           return false;
       }
    });

    //    完善注册信息 --> 再次输入密码
    var repass = "";
    $("#repass").blur(function () {
        repass = $("#repass").val();
        if(repass != ""){
            if(pass == repass){
                $("#returnRepass").html("<p style='color:green'>√</p>");
            }else {
                $("#returnRepass").html("<p style='color:red'>与密码不同</p>");
                return false;
            }
        }else {
            $("#returnRepass").html("<p style='color:red'>不能为空</p>");
            return false;
        }
    });

//    完善注册信息 --> 确定并传数据库
    $("#select").click(function () {
//        alert("aaa");
//        if(input != "" && nickname != "" && email != "" && pass != "" && repass != ""){
        if(nickname == ""){
            $("#returnNickname").html("<p style='color:red'>用户名不能为空</p>");
            ("#select").html("<input type='button' class='btn btn-select btn-fill btn-primary btn-wd' name='select' id='select' style='background-color:#ff9800' value='确定'/>");
        }
        if(email == ""){
            $("#returnEmail").html("<p style='color:red'>请输入有效的邮箱名</p>");
            ("#select").html("<input type='button' class='btn btn-select btn-fill btn-primary btn-wd' name='select' id='select' style='background-color:#ff9800' value='确定'/>");
        }
        if(pass == ""){
            $("#returnPass").html("<p style='color:red'>密码不能为空</p>");
            ("#select").html("<input type='button' class='btn btn-select btn-fill btn-primary btn-wd' name='select' id='select' style='background-color:#ff9800' value='确定'/>");
        }
        if(repass == ""){
            $("#returnRepass").html("<p style='color:red'>不能为空</p>");
            ("#select").html("<input type='button' class='btn btn-select btn-fill btn-primary btn-wd' name='select' id='select' style='background-color:#ff9800' value='确定'/>");
        }
//        alert("aaaaa");
        ("#select").html("<input type='button' class='btn btn-next btn-select btn-fill btn-primary btn-wd' name='select' id='select' style='background-color:#ff9800' value='确定'/>");
        $.ajax({
            url:"${pageContext.request.contextPath}/userLogin/regist.action",
            type:"post",
            dataType:'json',
            data:{
                "phone":phone,
                "nickname":nickname,
                "email":email,
                "pass":pass
            },
            success:function(data){
                alert(data);
                if(data){
//                        $("#register").html("<input type='button' class='btn btn-next btn-register btn-fill btn-primary btn-wd' name='register' id=\"register\" style='background-color:#ff9800' value='注册'/>");
                    alert("注册成功");
                }else {
                    ("#select").html("<input type='button' class='btn btn-select btn-fill btn-primary btn-wd' name='select' id='select' style='background-color:#ff9800' value='确定'/>");
                }
            },
            error:function (data) {
               alert("后台链接错误,请稍后重试");
                ("#select").html("<input type='button' class='btn btn-select btn-fill btn-primary btn-wd' name='select' id='select' style='background-color:#ff9800' value='确定'/>");
            }
        })
    });

//    选择标签
    $(function(){
        $("#login").click(function() {
            lable = $("input:checkbox[name='type']:checked").map(function(index,elem) {
                return $(elem).val();
            }).get().join(',');
            alert("选中的checkbox的值为："+lable);
            $.ajax({
                url:"${pageContext.request.contextPath}/userLogin/lable.action",
                type:"post",
                data:{"lable":lable},
                dataType:'json',
                success:function(data){
                    alert(data);
                    if(data){
                        alert("选择成功");
                        location.href="../";
                    }else {
                        alert("不能获取您的用户信息");
                    }
                },
                error:function (data) {
                    alert("服务器故障，请稍后重试");
                }
            })
        });
    });


</script>



</html>



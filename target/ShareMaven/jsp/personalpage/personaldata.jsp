<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: Danmon
  Date: 2018/5/29
  Time: 21:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
    <title>个人资料</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Great Taste Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //for-mobile-apps -->
    <link href="<%=path%>/css/personal-css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="<%=path%>/css/personal-css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- js -->
    <script src="<%=path%>/js/personal-js/jquery-1.11.1.min.js"></script>
    <!-- //js -->
    <link href='<%=path%>/css/personal-css/person1.css' rel='stylesheet' type='text/css'>
    <link href='<%=path%>/css/personal-css/person2.css' rel='stylesheet' type='text/css'>
    <link href='<%=path%>/css/personal-css/person3.css' rel='stylesheet' type='text/css'>

    <link href="<%=path%>/css/index-css/style_1.css" rel="stylesheet" type="text/css"/>
    <link href="<%=path%>/css/index-css/main.css" rel="stylesheet">
    <link href='<%=path%>/css/index-css/nav_font.css' rel='stylesheet' type='text/css'>

    <%--时间插件--%>
    <script type="text/javascript" src="<%=path%>/My97DatePicker/WdatePicker.js"></script>

    <%--省市插件--%>
    <script src="<%=path%>/bootstrap/js/bootstrap.js"></script>
    <script src="<%=path%>/jQueryDistpicker/js/distpicker.data.js"></script>
    <script src="<%=path%>/jQueryDistpicker/js/distpicker.js"></script>
    <script src="<%=path%>/jQueryDistpicker/js/main.js"></script>

</head>
<body>



<header id="header" style="opacity: 0.7;">

    <div id="header-top">
        <div class="wrapper clearfix">
            <nav id="navigation">
                <ul class="menu">
                    <li>
                        <a href="../index.jsp">首页</a>
                        <ul>
                            <li class="current-menu-item"><a href="../index.jsp">Home Version 1</a></li>
                            <li><a href="#">Home Version 2</a></li>
                            <li><a href="#">Home Version 3</a></li>
                            <li><a href="#">Home Version 4</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="../new.jsp">最新</a>
                        <ul>
                            <li><a href="../single.jsp">Right Sidebar</a></li>
                            <li><a href="#">Left Sidebar</a></li>
                            <li><a href="#">No Sidebar</a></li>
                        </ul>
                    </li>
                    <li><a href="../topic.jsp">话题</a></li>
                    <li><a href="../single.jsp">发布</a></li>
                    <li><a href="../treehole.jsp">树洞</a></li>
                    <li><a href="../about.jsp">关于我们</a></li>
                    <li><a href="../contactUs.jsp">联系我们</a></li>
                    <%--class="current-menu-item"--%>
                </ul><!-- .menu -->
            </nav><!-- #navigation -->
            <div id="navigation-hamburger">
                <span class="navigation-hamburger-hook"><span class="fa fa-reorder"></span></span>
                <select>
                    <option value="#">- Select -</option>
                    <!-- automatically populated based on #navigation -->
                </select>
            </div><!-- #navigation-hamburger -->
            <div id="header-search">
                <div class="header-search-inner">
                    <form method="get" action="">
                        <input type="text" name="s" placeholder="Search and hit enter" />
                    </form>
                    <span class="header-search-icon"><span class="fa fa-search"></span></span>
                </div><!-- .search-form-wrapper -->
            </div><!-- #header-search -->

        </div><!-- .wrapper -->
    </div><!-- #header-top -->
</header>

<!-- banner-body -->
<div class="banner-body">
    <div class="container">
        <div class="banner-body-content">
            <div class="col-xs-3 banner-body-left">
                <div class="logo">
                    <h1><a href="/ShareMaven/personalpage/personal.action"><img src="<%=path%>/img${userinfo.userimg}" style="width: 80px; height: 80px"> <span>${userinfo.usernickname}</span></a></h1>
                </div>
                <div class="top-nav">
                    <nav class="navbar navbar-default">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                <span class="sr-only"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>

                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
                            <nav class="stroke">
                                <ul class="nav navbar-nav">
                                    <li><a href="/ShareMaven/personalpage/personal.action" class="hvr-underline-from-left"><i class="home1"></i>我的主页</a></li>
                                    <li><a href="/ShareMaven/personalpage/picture.action" class="hvr-underline-from-left"><i class="picture1"></i>相册</a></li>
                                    <li><a href="/ShareMaven/personalpage/dynamic.action" class="hvr-underline-from-left"><i class="edit1"></i>我的动态</a></li>
                                    <li class="active"><a href="/ShareMaven/personalpage/data.action"><i class="text-size"></i>个人资料</a></li>
                                </ul>
                            </nav>
                        </div>
                        <!-- /.navbar-collapse -->
                    </nav>
                </div>
                <div class="latest-news">

                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingOne">
                                <h4 class="panel-title">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        我的点评
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne" style="margin-top: 8px;">
                                <div class="panel-body" style="border: solid 1px;padding: 0">
                                    <div class="zan" style="float:left;">
                                        <div class="pics" style="float:left; height: 80px;width: 80px;">
                                            <a href="#">
                                                <img src="<%=path%>/img${commentuser.get(0).userimg}">
                                            </a>
                                        </div>
                                        <div class="content" style="float:left; height: 80px;width: 149px;padding:0;background-color:#d3d3d3">
                                            <div class="nickname" style="padding: 0;">
                                                <p>
                                                    <a href="#" style="float: left;margin-left: 5px; margin-top: -15px">
                                                        <strong>${commentuser.get(0).usernickname}</strong>
                                                    </a>
                                                </p>
                                                <P style="width:150px;height:50px;overflow: hidden;">
                                                    <a href="#" style="color: #000000;margin-left: 5px;float: left">
                                                        ${comment.get(0).blogcontent}
                                                    </a>
                                                </P>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="more" style="width:229px;float: left;text-align: center;border-top: solid 1px">
                                        <a href="#">
                                            查看更多
                                        </a>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingTwo">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse"
                                       data-parent="#accordion" href="#collapseTwo"
                                       aria-expanded="false" aria-controls="collapseTwo">
                                        我的赞
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo" style="margin-top: 8px;">
                                <div class="panel-body" style="border: solid 1px;padding: 0">
                                    <div class="zan" style="float:left;">
                                        <div class="pics" style="float:left; height: 80px;width: 80px;">
                                            <a href="#">
                                                <img src="<%=path%>/img${zanuser.get(0).userimg}">
                                            </a>
                                        </div>
                                        <div class="content" style="float:left; height: 80px;width: 149px;padding:0;background-color:#d3d3d3">
                                            <div class="nickname" style="padding: 0;">
                                                <p>
                                                    <a href="#" style="float: left;margin-left: 5px; margin-top: -15px">
                                                        <strong>${zanuser.get(0).usernickname}</strong>
                                                    </a>
                                                </p>
                                                <P style="width:150px;height:50px;overflow: hidden;">
                                                    <a href="#" style="color: #000000;margin-left: 5px;float: left">
                                                        ${zan.get(0).blogcontent}
                                                    </a>
                                                </P>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="more" style="width:229px;float: left;text-align: center;border-top: solid 1px">
                                        <a href="#">
                                            查看更多
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingThree">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                        相册
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                <div class="panel-body">
                                    <div class="pic">
                                        <c:forEach items="${userblog}" var="blogs" begin="0" end="3">
                                            <div class="col-md-6" style="height:90px;overflow: hidden">
                                                <a href="#">
                                                    <img src="<%=basePath%>${blogs.pics.pic}" style="height:80px; width:80px;">
                                                </a>
                                                <p>&nbsp;</p>
                                            </div>
                                        </c:forEach>
                                        <div class="col-md-7">
                                            &nbsp;
                                        </div>
                                        <div class="col-md-5">
                                            <a href="#">>>more</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>
            </div>

        <script src="<%=path%>/js/personal-js/jquery.wmuSlider.js"></script>
                <script>
                    $('.example1').wmuSlider();
                </script>

            <script type="text/javascript">

//                    jquery加文本框修改内容
                    $(function() {
                    //获取class为caname的元素
                        $(".changeContent").click(function() {
//                            var td=$(".content");
                            var td = $(this).prev();
                            var a = td.text();
                            var txt = a.replace(/[ ]/g,"");   //清除空格
                            var input = $("<input type='text'value='"+txt+"'/>");
                            td.html(input);
                            input.click(function() { return false; });
                    //获取焦点
                            input.trigger("focus");
                    //文本框失去焦点后提交内容，重新变为文本
                            input.blur(function() {
                                var newtxt = $(this).val();
                    //判断文本有没有修改
                                if (newtxt != txt) {
                                    td.html(newtxt);
                                    /*
                                    *不需要使用数据库的这段可以不需要
                                    var caid = $.trim(td.prev().text());
                                    //ajax异步更改数据库,加参数date是解决缓存问题
                                    var url = "../common/Handler2.ashx?caname=" + newtxt + "&caid=" + caid + "&date=" + new Date();
                                    //使用get()方法打开一个一般处理程序，data接受返回的参数（在一般处理程序中返回参数的方法 context.Response.Write("要返回的参数");）
                                    //数据库的修改就在一般处理程序中完成
                                    $.get(url, function(data) {
                                    if(data=="1")
                                    {
                                    alert("该类别已存在！");
                                    td.html(txt);
                                    return;
                                    }
                                    alert(data);
                                    td.html(newtxt);
                                    });
                                    */
                                }
                                else
                                {
                                    td.html(newtxt);
                                }
                            });
                        });
                    });

//                电话号码加密显示
                $(function() {
                    var phone = $('#phone').text();
                    var mphone = phone.substr(0, 3) + '****' + phone.substr(7);
//                    此时mphone 的值就是中间四位显示为*号的了；
                    $('#phone').text(mphone);
                });
            </script>


            <div class="col-xs-9 banner-body-right">
                <div class="gallery-head">
                    <h5>基本信息</h5>
                    <p></p>
                </div>
                <div class="table">
                    <table class="table-hover">
                        <tr>
                            <th align="center">基本信息</th>
                            <th></th>
                            <th></th>
                        </tr>

                        <tr class="">
                            <td width="100px" align="right">登录名</td>
                            <td>
                                <span id="phone">${userinfo.userphone}</span>
                                <a href="#" onclick="change(this)">修改密码</a></td>
                            <td></td>
                        </tr>
                        <tr class="">
                            <td width="100px" align="right">昵称</td>
                            <td>
                                <c:if test="${not empty userinfo.usernickname}">
                                    <span id="content">
                                            ${userinfo.usernickname}
                                    </span>
                                    <a href="javaScript:void(0)" class="changeContent">修改昵称</a>
                                </c:if>
                                <c:if test="${empty userinfo.usernickname}">
                                    <a href="javaScript:void(0)" class="changeContent">马上填写</a>昵称
                                </c:if>
                            </td>
                            <td></td>
                        </tr>
                        <tr class="">
                            <td width="100px" id="modifyname" align="right">真实姓名</td>
                            <td>
                                <c:if test="${not empty userinfo.username}">
                                    <span id="content">
                                            ${userinfo.username}
                                    </span>
                                    <a href="javaScript:void(0)" class="changeContent">修改姓名</a>
                                </c:if>
                                <c:if test="${empty userinfo.username}">
                                    <a href="javaScript:void(0)" class="changeContent">马上填写</a>自己的真实姓名
                                </c:if>
                            </td>
                            <td></td>
                        </tr>
                        <tr class="">
                            <td width="100px" align="right">所在地</td>
                            <td>
                                <c:if test="${not empty userinfo.usercreatetime}">
                                    <span id="content">
                                        ${userinfo.address.province}省 ${userinfo.address.city}市 ${userinfo.address.county}${userinfo.address.detailAddress}
                                    </span>
                                </c:if>
                                <c:if test="${empty userinfo.userintroduce}">
                                    <form class="form-inline">
                                        <div data-toggle="distpicker">
                                            <div class="form-group">
                                                <label class="sr-only" for="province2">Province</label>
                                                <select class="form-control" id="province2" data-province="---- 选择省 ----"></select>
                                            </div>
                                            <div class="form-group">
                                                <label class="sr-only" for="city2">City</label>
                                                <select class="form-control" id="city2" data-city="---- 选择市 ----"></select>
                                            </div>
                                            <div class="form-group">
                                                <label class="sr-only" for="district2">District</label>
                                                <select class="form-control" id="district2" data-district="---- 选择区 ----"></select>
                                            </div>
                                        </div>
                                    </form>
                                </c:if>

                            </td>
                            <td></td>
                        </tr>
                        <tr class="">
                            <td width="100px" align="right">性别</td>
                            <td>
                                <c:if test="${not empty userinfo.usersex}">
                                    ${userinfo.usersex}
                                </c:if>
                                <c:if test="${empty userinfo.usersex}">
                                    <label class="radio-inline">
                                        <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">男
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2" checked="checked">女
                                    </label>
                                </c:if>
                            </td>
                            <td></td>
                        </tr>
                        <tr class="">
                            <td width="100px" align="right">生日</td>
                            <td>
                                <c:if test="${not empty userinfo.usercreatetime}">
                                    <span>
                                        <fmt:formatDate value="${userinfo.usercreatetime}" pattern="yyyy-MM-dd" />
                                    </span>
                                </c:if>
                                <c:if test="${empty userinfo.userintroduce}">
                                    <div class="col-md-4">
                                        <input type="text" class="form-control Wdate" value="2001-05-28"
                                               onClick="WdatePicker()" readonly="readonly" name="startDate"
                                               id="startDate" placeholder="出生日期" >
                                    </div>
                                    <%--<a href="javaScript:void(0)" id="changeContent" onclick="changeContent()">马上填写</a>出生日期--%>
                                </c:if>
                            </td>
                            <td></td>
                        </tr>
                        <tr class="">
                            <td width="100px" align="right">简介</td>
                            <td id="modifyintroduct" onclick="startEdit(this.id)">
                                <c:if test="${not empty userinfo.userintroduce}">
                                    <span id="content">
                                            ${userinfo.userintroduce}
                                    </span>
                                    <a href="javaScript:void(0)" class="changeContent">修改个人简介</a>
                                </c:if>
                                <c:if test="${empty userinfo.userintroduce}">
                                    <a href="javaScript:void(0)" class="changeContent">马上填写</a>个人简介
                                </c:if>
                            </td>
                            <td></td>
                        </tr>
                        <tr class="">
                            <td width="100px" align="right">注册时间</td>
                            <td>
                                <c:if test="${not empty userinfo.logintime}">
                                    <span id="content">
                                        <fmt:formatDate value="${userinfo.logintime}" pattern="yyyy-MM-dd" />
                                    </span>
                                </c:if>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <th align="center">联系信息</th>
                            <th></th>
                            <th></th>
                        </tr>
                        <tr class="">
                            <td width="100px" align="right">邮箱</td>
                            <td><a href="#">
                                <c:if test="${not empty userinfo.useremail}">
                                    <span id="content">
                                            ${userinfo.useremail}
                                    </span>
                                    <a href="javaScript:void(0)" class="changeContent">修改邮箱</a>
                                </c:if>
                                <c:if test="${empty userinfo.useremail}">
                                    <a href="javaScript:void(0)" class="changeContent">马上填写</a>自己的邮箱
                                </c:if>
                            </td>
                            <td></td>
                        </tr>
                        <tr class="">
                            <td width="100px" align="right">QQ</td>
                            <td><a href="#">马上填写</a>自己的QQ信息</td>
                            <td></td>
                        </tr>
                        <tr class="">
                            <td width="100px" align="right">MSN</td>
                            <td><a href="#">马上填写</a>自己的MSN信息</td>
                            <td></td>
                        </tr>
                        <tr>
                            <th align="center">教育信息</th>
                            <th></th>
                            <th></th>
                        </tr>

                        <tr class="">
                            <td width="100px" align="right">大学</td>
                            <td>
                                <c:if test="${not empty userinfo.usergraduate}">
                                    <span id="content">
                                            ${userinfo.usergraduate}
                                    </span>
                                    <a href="javaScript:void(0)" class="changeContent">修改学校信息</a>
                                </c:if>
                                <c:if test="${empty userinfo.usergraduate}">
                                    <a href="javaScript:void(0)" class="changeContent">马上填写</a>自己的毕业院校
                                </c:if>
                            </td>
                            <td></td>
                        </tr>

                    </table>

                </div>
            </div>

            <div class="footer">
                <hr/>
                <div class="footer-left">

                    <ul>
                        <li><a href="#">Privacy Policy</a>|</li>
                        <li><a href="../about.jsp">Terms of Use</a>|</li>
                        <li><a href="../contactUs.jsp">Contact Us</a></li>
                    </ul>


                </div>
                <div class="footer-right">

                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
    </div>
</div>
<!-- //banner-body -->
<!-- for bootstrap working -->
<script src="<%=path%>/js/personal-js/bootstrap.js"></script>
<!-- //for bootstrap working -->
</body>
</html>
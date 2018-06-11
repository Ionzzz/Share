<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Danmon
  Date: 2018/5/29
  Time: 20:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
    <title>个人页面</title>
    <!-- for-mobile-apps -->
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
</head>
<body>

<header id="header"style="opacity: 0.7;">

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
                    <h1><a href="../index.jsp"><img src="<%=path%>/images/personal-images/co.png"> <span>网名</span></a></h1>
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
                                    <li class="active"><a href="/ShareMaven/personalpage/personal.action"><i class="home"></i>我的主页</a></li>
                                    <li><a href="/ShareMaven/personalpage/picture.action" class="hvr-underline-from-left"><i class="picture1"></i>相册</a></li>
                                    <li><a href="/ShareMaven/personalpage/dynamic.action" class="hvr-underline-from-left"><i class="edit1"></i>我的动态</a></li>
                                    <li><a href="personaldata.jsp" class="hvr-underline-from-left"><i class="text-size1"></i>个人资料</a></li>
                                </ul>
                            </nav>
                        </div>
                        <!-- /.navbar-collapse -->
                    </nav>
                </div>
            </div>



            <div class="col-xs-9 banner-body-right">
                <div class="wmuSlider example1">
                    <div class="wmuSliderWrapper">
                        <article style="position: absolute; width: 100%; opacity: 0;">
                            <div class="banner-wrap">
                                <div class="banner">
                                </div>
                            </div>
                        </article>
                        <article style="position: absolute; width: 100%; opacity: 0;">
                            <div class="banner-wrap">
                                <div class="banner1">
                                </div>
                            </div>
                        </article>
                        <article style="position: absolute; width: 100%; opacity: 0;">
                            <div class="banner-wrap">
                                <div class="banner2">
                                </div>
                            </div>
                        </article>
                    </div>
                </div>


                <script src="<%=path%>/js/personal-js/jquery.wmuSlider.js"></script>
                <script>
                    $('.example1').wmuSlider();
                </script>




                <div class="banner-bottom">
                    <div class="col-md-4 banner-left">
                        <div class="col-xs-3 banner-left1">

                        </div>
                        <div class="banner-right1" style="text-align:center">
                            <a href="/ShareMaven/personalpage/fellow.action">
                                <h3>220</h3>
                            </a>
                        </div>
                        <div class="banner-right1" style="text-align:center">
                            <p>关注</p>
                        </div>
                    </div>


                    <div class="col-md-4 banner-left">
                        <div class="col-xs-3 banner-left1">

                        </div>
                        <div class="banner-right1" style="text-align:center">
                            <a href="/ShareMaven/personalpage/fellow.action">
                                <h3>5230</h3>
                            </a>
                        </div>
                        <div class="banner-right1" style="text-align:center">
                            <p>粉丝</p>
                        </div>
                    </div>



                    <div class="col-md-4 banner-left">
                        <div class="col-xs-3 banner-left1">

                        </div>
                        <div class="banner-right1" style="text-align:center">
                            <a href="/ShareMaven/personalpage/dynamic.action">
                                <h3>32</h3>
                            </a>
                        </div>
                        <div class="clearfix" style="text-align:center">
                            <p>博客</p>
                        </div>
                    </div>

                </div>
            </div>



            <div class="clearfix"> </div>
            <div class="col-xs-3 banner-body-left">
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



            <div class="col-xs-9 banner-body-right">
                <div class="msg-text">
                    <div class="col-xs-2 msg-text-left">
                        <p>能量等级</p>
                        <img src="<%=path%>/images/personal-images/等级图标.jpg" style="height:40px; width:40px">
                    </div>
                    <div class="col-xs-10 msg-text-right">
                        <P>&nbsp;个人资料完善度&nbsp;&nbsp;<span style="font-weight:bold">%75</span></P>
                        <img src="<%=path%>/images/personal-images/完善条.png">
                        <br/>
                        <div class="col-md-3"></div>
                        <div class="col-md-9"><a href="personaldata.jsp">>>完善个人资料</a></div>
                    </div>

                    <div class="clearfix"> </div>
                </div>





                <div class="msg-text-bottom">
                    <div class="gallery-head">
                        <h5>我的博客</h5>
                        <p>&nbsp;</p>
                    </div>

                    <c:forEach items="${userblog}" var="userblogs">
                        <div class="col-md-4 msg-text-bottom-left">
                        <figure class="effect-winston">
                            <a href="../single.jsp">
                                <img src="<%=basePath%>${userblogs.pics.pic}" alt=" " class="img-responsive"/>
                                <figcaption>
                                </figcaption>
                            </a>
                        </figure>
                            <p style="width:200px; white-space:nowrap; text-overflow:ellipsis; overflow:hidden;">
                                <a href="single.html">
                                    ${userblogs.blogcontent}
                                </a>
                            </p>
                        </div>
                    </c:forEach>

                    <div class="clearfix"> </div>
                </div>
            </div>



            <div class="clearfix"> </div>
            <div class="footer">
                <hr/>
                <div class="footer-left">
                    <ul>
                        <li><a href="#">Privacy Policy</a>|</li>
                        <li><a href="#">Terms of Use</a>|</li>
                        <li><a href="contactus.jsp">Contact Us</a></li>
                    </ul>

                </div>

                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
</div>
<!-- //banner-body -->
<!-- for bootstrap working -->
<script src="<%=basePath%>/js/personal-js/bootstrap.js"></script>
<!-- //for bootstrap working -->
</body>
</html>

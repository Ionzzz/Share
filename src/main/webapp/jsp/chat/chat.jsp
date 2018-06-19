<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Danmon
  Date: 2018/6/3
  Time: 13:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>私信</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Great Taste Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //for-mobile-apps -->
    <link href="<%=basePath%>css/chat-css/bootstrap.css" type="text/css" rel="stylesheet" media="all" />
    <link href="<%=basePath%>css/chat-css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="<%=basePath%>css/chat-css/chat.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>fonts/chat-fonts/font_Icon/iconfont.css" />
    <!-- CSS -->
    <link rel="stylesheet" href="<%=basePath%>css/chat-css/main.css" />

    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/chat-css/notice.css" />

    <!-- js -->
    <script src="<%=basePath%>js/chat-js/jquery-1.11.1.min.js"></script>
    <!-- //js -->
    <!-- for bootstrap working -->
    <script src="<%=basePath%>js/chat-js/bootstrap.js"></script>
    <!-- //for bootstrap working -->
    <script src="<%=basePath%>js/chat-js/jquery.wmuSlider.js"></script>


</head>

<body>



<header id="header">

    <div id="header-top">
        <div class="wrapper clearfix">
            <nav id="navigation">
                <ul class="menu">
                    <li>
                        <a href="../index.jsp">Home</a>
                        <ul>
                            <li class="current-menu-item"><a href="../index.jsp">Home Version 1</a></li>
                            <li><a href="home-2.html">Home Version 2</a></li>
                            <li><a href="home-3.html">Home Version 3</a></li>
                            <li><a href="home-4.html">Home Version 4</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="../single.jsp">Blog</a>
                        <ul>
                            <li><a href="../single.jsp">Right Sidebar</a></li>
                            <li><a href="single-left-sidebar.html">Left Sidebar</a></li>
                            <li><a href="single-no-sidebar.html">No Sidebar</a></li>
                        </ul>
                    </li>
                    <li class="current-menu-item"><a href="elements.html">Topic</a></li>
                    <li><a href="typography.html">World</a></li>
                    <li><a href="search.html">Contact</a></li>

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
                    <form method="get" action="search.html">
                        <input type="text" name="s" placeholder="Search and hit enter" />
                    </form>
                    <span class="header-search-icon"><span class="fa fa-search"></span></span>
                </div><!-- .search-form-wrapper -->
            </div><!-- #header-search -->

        </div><!-- .wrapper -->
    </div><!-- #header-top -->
</header>




<div class="container">
    <div class="all row banner-body-content">

        <div class="left col-md-2 col-md-offset-1">

            <div class="top-nav">
                <h3>我的消息箱</h3>
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
                                <li class="active"><a href="chat.jsp" class="hvr-underline-from-left"><span class="iconfont icon-xiaoxi1"></span>&nbsp;私信</a></li>
                                <li><a href="me.jsp"><span class="iconfont icon-yingyangbaojian"></span>&nbsp;@我的</a></li>
                                <li><a href="comment.jsp" class="hvr-underline-from-left"><span class="iconfont icon-pingjia"></span>&nbsp;评论</a></li>
                                <li><a href="thrums_up.jsp" class="hvr-underline-from-left"><span class="iconfont icon-shoucang2"></span>&nbsp;赞</a></li>

                            </ul>
                        </nav>
                    </div>
                    <!-- /.navbar-collapse -->
                </nav>
            </div>
        </div>


        <div class="center col-md-5">


            <div class="chatContainer">


                <div class="chatBox" ref="chatBox">

                    <div class="chatBox-head">
                        <div class="chatBox-head-one">
                            私信

                        </div>
                        <div class="chatBox-head-two">
                            <div class="chat-return">返回</div>
                            <div class="chat-people">
                                <div class="ChatInfoHead">
                                    <img src="" alt="头像"/>
                                </div>
                                <div class="ChatInfoName">这是用户的名字，看看名字到底能有多长</div>
                            </div>

                        </div>
                    </div>


                    <div class="chatBox-info">
                        <div class="chatBox-list" ref="chatBoxlist">
                            <c:forEach items="${friendInfo}" var="friends">
                                <div class="chat-list-people">
                                    <div>
                                        <img src="<%=basePath%>img${friends.userimg}" alt="头像"/>
                                    </div>
                                    <div class="chat-name">
                                        <p>${friends.usernickname}</p>
                                    </div>
                                    <div class="message-num">10</div>
                                </div>
                            </c:forEach>
                            <div class="chat-list-people">
                                <div><img src="../../images/chat-images/img/icon02.png" alt="头像"/></div>
                                <div class="chat-name">
                                    <p>白兰地</p>
                                </div>
                                <div class="message-num">8</div>
                            </div>
                            <div class="chat-list-people">
                                <div><img src="../../images/chat-images/img/icon03.png" alt="头像"/></div>
                                <div class="chat-name">
                                    <p>威士忌</p>
                                </div>
                                <div class="message-num">2</div>
                            </div>
                            <div class="chat-list-people">
                                <div><img src="../../images/chat-images/img/icon01.png" alt="头像"/></div>
                                <div class="chat-name">
                                    <p>荷兰金酒</p>
                                </div>
                                <div class="message-num">20</div>
                            </div>
                            <div class="chat-list-people">
                                <div><img src="../../images/chat-images/img/icon03.png" alt="头像"/></div>
                                <div class="chat-name">
                                    <p>朗姆酒</p>
                                </div>
                                <div class="message-num">10</div>
                            </div>
                            <div class="chat-list-people">
                                <div><img src="../../images/chat-images/img/icon02.png" alt="头像"/></div>
                                <div class="chat-name">
                                    <p>特其拉酒</p>
                                </div>
                                <div class="message-num">18</div>
                            </div>
                            <div class="chat-list-people">
                                <div><img src="../../images/chat-images/img/icon02.png" alt="头像"/></div>
                                <div class="chat-name">
                                    <p>鸡尾酒</p>
                                </div>
                                <div class="message-num">9</div>
                            </div>
                            <div class="chat-list-people">
                                <div><img src="../../images/chat-images/img/icon01.png" alt="头像"/></div>
                                <div class="chat-name">
                                    <p>虎骨酒</p>
                                </div>
                                <div class="message-num">12</div>
                            </div>
                            <div class="chat-list-people">
                                <div><img src="../../images/chat-images/img/icon01.png" alt="头像"/></div>
                                <div class="chat-name">
                                    <p>琴酒</p>
                                </div>
                                <div class="message-num">99+</div>
                            </div>
                            <div class="chat-list-people">
                                <div><img src="../../images/chat-images/img/icon02.png" alt="头像"/></div>
                                <div class="chat-name">
                                    <p>葡萄酒</p>
                                </div>
                                <div class="message-num"></div>
                            </div>
                            <div class="chat-list-people">
                                <div><img src="../../images/chat-images/img/icon01.png" alt="头像"/></div>
                                <div class="chat-name">
                                    <p>蓝莓酒</p>
                                </div>
                                <div class="message-num"></div>
                            </div>
                            <div class="chat-list-people">
                                <div><img src="../../images/chat-images/img/icon03.png" alt="头像"/></div>
                                <div class="chat-name">
                                    <p>樱花酒</p>
                                </div>
                                <div class="message-num"></div>
                            </div>
                        </div>


                        <div class="chatBox-kuang" ref="chatBoxkuang">
                            <div class="chatBox-content">
                                <div class="chatBox-content-demo" id="chatBox-content-demo">

                                    <div class="clearfloat">
                                        <div class="author-name">
                                            <small class="chat-date">2017-12-02 14:26:58</small>
                                        </div>
                                        <div class="left">
                                            <div class="chat-avatars"><img src="img/icon01.png" alt="头像"/></div>
                                            <div class="chat-message">
                                                给你看张图
                                            </div>
                                        </div>
                                    </div>

                                    <div class="clearfloat">
                                        <div class="author-name">
                                            <small class="chat-date">2017-12-02 14:26:58</small>
                                        </div>
                                        <div class="left">
                                            <div class="chat-avatars"><img src="../../images/chat-images/img/icon01.png" alt="头像"/>                                            </div>
                                            <div class="chat-message">
                                                <img src="../../images/chat-images/img/1.png" alt="">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="clearfloat">
                                        <div class="author-name">
                                            <small class="chat-date">2017-12-02 14:26:58</small>
                                        </div>
                                        <div class="right">
                                            <div class="chat-message">嗯，适合做壁纸</div>
                                            <div class="chat-avatars"><img src="../../images/chat-images/img/icon02.png" alt="头像"/>                                             	</div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="chatBox-send">
                                <div class="div-textarea" contenteditable="true"></div>
                                <div>
                                    <button id="chat-biaoqing" class="btn-default-styles">
                                        <i class="iconfont icon-biaoqing"></i>
                                    </button>
                                    <label id="chat-tuxiang" title="发送图片" for="inputImage" class="btn-default-styles">
                                        <input type="file" onchange="selectImg(this)" accept="image/jpg,image/jpeg,image/png"
                                               name="file" id="inputImage" class="hidden">
                                        <i class="iconfont icon-tuxiang"></i>
                                    </label>
                                    <button id="chat-fasong" class="btn-default-styles"><i class="iconfont icon-fasong"></i>
                                    </button>
                                </div>

                                <div class="biaoqing-photo">
                                    <ul>
                                        <li><span class="emoji-picker-image" style="background-position: -9px -18px;"></span></li>
                                        <li><span class="emoji-picker-image" style="background-position: -40px -18px;"></span></li>
                                        <li><span class="emoji-picker-image" style="background-position: -71px -18px;"></span></li>
                                        <li><span class="emoji-picker-image" style="background-position: -102px -18px;"></span></li>
                                        <li><span class="emoji-picker-image" style="background-position: -133px -18px;"></span></li>
                                        <li><span class="emoji-picker-image" style="background-position: -164px -18px;"></span></li>
                                        <li><span class="emoji-picker-image" style="background-position: -9px -52px;"></span></li>
                                        <li><span class="emoji-picker-image" style="background-position: -40px -52px;"></span></li>
                                        <li><span class="emoji-picker-image" style="background-position: -71px -52px;"></span></li>
                                        <li><span class="emoji-picker-image" style="background-position: -102px -52px;"></span></li>
                                        <li><span class="emoji-picker-image" style="background-position: -133px -52px;"></span></li>
                                        <li><span class="emoji-picker-image" style="background-position: -164px -52px;"></span></li>
                                        <li><span class="emoji-picker-image" style="background-position: -9px -86px;"></span></li>
                                        <li><span class="emoji-picker-image" style="background-position: -40px -86px;"></span></li>
                                        <li><span class="emoji-picker-image" style="background-position: -71px -86px;"></span></li>
                                        <li><span class="emoji-picker-image" style="background-position: -102px -86px;"></span></li>
                                        <li><span class="emoji-picker-image" style="background-position: -133px -86px;"></span></li>
                                        <li><span class="emoji-picker-image" style="background-position: -164px -86px;"></span></li>
                                        <li><span class="emoji-picker-image" style="background-position: -9px -120px;"></span></li>
                                        <li><span class="emoji-picker-image" style="background-position: -40px -120px;"></span></li>
                                        <li><span class="emoji-picker-image" style="background-position: -71px -120px;"></span></li>
                                        <li><span class="emoji-picker-image" style="background-position: -102px -120px;"></span>
                                        </li>
                                        <li><span class="emoji-picker-image" style="background-position: -133px -120px;"></span>
                                        </li>
                                        <li><span class="emoji-picker-image" style="background-position: -164px -120px;"></span>
                                        </li>
                                        <li><span class="emoji-picker-image" style="background-position: -9px -154px;"></span></li>
                                        <li><span class="emoji-picker-image" style="background-position: -40px -154px;"></span></li>
                                        <li><span class="emoji-picker-image" style="background-position: -71px -154px;"></span></li>
                                        <li><span class="emoji-picker-image" style="background-position: -102px -154px;"></span>
                                        </li>
                                        <li><span class="emoji-picker-image" style="background-position: -133px -154px;"></span>
                                        </li>
                                        <li><span class="emoji-picker-image" style="background-position: -164px -154px;"></span>
                                        </li>
                                    </ul>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </div>

        <div class="right col-md-3">
            <br/>

            <h3>联系人</h3>
            <div class="latest-news">

                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">

                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingOne">
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    特别关心
                                </a>
                            </h4>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                            <div class="panel-body">
                                <div class="zan">
                                    <div class="zan-people row">



                                    </div>
                                    <br/>

                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingTwo">
                            <h4 class="panel-title">
                                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                    DIY
                                </a>
                            </h4>
                        </div>
                        <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                            <div class="panel-body">
                                <div class="zan">
                                    <div class="zan-people row">
                                        <div class="col-md-4">
                                            <img src="../../images/chat-images/images/co.png" style="height:35px; width:35px">
                                        </div>
                                        <div class="col-md-8">
                                            <p>网名</p>
                                        </div>
                                    </div>

                                </div>
                            </div>

                            <div class="panel-body">
                                <div class="zan">
                                    <div class="zan-people row">
                                        <div class="col-md-4">
                                            <img src="../../images/chat-images/images/co.png" style="height:35px; width:35px">
                                        </div>
                                        <div class="col-md-8">
                                            <p>网名</p>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingTwo">
                            <h4 class="panel-title">
                                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                    摄影
                                </a>
                            </h4>
                        </div>
                        <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                            <div class="panel-body">
                                <div class="zan">
                                    <div class="zan-people row">
                                        <div class="col-md-4">
                                            <img src="../../images/chat-images/images/co.png" style="height:35px; width:35px">
                                        </div>
                                        <div class="col-md-8">
                                            <p>网名</p>
                                        </div>
                                    </div>

                                </div>
                            </div>

                            <div class="panel-body">
                                <div class="zan">
                                    <div class="zan-people row">
                                        <div class="col-md-4">
                                            <img src="../../images/chat-images/images/co.png" style="height:35px; width:35px">
                                        </div>
                                        <div class="col-md-8">
                                            <p>网名</p>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>



                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingTwo">
                            <h4 class="panel-title">
                                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                                    音乐
                                </a>
                            </h4>
                        </div>
                        <div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
                            <div class="panel-body">
                                <div class="zan">
                                    <div class="zan-people row">
                                        <div class="col-md-4">
                                            <img src="../../images/chat-images/images/co.png" style="height:35px; width:35px">
                                        </div>
                                        <div class="col-md-8">
                                            <p>网名</p>
                                        </div>
                                    </div>

                                </div>
                            </div>

                            <div class="panel-body">
                                <div class="zan">
                                    <div class="zan-people row">
                                        <div class="col-md-4">
                                            <img src="../../images/chat-images/images/co.png" style="height:35px; width:35px">
                                        </div>
                                        <div class="col-md-8">
                                            <p>网名</p>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>




                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingTwo">
                            <h4 class="panel-title">
                                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
                                    影视
                                </a>
                            </h4>
                        </div>
                        <div id="collapseSix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSix">
                            <div class="panel-body">
                                <div class="zan">
                                    <div class="zan-people row">
                                        <div class="col-md-4">
                                            <img src="../../images/chat-images/images/co.png" style="height:35px; width:35px">
                                        </div>
                                        <div class="col-md-8">
                                            <p>网名</p>
                                        </div>
                                    </div>

                                </div>
                            </div>

                            <div class="panel-body">
                                <div class="zan">
                                    <div class="zan-people row">
                                        <div class="col-md-4">
                                            <img src="../../images/chat-images/images/co.png" style="height:35px; width:35px">
                                        </div>
                                        <div class="col-md-8">
                                            <p>网名</p>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>




                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingTwo">
                            <h4 class="panel-title">
                                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
                                    设计
                                </a>
                            </h4>
                        </div>
                        <div id="collapseSeven" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSeven">
                            <div class="panel-body">
                                <div class="zan">
                                    <div class="zan-people row">
                                        <div class="col-md-4">
                                            <img src="../../images/chat-images/images/co.png" style="height:35px; width:35px">
                                        </div>
                                        <div class="col-md-8">
                                            <p>网名</p>
                                        </div>
                                    </div>

                                </div>
                            </div>

                            <div class="panel-body">
                                <div class="zan">
                                    <div class="zan-people row">
                                        <div class="col-md-4">
                                            <img src="../../images/chat-images/images/co.png" style="height:35px; width:35px">
                                        </div>
                                        <div class="col-md-8">
                                            <p>网名</p>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>



                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingThree">
                            <h4 class="panel-title">
                                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                    美妆
                                </a>
                            </h4>
                        </div>
                        <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                            <div class="panel-body">
                                <div class="pic">


                                </div>
                            </div>
                        </div>

                    </div>

                </div>

            </div>
        </div>


        <div class="over col-md-12" style="margin-top:80px">
            <hr/>
            <ul>
                <li><a href="#">Privacy Policy</a>|</li>
                <li><a href="#">Terms of Use</a>|</li>
                <li><a href="mail.html">Contact Us</a></li>
            </ul>
        </div>

    </div>



</div>


<script>

    screenFuc();
    function screenFuc() {
        var topHeight = $(".chatBox-head").innerHeight();//聊天头部高度
        //屏幕小于768px时候,布局change
        var winWidth = $(window).innerWidth();
        if (winWidth <= 768) {
            var totalHeight = $(window).height(); //页面整体高度
            $(".chatBox-info").css("height", totalHeight - topHeight);
            var infoHeight = $(".chatBox-info").innerHeight();//聊天头部以下高度
            //中间内容高度
            $(".chatBox-content").css("height", infoHeight - 46);
            $(".chatBox-content-demo").css("height", infoHeight - 46);

            $(".chatBox-list").css("height", totalHeight - topHeight);
            $(".chatBox-kuang").css("height", totalHeight - topHeight);
            $(".div-textarea").css("width", winWidth - 106);
        } else {
            $(".chatBox-info").css("height", 495);
            $(".chatBox-content").css("height", 448);
            $(".chatBox-content-demo").css("height", 448);
            $(".chatBox-list").css("height", 495);
            $(".chatBox-kuang").css("height", 495);
            $(".div-textarea").css("width", 260);
        }
    }
    (window.onresize = function () {
        screenFuc();
    })();
    //未读信息数量为空时
    var totalNum = $(".chat-message-num").html();
    if (totalNum == "") {
        $(".chat-message-num").css("padding", 0);
    }
    $(".message-num").each(function () {
        var wdNum = $(this).html();
        if (wdNum == "") {
            $(this).css("padding", 0);
        }
    });


    //打开/关闭聊天框
    $(".chatBtn").click(function () {
        $(".chatBox").toggle(10);
    })
    $(".chat-close").click(function () {
        $(".chatBox").toggle(10);
    })
    //进聊天页面
    $(".chat-list-people").each(function () {
        $(this).click(function () {
            var n = $(this).index();
            $(".chatBox-head-one").toggle();
            $(".chatBox-head-two").toggle();
            $(".chatBox-list").fadeToggle();
            $(".chatBox-kuang").fadeToggle();

            //传名字
            $(".ChatInfoName").text($(this).children(".chat-name").children("p").eq(0).html());

            //传头像
            $(".ChatInfoHead>img").attr("src", $(this).children().eq(0).children("img").attr("src"));

            //聊天框默认最底部
            $(document).ready(function () {
                $("#chatBox-content-demo").scrollTop($("#chatBox-content-demo")[0].scrollHeight);
            });
        })
    });

    //返回列表
    $(".chat-return").click(function () {
        $(".chatBox-head-one").toggle(1);
        $(".chatBox-head-two").toggle(1);
        $(".chatBox-list").fadeToggle(1);
        $(".chatBox-kuang").fadeToggle(1);
    });

    //      发送信息
    $("#chat-fasong").click(function () {
        var textContent = $(".div-textarea").html().replace(/[\n\r]/g, '<br>')
        if (textContent != "") {
            $(".chatBox-content-demo").append("<div class=\"clearfloat\">" +
                "<div class=\"author-name\"><small class=\"chat-date\">2017-12-02 14:26:58</small> </div> " +
                "<div class=\"right\"> <div class=\"chat-message\"> " + textContent + " </div> " +
                "<div class=\"chat-avatars\"><img src=\"../../../../../../项目模板/网站实例/项目前端/聊天通知/chat/img/icon01.png\" alt=\"头像\" /></div> </div> </div>");
            //发送后清空输入框
            $(".div-textarea").html("");
            //聊天框默认最底部
            $(document).ready(function () {
                $("#chatBox-content-demo").scrollTop($("#chatBox-content-demo")[0].scrollHeight);
            });
        }
    });

    //      发送表情
    $("#chat-biaoqing").click(function () {
        $(".biaoqing-photo").toggle();
    });
    $(document).click(function () {
        $(".biaoqing-photo").css("display", "none");
    });
    $("#chat-biaoqing").click(function (event) {
        event.stopPropagation();//阻止事件
    });

    $(".emoji-picker-image").each(function () {
        $(this).click(function () {
            var bq = $(this).parent().html();
            console.log(bq)
            $(".chatBox-content-demo").append("<div class=\"clearfloat\">" +
                "<div class=\"author-name\"><small class=\"chat-date\">2017-12-02 14:26:58</small> </div> " +
                "<div class=\"right\"> <div class=\"chat-message\"> " + bq + " </div> " +
                "<div class=\"chat-avatars\"><img src=\"../../../../../../项目模板/网站实例/项目前端/聊天通知/chat/img/icon01.png\" alt=\"头像\" /></div> </div> </div>");
            //发送后关闭表情框
            $(".biaoqing-photo").toggle();
            //聊天框默认最底部
            $(document).ready(function () {
                $("#chatBox-content-demo").scrollTop($("#chatBox-content-demo")[0].scrollHeight);
            });
        })
    });

    //      发送图片
    function selectImg(pic) {
        if (!pic.files || !pic.files[0]) {
            return;
        }
        var reader = new FileReader();
        reader.onload = function (evt) {
            var images = evt.target.result;
            $(".chatBox-content-demo").append("<div class=\"clearfloat\">" +
                "<div class=\"author-name\"><small class=\"chat-date\">2017-12-02 14:26:58</small> </div> " +
                "<div class=\"right\"> <div class=\"chat-message\"><img src=" + images + "></div> " +
                "<div class=\"chat-avatars\"><img src=\"../../../../../../项目模板/网站实例/项目前端/聊天通知/chat/img/icon01.png\" alt=\"头像\" /></div> </div> </div>");
            //聊天框默认最底部
            $(document).ready(function () {
                $("#chatBox-content-demo").scrollTop($("#chatBox-content-demo")[0].scrollHeight);
            });
        };
        reader.readAsDataURL(pic.files[0]);

    }


</script>



</body>
</html>


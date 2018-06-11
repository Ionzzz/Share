<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Danmon
  Date: 2018/5/29
  Time: 20:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>关注粉丝</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Great Taste Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript">
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
            }, false);
        function hideURLbar(){
            window.scrollTo(0,1);
        }
        </script>
    <!-- //for-mobile-apps -->
    <link href="<%=basePath%>css/personal-css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="<%=basePath%>css/personal-css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- js -->
    <script src="<%=basePath%>js/personal-js/jquery-1.11.1.min.js"></script>
    <!-- //js -->
    <link href='<%=basePath%>css/personal-css/person1.css' rel='stylesheet' type='text/css'>
    <link href='<%=basePath%>css/personal-css/person2.css' rel='stylesheet' type='text/css'>
    <link href='<%=basePath%>css/personal-css/person3.css' rel='stylesheet' type='text/css'>

    <link href="<%=basePath%>css/index-css/style_1.css" rel="stylesheet" type="text/css"/>
    <link href="<%=basePath%>css/index-css/main.css" rel="stylesheet">
    <link href='<%=basePath%>css/index-css/nav_font.css' rel='stylesheet' type='text/css'>

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Great+Vibes' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Comfortaa:400,300,700' rel='stylesheet' type='text/css'>
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
            <div class="row">
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
                                        <li><a href="/ShareMaven/personalpage/personal.action" class="hvr-underline-from-left"><i class="home1"></i>我的主页</a></li>
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


                    <script src="<%=basePath%>js/personal-js/jquery.wmuSlider.js"></script>
                    <script>
                        $('.example1').wmuSlider();
                    </script>

                </div>
             </div>


            <script type="text/javascript">

                //       异步刷新右侧关注人
                function showAllFollowInfo(followGroupName){
                    $.ajax({
                        type:"post",
                        url:'${pageContext.request.contextPath }/personalpage/groupfellow.action',
                        data : {"followGroupName":followGroupName},
                        dateType:'json',
                        success:function (data) {
//                  获得不同分组的关注人信息
                            var len = data.length;
                            var tableStr = "<table class='table'>"
                                         + "<thead>"+followGroupName+len+"</thead>";
//                            alert(tableStr);
                            if(len==0){
                                tableStr = tableStr + "<tr style='text-align: center'>"
                                    +"<td colspan='6'><font color='#cd0a0a'>该分组没有关注的人</font></td>"
                                    +"</tr>";
                            }else {
                                tableStr = tableStr + "<tr>"
                                for (var i = 0; i < len; i++) {
                                    tableStr = tableStr
                                        + "<td width='33.3%' style='margin: 5px;border:5px solid white;background-color:#F0F0F0;'>"
                                        + "<div class='list-detail'>"
                                        + "<div class='profile-photo col-md-4'>"
                                        + "<a href='#'>"
                                        + "<div class='imgtest'>"
                                        + "<figure>"
                                        + "<div>"
                                        + "<img src='<%=basePath%>img" + data[i].userimg + "'/>"
                                        + "</div>"
                                        + "</figure>"
                                        + "</div>"
                                        + "</a>"
                                        + "</div>"
                                        + "<div class='fellow-detail col-md-8' style='border-left: solid 1px'>"
                                        + "<p>"
                                        + "<a href='#'><strong>" + data[i].usernickname + "</strong></a>"
                                        + "</p>"
                                        + "<p>已关注</p>"
                                        + "<p>" + data[i].userintroduce + "</p>"
                                        + "<p>"
                                        + "<select class='form-control' style='float:left;height:27px;width:67px;font-size:4px;padding:0;'>"
                                        + "<option>特别关心</option>"
                                        + "<option>DIY</option>"
                                        + "<option>音乐</option>"
                                        + "<option>影视</option>"
                                        + "<option>设计</option>"
                                        + "<option>美妆</option>"
                                        + "</select>"
                                        + "<button class='btn btn-default' type='submit'" +
                                        "                                style='float:left;height:27px;width: 50px;font-size:3px;padding: 0;margin-left: 3px'>取消关注</button>"
                                        + "</p>"
                                        + "</div>"
                                        + "</div>"
                                        + "</td>";
                                    if ((i + 1) % 3 == 0) {
                                        tableStr = tableStr + "</tr>"
                                    }
                                }
                            }
                            tableStr = tableStr + "<tr></tr></table>";
//                            alert(tableStr);
                            //添加到div中
                            $("#fellow-list").html(tableStr);
                        }

                    });
                }


            </script>

            <div class="clearfix"> </div>
            <div class="row fellow">
                <div class="col-md-3 group" style="float: left;">
                    <ul>
                        <li id="allcare" class="current">
                            <a href="javascript:void(0)">关注&nbsp;254</a>
                            <ul>
                                <c:forEach items="${group}" var="groups">
                                    <li>
                                        <a href="javascript:void(0)" onclick="showAllFollowInfo('${groups}')"> ${groups}</a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </li>
                        <li id="follow">
                            <a href="javascript:void(0)">粉丝&nbsp;59</a>
                        </li>
                    </ul>
                </div>

                <div id="content">

                    <div class="col-md-9 fellow-list" id="fellow-list" name="fellow-list">
                        <form action="<%=basePath%>personalpage/fellow.action" id="mainForm" method="post">
                            <table class="table">
                            <thead>全部关注</thead>
                                <tr>
                                    <input type="hidden" name="curPage"  id="curPage">
                                    <c:forEach items="${pageInfo.list}" var="concerns" varStatus="st">
                                        <td width="33.3%" style="margin: 5px;border:5px solid white;background-color:#F0F0F0;">
                                            <div class="list-detail">
                                                <div class="profile-photo col-md-4">
                                                    <a href="#">
                                                        <div class="imgtest">
                                                            <figure>
                                                                <div>
                                                                    <img src="<%=basePath%>img${concerns.userimg}" />
                                                                </div>
                                                            </figure>
                                                        </div>
                                                    </a>
                                                </div>
                                                <div class="fellow-detail col-md-8" style="border-left: solid 1px">
                                                    <p>
                                                        <a href="#"><strong>${concerns.usernickname}</strong></a>
                                                    </p>
                                                    <p>已关注</p>
                                                    <p>${concerns.userintroduce}</p>
                                                    <p>
                                                        <select class="form-control" style="float:left;height:27px;width:67px;font-size:4px;padding:0;">
                                                            <c:forEach items="${group}" var="groups">
                                                                <option>${groups}</option>
                                                            </c:forEach>
                                                        </select>
                                                        <button class="btn btn-default" type="submit"
                                                                style="float:left;height:27px;width: 50px;font-size:3px;padding: 0;margin-left: 3px">取消关注</button>
                                                    </p>
                                                </div>
                                            </div>
                                        </td>
                                        <c:if test="${(st.count%3) eq '0'}">
                                            </tr>
                                        </c:if>
                                    </c:forEach>
                            <tr></tr>
                        </table>


                            <%--pageInfo--%>
                            <div class="pagination"style="margin-bottom: 50px;text-align: center;">
                                <a href="javascript:getPage(1)" class="btn_mange_pagging"><i class="fa fa-long-arrow-left"></i>&nbsp;&nbsp; 首页</a>
                                <c:if test="${!pageInfo.isFirstPage}">
                                    <a href="javascript:getPage(${pageInfo.pageNum == 1?1:pageInfo.prePage})" class='pre'>上一页</a>
                                </c:if>
                                <c:if test="${pageInfo.pages==1}">
                                    <a href="javascript:getPage(${pageInfo.pageNum})" class="btn_pagging">${pageInfo.pageNum}</a>
                                </c:if>
                                <c:if test="${pageInfo.pages==2}">
                                    <a href="javascript:getPage(${pageInfo.pageNum})" class="btn_pagging">${pageInfo.pageNum}</a>
                                    <a href="javascript:getPage(${pageInfo.nextPage})" class="btn_pagging">${pageInfo.nextPage}</a>
                                </c:if>
                                <c:if test="${pageInfo.pages==3||pageInfo.pages>3}">
                                    <c:if test="${pageInfo.pageNum==1}">
                                        <a href="javascript:getPage(${pageInfo.pageNum==1?1:pageInfo.prePage})" class="btn_pagging">${pageInfo.pageNum==1?1:pageInfo.prePage}</a>
                                        <a href="javascript:getPage(${pageInfo.pageNum==1?2:pageInfo.pageNum})" class="btn_pagging">${pageInfo.pageNum==1?2:pageInfo.pageNum}</a>
                                        <a href="javascript:getPage(${pageInfo.pageNum==1?3:pageInfo.nextPage})" class="btn_pagging">${pageInfo.pageNum==1?3:pageInfo.nextPage}</a>
                                    </c:if>
                                    <c:if test="${pageInfo.pageNum!=1&&pageInfo.pageNum!=pageInfo.pages}">
                                        <a href="javascript:getPage(${pageInfo.prePage})" class="btn_pagging">${pageInfo.prePage}</a>
                                        <a href="javascript:getPage(${pageInfo.pageNum})" class="btn_pagging">${pageInfo.pageNum}</a>
                                        <a href="javascript:getPage(${pageInfo.nextPage})" class="btn_pagging">${pageInfo.nextPage}</a>
                                    </c:if>
                                    <c:if test="${pageInfo.pageNum==pageInfo.pages&&pageInfo.pageNum!=1}">
                                        <a href="javascript:getPage(${pageInfo.pageNum==pageInfo.pages?pageInfo.prePage-1:pageInfo.prePage})" class="btn_pagging">${pageInfo.pageNum==pageInfo.pages?pageInfo.prePage-1:pageInfo.prePage}</a>
                                        <a href="javascript:getPage(${pageInfo.pageNum==pageInfo.pages?pageInfo.prePage:pageInfo.pageNum})" class="btn_pagging">${pageInfo.pageNum==pageInfo.pages?pageInfo.prePage:pageInfo.pageNum}</a>
                                        <a href="javascript:getPage(${pageInfo.pageNum==pageInfo.pages?pageInfo.pages:pageInfo.nextPage})" class="btn_pagging">${pageInfo.pageNum==pageInfo.pages?pageInfo.pages:pageInfo.nextPage}</a>
                                    </c:if>
                                </c:if>
                                <c:if test="${!pageInfo.isLastPage}">
                                    <a href="javascript:getPage(${pageInfo.nextPage})" class='next'>下一页</a>
                                </c:if>
                                <a href="javascript:getPage(${pageInfo.pages})" class="btn_mange_pagging">末页 <i class="fa fa-long-arrow-right"></i>&nbsp;&nbsp; </a>

                            </div><!-- .pagination -->

                        </form>
                    </div>

                    <div  class="col-md-9 fellow-list" style="display: none">
                        <table class="table">
                            <thead>粉丝</thead>
                            <tr>
                                <c:forEach items="${follower}" var="followers" varStatus="st">
                                <td width="33.3%" style="margin: 5px;border:5px solid white;background-color:#F0F0F0;">
                                    <div class="list-detail">
                                        <div class="profile-photo col-md-4">
                                            <a href="#">
                                                <div class="imgtest">
                                                    <figure>
                                                        <div>
                                                            <img src="<%=basePath%>images${followers.userimg}" />
                                                        </div>
                                                    </figure>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="fellow-detail col-md-8" style="border-left: solid 1px">
                                            <p>
                                                <a href="#"><strong>${followers.usernickname}</strong></a>
                                            </p>
                                            <p>已关注</p>
                                            <p>${followers.userintroduce}</p>
                                            <p>
                                                <select class="form-control" style="float:left;height:27px;width:67px;font-size:4px;padding:0;">
                                                    <c:forEach items="${group}" var="groups">
                                                        <option>${groups}</option>
                                                    </c:forEach>
                                                </select>
                                                <button class="btn btn-default" type="submit"
                                                        style="float:left;height:27px;width: 50px;font-size:3px;padding: 0;margin-left: 3px">取消关注</button>
                                            </p>
                                        </div>
                                    </div>
                                </td>
                                <c:if test="${(st.count%3) eq '0'}">
                                </tr>
                                </c:if>
                                </c:forEach>
                                <tr></tr>
                        </table>


                    </div>
                </div>
             </div>


            <%--分页--%>
            <script>
                function getPage(curPage) {
                    document.getElementById("curPage").value=curPage;
//				触发表单提交事件
                    document.getElementById("mainForm").submit();
                }
            </script>

















        <div class="clearfix"> </div>
            <div class="footer">
                <hr/>
                <div class="footer-left">
                    <ul>
                        <li><a href="#">Privacy Policy</a>|</li>
                        <li><a href="#">Terms of Use</a>|</li>
                        <li><a href="mail.html">Contact Us</a></li>
                    </ul>

                </div>

                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
</div>
<!-- //banner-body -->
<!-- for bootstrap working -->
<script src="<%=basePath%>js/personal-js/bootstrap.js"></script>
<!-- //for bootstrap working -->
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Danmon
  Date: 2018/6/20
  Time: 20:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>个人博客</title>
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>

    <link href="<%=basePath%>css/index-css/style_1.css" rel="stylesheet" type="text/css"/>
    <link href="<%=basePath%>css/index-css/main.css" rel="stylesheet" >
    <link href="<%=basePath%>css/index-css/nav_font.css" rel='stylesheet' type='text/css'>

    <link href="<%=basePath%>css/personal-css/style.css" title="style" rel="stylesheet" type="text/css" />
    <link id="clink" href="<%=basePath%>css/personal-css/style-mango.css" title="style" rel="stylesheet" type="text/css" media="screen" />
    <script src="<%=basePath%>js/personal-js/jquery.min.js" type="text/javascript"></script>
    <script src="<%=basePath%>js/personal-js/jquery.masonry.min.js" type="text/javascript"></script>
    <script src="<%=basePath%>js/personal-js/jquery.easing.1.3.js" type="text/javascript"></script>
    <script src="<%=basePath%>js/personal-js/MetroJs.lt.js" type="text/javascript"></script>
    <script src="<%=basePath%>js/personal-js/jquery.fancybox-1.3.4.js" type="text/javascript" charset="utf-8"></script>
    <script src="<%=basePath%>js/personal-js/jquery.flexslider-min.js" type="text/javascript" charset="utf-8"></script>
    <script src="<%=basePath%>js/personal-js/hoverintent.js" type="text/javascript" charset="utf-8"></script>
    <script src="<%=basePath%>js/personal-js/organictabs.jquery.js" type="text/javascript" charset="utf-8"></script>
    <!--[if lt IE 9]>
    <!--<style type="text/css">-->
        <!--@import url("style-ie8.css");-->
    <!--</style>-->
    <script src="<%=basePath%>js/personal-js/css3-mediaqueries.js" type="text/javascript" charset="utf-8"></script>
    <script>
        document.createElement('header');
        document.createElement('nav');
        document.createElement('section');
        document.createElement('article');
        document.createElement('aside');
        document.createElement('footer');
        document.createElement('hgroup');
    </script>
    <![endif]-->
    <script src="<%=basePath%>js/personal-js/javascript.js" type="text/javascript"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>
<c:import url="${basePath}header.jsp" ></c:import>

<div id="bodypat">
    <section id="container">
        <header class="clearfix">
            <!-- BEGIN LOGO -->
            <a id="headerlink" href="/ShareMaven/personalpage/personal.action" title="home">
            <img id="logo" src="<%=basePath%>img${userinfo.userimg}" alt="logo" />
            <span id="sitename" style="font-size: 2.8em;">
                    ${userinfo.usernickname}
                       <%--<span>${userblog.size()*5+mycomment.size()*3+myzan.size()*2}</span>--%>
                        <c:if test="${userinfo.userstatus}==1"><span></span></c:if>
                        <c:if test="${userinfo.userstatus}==0"><span>禁言</span></c:if>
            </span>
        </a>

            <nav >
                <ul id="nav" class="clearfix" style="margin-top:35px;">
                    <!-- Menu Item 1 -->
                    <li class="current"><a href="/ShareMaven/personalpage/personal.action" title="Home"><span>首页</span></a></li>
                    <!-- Menu Item 4 -->
                    <li>
                        <a href="/ShareMaven/personalpage/dynamic.action" title="Features"><span>我的动态</span></a>
                        <ul>
                            <li><a href="/ShareMaven/personalpage/dynamic.action?id=comment" title="Features"><span>我的评论</span></a></li>
                            <li><a href="/ShareMaven/personalpage/dynamic.action?id=zan" title="Features"><span>我的赞</span></a></li>
                            <li><a href="/ShareMaven/personalpage/dynamic.action?id=collect" title="Features"><span>我的收藏</span></a></li>
                        </ul>
                    </li>
                    <!-- Menu Item 5 -->
                    <li><a href="/ShareMaven/personalpage/fellow.action" title="About"><span>关注</span></a></li>
                    <!-- Menu Item 6 -->
                    <li><a href="/ShareMaven/personalpage/data.action" title="Contact"><span>我的资料</span></a></li>
                </ul>
            </nav>
        </header>

        <section class="mainpage">
            <!-- BEGIN TOGGLE CONTENT -->
            <div class="toggle-button"><span class="toggle-indicator">+</span></div>

            <div class="toggle-content close">

                <div class="quote-bg1">
                    <div class="quote-w">
                        ${userinfo.userintroduce}
                    </div>
                </div>

            </div><!-- end .toggle-content -->
            <!-- END TOGGLE CONTENT -->
        </section><!-- end #mainpage -->

        <section id="content-mos" class="centered clearfix">
            <c:if test="${userblog.size() == 0}">
                <div class="tile medium live" style="background-color:rgba(0,0,0,0.4);width: 99%;">
                        <p style="font-size: 2.5em;color: #FFFFFF;text-align: center;height:140px;line-height: 140px;">
                            您还没有发布任何内容，快去<a href="fabu.html">发布</a>吧!
                        </p>
                </div>
            </c:if>
            <c:forEach items="${userblog}" var="blogs" varStatus="status">
                <c:if test="${status.count % 5 == 1 || status.count % 5 == 3}">
                    <a href="#article${blogs.blogId}" class="lightbox" rel="section">
                        <div class="tile large live" data-stops="0,25%,50%,75%,100%" data-speed="3000" data-delay="0" data-direction="horizontal" data-stack="true">
                            <div class="live-front">
                                <img class="live-img" src="<%=basePath%>${blogs.pics.pic}" alt="Article 1" />
                            </div>
                            <div class="live-back">
                                <img class="live-img" src="<%=basePath%>${blogs.pics.pic}" alt="Article 1" />
                            </div>
                            <span class="tile-date redtxt">
                                <span class="date" style="color: orange;">
                                    <fmt:formatDate value="${blogs.blogcreatetime}" pattern="dd" />
                                </span>
                                <span class="month" style="color: orange;">
                                    <fmt:formatDate value="${blogs.blogcreatetime}" pattern="MM"/>
                                </span>
                            </span>
                                <%--<span class="tile-cat red">Illustration</span>--%>
                        </div>
                    </a>
                    <div class="tile-pre">
                        <article id="article${blogs.blogId}" class="lb-article">
                            <div class="article-img">
                                <div class="flexslider postslide">
                                    <ul class="slides">
                                        <li>
                                            <img class="tile-pre-img" src="<%=basePath%>${blogs.pics.pic}" alt="Article 1" />
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="article-date redtxt">
                                <span class="date" style="font-size: 20px;color: orange;">
                                    <fmt:formatDate value="${blogs.blogcreatetime}" pattern="YY-MM-dd hh:mm:ss" /></span>
                            </div>
                            <span class="postcat redtxt">&nbsp;</span>
                            <div class="lb-excerpt">
                                <p><b>${blogs.blogcontent}</b>...</p>
                                <p><a class="exp-button" href="singleblogpost-1.html">Read More &#8594;</a></p>
                            </div>
                        </article>
                    </div>
                </c:if>
                <c:if test="${status.count % 5 == 2}">
                    <a href="#article${blogs.blogId}" class="lightbox" rel="section">
                        <div class="tile medium live" data-stops="0,75%,100%" data-speed="750" data-delay="1500">
                            <div class="live-front blue">
                                <img class="live-img" src="<%=basePath%>${blogs.pics.pic}" alt="Article 2" />
                            </div>
                            <div class="live-back green">
                                <img class="live-img" src="<%=basePath%>${blogs.pics.pic}" alt="Article 2" />
                            </div>
                            <span class="tile-date limetxt">
                                <span class="date" style="color: orange;">
                                    <fmt:formatDate value="${blogs.blogcreatetime}" pattern="dd" />
                                </span>
                                <span class="month" style="color: orange;">
                                    <fmt:formatDate value="${blogs.blogcreatetime}" pattern="MM"/>
                                </span>
                            </span>
                        </div>
                    </a>
                    <div class="tile-pre">
                        <article id="article${blogs.blogId}" class="lb-article">
                            <div class="article-img">
                                <div class="flexslider postslide">
                                    <ul class="slides">
                                        <li>
                                            <img class="tile-pre-img" src="<%=basePath%>${blogs.pics.pic}" alt="Article Two" />
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="article-date limetxt">

                                <span class="date" style="font-size: 20px;color: orange;">
                                    <fmt:formatDate value="${blogs.blogcreatetime}" pattern="YY-MM-dd hh:mm:ss" /></span>
                                </span>
                            </div>
                            <span class="postcat limetxt">&nbsp;</span>
                            <div class="lb-excerpt">
                                <p><b>${blogs.blogcontent}</b>...</p>
                                <p><a class="exp-button" href="singleblogpost-1.html">Read More &#8594;</a></p>
                            </div>
                        </article>
                    </div>
                </c:if>
                <c:if test="${status.count % 5 == 4}">
                    <a href="#portfolio${blogs.blogId}" class="lightbox" rel="section">
                        <div class="tile small">
                            <img class="live-img" src="<%=basePath%>${blogs.pics.pic}" alt="Project Three" />
                        </div>
                    </a>
                    <!-- Lightbox Article Preview -->
                    <div class="tile-pre">
                        <article id="portfolio${blogs.blogId}" class="lb-portfolio">
                            <div class="portfolio-img">
                                <img class="tile-pre-img" src="<%=basePath%>${blogs.pics.pic}" alt="Project Three" />
                            </div>
                            <div class="lb-port-cont">
                                <span class="projectcat redtxt">&nbsp;</span>
                                <div class="lb-desc">
                                    <p><b>${blogs.blogcontent}</b>...</p>
                                    <p><a class="exp-button" href="singleportfolio.html">Read More &#8594;</a></p>
                                </div>
                            </div>
                        </article>
                    </div>
                </c:if>
                <c:if test="${status.count % 5 == 0}">
                    <a href="#quotation${blogs.blogId}" class="lightbox" rel="section">
                        <div class="tile small live" data-mode="flip" data-stops="100%" data-speed="750" data-delay="4000">
                            <div class="live-front">
                                <img class="live-img" src="<%=basePath%>${blogs.pics.pic}" alt="Quotation" />
                            </div>
                            <div class="live-back">
                                <img class="live-img" src="<%=basePath%>${blogs.pics.pic}" alt="Quotation" />
                            </div>
                        </div>
                    </a>
                    <div class="tile-pre">
                        <article id="quotation${blogs.blogId}" class="lb-article">
                            <div class="portfolio-img">
                                <img class="tile-pre-img" src="<%=basePath%>${blogs.pics.pic}" alt="Project Three" />
                            </div>
                            <div class="lb-port-cont">
                                    <%--<h1 class="lb-project"><a href="singleportfolio.html">Project Three</a></h1>--%>
                                <span class="projectcat redtxt">&nbsp;</span>
                                <div class="lb-desc">
                                    <p><b>${blogs.blogcontent}</b>...</p>
                                    <p><a class="exp-button" href="singleportfolio.html">Read More &#8594;</a></p>
                                </div>
                            </div>
                        </article>
                    </div>
                </c:if>
            </c:forEach>

            <!-- END TILE CONTENT -->
        </section><!-- end #content-mos-->

        <section class="mainpage">
            <!-- BEGIN TOGGLE CONTENT -->
            <div class="toggle-button"><span class="toggle-indicator">+</span></div>

            <div class="toggle-content close clearfix">
                <!-- Item 1 -->
                <div class="fixed-medium" style="width: 33%;height: 150px">
                    <div class="highlights-txt">
                        <c:if test="${mycomment.size() == 0}">
                            <p style="font-size:1.8em ">您还没有任何点评，快去<a href="#">逛逛</a>吧！</p>
                        </c:if>
                        <c:if test="${mycomment.size() > 0}">
                            <div style="float:left;height:50%;">
                                <a href="#" style="float:left;margin-left:10px;width: 28%">
                                    <img style="height:60px;width:60px" src="<%=basePath%>img${mycomment.get(0).userimg}"/>
                                </a>
                                <a style="float:left;font-size: 2.0em;text-align:left;" href="#">
                                        ${mycomment.get(0).usernickname}&nbsp;
                                </a>
                                <a style="float:left;font-size: 1.6em;color: #FFFFFF;">
                                    <fmt:formatDate  value="${mycomment.get(0).blogcreatetime}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate>
                                </a>
                            </div>
                            <div style="float:left;">
                                <P style="text-align:left;font-size:1.7em;width:280px;height:40px;line-height:40px;white-space:nowrap; text-overflow:ellipsis;overflow:hidden;">
                                    <a href="#" style="color:#FFFFFF; ">${mycomment.get(0).blogcontent}</a>
                                </P>
                                <p style="text-align:right;font-size:1.2em;margin: -25px 20px 0 0"><a href="/ShareMaven/personalpage/dynamic.action?id=comment">更多我的点评>></a></p>
                            </div>
                        </c:if>
                    </div>
                </div>
                <!-- Item 2 -->
                <div class="fixed-medium" style="width: 33%;height: 150px;">
                    <div class="highlights-txt">
                        <c:if test="${myzan.size() == 0}">
                            <p style="font-size:1.8em ">您还没有任何赞，快去<a href="#">逛逛</a>吧！</p>
                        </c:if>
                        <c:if test="${myzan.size() > 0}">
                            <div style="float:left;height:50%;">
                                <a href="#" style="float:left;margin-left:10px;width: 28%">
                                    <img style="height:60px;width:60px" src="<%=basePath%>img${myzan.get(0).userimg}"/>
                                </a>
                                <a style="float:left;font-size: 2.0em;text-align:left;" href="#">
                                        ${myzan.get(0).usernickname}&nbsp;
                                </a>
                                <a style="float:left;font-size: 1.6em;color: #FFFFFF;">
                                    <fmt:formatDate  value="${myzan.get(0).blogcreatetime}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate>
                                </a>
                            </div>
                            <div style="float:left;">
                                <P style="text-align:left;font-size:1.7em;width:280px;height:40px;line-height:40px;white-space:nowrap; text-overflow:ellipsis;overflow:hidden;">
                                    <a href="#" style="color:#FFFFFF; ">${myzan.get(0).blogcontent}</a>
                                </P>
                                <p style="text-align:right;font-size:1.2em;margin: -25px 20px 0 0"><a href="/ShareMaven/personalpage/dynamic.action?id=zan">更多我的赞>></a></p>
                            </div>
                        </c:if>
                    </div>
                </div>
                <!-- Item 3 -->
                <div class="fixed-medium last" style="width: 33%;height: 150px;">
                    <div class="highlights-txt">
                        <c:if test="${mycollect.size() == 0}">
                            <p style="font-size:1.8em">您还没有任何收藏，快去<a href="#">逛逛</a>吧！</p>
                        </c:if>
                        <c:if test="${mycollect.size() > 0}">
                            <div style="float:left;height:50%;overflow: hidden">
                                <a href="#" style="float:left;margin-left:10px;width: 28%">
                                    <img style="height:60px;width:60px" src="<%=basePath%>img${mycollect.get(0).userimg}"/>
                                </a>
                                <a style="float:left;font-size: 2.0em;text-align:left;" href="#">
                                        ${mycollect.get(0).usernickname}&nbsp;
                                </a>
                                <a style="float:left;font-size: 1.6em;color: #FFFFFF;">
                                    <fmt:formatDate  value="${mycollect.get(0).blogcreatetime}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate>
                                </a>
                            </div>
                            <div style="float:left;">
                                <P style="text-align:left;font-size:1.7em;width:280px;height:40px;line-height:40px;white-space:nowrap; text-overflow:ellipsis;overflow:hidden;">
                                    <a href="#" style="color:#FFFFFF; ">${mycollect.get(0).blogcontent}</a>
                                </P>
                                <p style="text-align:right;font-size:1.2em;margin: -25px 20px 0 0"><a href="/ShareMaven/personalpage/dynamic.action?id=collect">更多我的收藏>></a></p>
                            </div>
                        </c:if>
                    </div>
                </div>

            </div><!-- end .toggle-content -->

        </section><!-- end .main-page -->

        <footer class="clearfix">

            <div id="footer-social">
                <a href="#"><span class="behance-mini"></span></a>
                <a href="#"><span class="twitter-mini"></span></a>
                <a href="#"><span class="facebook-mini"></span></a>
                <a href="#"><span class="linkedin-mini"></span></a>
                <a href="#"><span class="pinterest-mini"></span></a>
                <a href="#"><span class="dribbble-mini"></span></a>
            </div><!-- end #footer-social -->

        </footer>

    </section><!-- end #container -->
</div>

</body>
</html>

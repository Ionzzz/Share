<%--
  Created by IntelliJ IDEA.
  User: Danmon
  Date: 2018/6/21
  Time: 20:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>我的动态</title>
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
    <%--<script charset="utf-8" src="http://widgets.twimg.com/j/2/widget.js"></script>--%>
    <!--[if lt IE 9]>
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
                         <c:if test="${userinfo.userstatus}==1"><span></span></c:if>
                        <c:if test="${userinfo.userstatus}==0"><span>禁言</span></c:if>
            </span>
            </a>

            <nav>
                <ul id="nav" class="clearfix" style="margin-top:35px;">
                    <!-- Menu Item 1 -->
                    <li><a href="/ShareMaven/personalpage/personal.action" title="Home"><span>首页</span></a></li>
                    <!-- Menu Item 4 -->
                    <li class="current">
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


        <section id="content" class="clearfix">
            <!-- Title -->
            <div id="content-title" style="font-size: 2.5em;margin-left: -20px">
                <a href="<%=basePath%>personalpage/dynamic.action?id=comment">我的点评</a>
                &nbsp;<a href="<%=basePath%>personalpage/dynamic.action?id=zan">我的赞</a>
                &nbsp;<a href="<%=basePath%>personalpage/dynamic.action?id=collect">我的收藏</a>
            </div>

            <!-- BEGIN LEFT CONTENT -->
            <section id="bloglist-left" class="clearfix">
                <c:if test="${myallcomment.size() == 0}">
                    <div class="bloglist" style="background-color:rgba(0,0,0,0.4)">
                        <p style="font-size: 2.5em;color: #FFFFFF;text-align: center;height:140px;line-height: 140px;">
                            您还没有任何${id}，快去<a href="首页.html">逛逛</a>吧!
                        </p>
                    </div>
                </c:if>
                <c:forEach items="${myallcomment}" var="myallcomments">
                    <c:if test="${id == 'comment' || id == null}">
                        <div class="bloglist" style="background-color:rgba(0,0,0,0.4)">
                            <div style="float:left;height:50px;margin-bottom: 15px;">
                                <P style="text-align:left;margin-left:50px;font-size:1.8em;width:500px;height:50px;line-height: 50px; white-space:nowrap; text-overflow:ellipsis; overflow:hidden;">
                                    我的点评：${myallcomments.commentcontent}
                                </P>
                            </div>
                            <div style="height: 60%">
                                <div style="float:left;width:24%;">
                                    <a href="#">
                                        <img style="height:100%" src="<%=basePath%>img${myallcomments.userimg}"/>
                                    </a>
                                </div>
                                <div style="float:left;width:70%;">
                                    <p style="font-size: 2.2em;text-align:left;">
                                        <a href="#">${myallcomments.usernickname}</a>
                                        <a style="float:right;font-size: 0.7em;color: #FFFFFF;">
                                            <fmt:formatDate  value="${myallcomments.blogcreatetime}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate>
                                        </a>
                                    </p>
                                    <P style="text-align:left;font-size:1.8em;width:400px;height:50px;white-space:nowrap; text-overflow:ellipsis;overflow:hidden;">
                                        <a href="#" style="color:#FFFFFF; ">${myallcomments.blogcontent}</a>
                                    </P>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${id != 'comment' && id != null}">
                        <div class="bloglist" style="background-color:rgba(0,0,0,0.4)">
                            <div style="float:left;height:30px;">
                                <P style="text-align:left;margin-left:50px;font-size:1.8em;width:500px;height:50px;line-height: 50px; white-space:nowrap; text-overflow:ellipsis; overflow:hidden;">
                                </P>
                            </div>
                            <div style="height: 60%">
                                <div style="float:left;width:24%;">
                                    <a href="#">
                                        <img style="height:100%" src="<%=basePath%>img${myallcomments.userimg}"/>
                                    </a>
                                </div>
                                <div style="float:left;width:70%;">
                                    <p style="font-size: 2.2em;text-align:left;">
                                        <a href="#">${myallcomments.usernickname}</a>
                                        <a style="float:right;font-size: 0.7em;color: #FFFFFF;">
                                            <fmt:formatDate  value="${myallcomments.blogcreatetime}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate>
                                        </a>
                                    </p>
                                    <P style="text-align:left;font-size:1.8em;width:400px;height:50px;white-space:nowrap; text-overflow:ellipsis;overflow:hidden;">
                                        <a href="#" style="color:#FFFFFF; ">${myallcomments.blogcontent}</a>
                                    </P>
                                </div>
                            </div>
                        </div>
                    </c:if>
                </c:forEach>

            </section>
            <!-- END LEFT CONTENT -->

            <!-- BEGIN SIDEBAR -->
            <section id="sidebar">

                <div id="search" class="widget" style="background: none;padding: 0">
                    <form action=" " />
                    <input id="search-field" type="search" name="sitesearch" class="placeholder" placeholder="Search" />
                    <input type="submit" id="search-submit" value=" " />
                    </form>
                </div><!-- end #search -->

                <%--<div id="recent-box" class="widget">--%>
                    <%--<h5>Latest Articles</h5>--%>
                    <%--<ul class="articles-widget">--%>
                        <%--<li>--%>
                            <%--<a href="singleblotpost-1.html">--%>
                                <%--<img src="images/articles/article1_med.png" alt="Article 1" />--%>
                                <%--<div class="title">This is the title of Article 1<br /><span class="redtxt">Illustration</span></div>--%>
                                <%--<div class="more"></div>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<a href="singleblotpost-1.html">--%>
                                <%--<img src="images/articles/article2_med.png" alt="Article 2" />--%>
                                <%--<div class="title">This is the title of Article 2<br /><span class="limetxt">Cartoon Design</span></div>--%>
                                <%--<div class="more"></div>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<a href="singleblotpost-1.html">--%>
                                <%--<img src="images/articles/article3_med.png" alt="Article 3" />--%>
                                <%--<div class="title">This is the title of Article 3<br /><span class="tealtxt">Graphic Design</span></div>--%>
                                <%--<div class="more"></div>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                    <%--</ul>--%>
                <%--</div><!-- end #recent-box -->--%>

                <%--<div id="archive-box" class="widget">--%>
                    <%--<h5>Archive</h5>--%>
                    <%--<table id="archive">--%>
                        <%--<thead>--%>
                        <%--<tr>--%>
                            <%--<th title="Monday" scope="col">M</th>--%>
                            <%--<th title="Tuesday" scope="col">T</th>--%>
                            <%--<th title="Wednesday" scope="col">W</th>--%>
                            <%--<th title="Thursday" scope="col">T</th>--%>
                            <%--<th title="Friday" scope="col">F</th>--%>
                            <%--<th title="Saturday" scope="col">S</th>--%>
                            <%--<th title="Sunday" scope="col">S</th>--%>
                        <%--</tr>--%>
                        <%--</thead>--%>
                        <%--<tbody>--%>
                        <%--<tr>--%>
                            <%--<td class="none">&nbsp;</td>--%>
                            <%--<td class="none">&nbsp;</td>--%>
                            <%--<td class="none">1</td>--%>
                            <%--<td class="none">2</td>--%>
                            <%--<td class="red">3</td>--%>
                            <%--<td class="teal">4</td>--%>
                            <%--<td class="green">5</td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                            <%--<td class="blue">6</td>--%>
                            <%--<td class="none">7</td>--%>
                            <%--<td class="lime">8</td>--%>
                            <%--<td class="blue">9</td>--%>
                            <%--<td class="green">10</td>--%>
                            <%--<td class="red">11</td>--%>
                            <%--<td class="none">12</td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                            <%--<td class="blue">13</td>--%>
                            <%--<td class="red">14</td>--%>
                            <%--<td class="lime">15</td>--%>
                            <%--<td class="teal">16</td>--%>
                            <%--<td class="green">17</td>--%>
                            <%--<td class="none">18</td>--%>
                            <%--<td class="brown">19</td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                            <%--<td class="teal">20</td>--%>
                            <%--<td class="green">21</td>--%>
                            <%--<td class="brown">22</td>--%>
                            <%--<td class="blue">23</td>--%>
                            <%--<td class="none">24</td>--%>
                            <%--<td class="red">25</td>--%>
                            <%--<td class="green">26</td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                            <%--<td class="lime">27</td>--%>
                            <%--<td class="lime">28</td>--%>
                            <%--<td class="brown">29</td>--%>
                            <%--<td class="none">30</td>--%>
                            <%--<td class="green">31</td>--%>
                            <%--<td class="none">&nbsp;</td>--%>
                            <%--<td class="none">&nbsp;</td>--%>
                        <%--</tr>--%>
                        <%--</tbody>--%>
                        <%--<tfoot>--%>
                        <%--<tr>--%>
                            <%--<td id="prev">&#8249;</td>--%>
                            <%--<td id="month" colspan="5">August</td>--%>
                            <%--<td id="next">&#8250;</td>--%>
                        <%--</tr>--%>
                        <%--</tfoot>--%>
                    <%--</table>--%>
                <%--</div><!-- end #archive-box -->--%>

                <%--<div class="widget text-widget">--%>
                    <%--<h5>Text Widget</h5>--%>
                    <%--<p>Just some plain text, nothing special here. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sagittis sollicitudin aliquet. Nullam ut sapien eros, aliquet gravida turpis. Cras nec risus magna.</p>--%>
                <%--</div><!-- end .text-widget -->--%>


                <%--<div id="twitter" class="widget">--%>
                    <%--<h5>Latest Tweets</h5>--%>
                    <%--<ul id="tweeter">--%>
                    <%--</ul>--%>

                <%--</div><!-- end #twitter -->--%>

            </section>
            <!-- END SIDEBAR -->
        </section>

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


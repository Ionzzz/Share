<%--
  Created by IntelliJ IDEA.
  User: ion
  Date: 2018/5/28
  Time: 19:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>）
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>

    <title>Hot of Share</title>

    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta charset="utf-8">
    <meta name="author" content="">
    <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSS -->
    <link rel="stylesheet" href="<%=basePath%>css/index-css/fonts/font-awesome.css">
    <link rel="stylesheet" href="<%=basePath%>css/index-css/plugins.css">
    <link rel="stylesheet" href="<%=basePath%>css/index-css/main.css">
    <link rel='stylesheet' type='text/css' href='<%=basePath%>css/index-css/nav_font.css'>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/index-css/style_1.css" />


    <style>
        .texthidden{
            white-space: nowrap;/*控制单行显示*/
            overflow: hidden;/*超出隐藏*/
            text-overflow: ellipsis;/*隐藏的字符用省略号表示*/
        }
        .default-image{
            background: url("<%=basePath%>images/index-images/default.jpg");
            no-repeat:50% 50%;
        }
    </style>
</head>
<body>

<header id="header">
    <div id="header-top">
        <div class="wrapper clearfix">
            <nav id="navigation">
                <ul class="menu">
                    <li>
                        <a href="<%=basePath%>index/main.action">首页</a>
                    </li>
                    <li>
                        <a href="<%=basePath%>new/main.action">最新</a>
                        <ul>
                            <li><a href="#">Right Sidebar</a></li>
                            <li><a href="#">Left Sidebar</a></li>
                            <li><a href="#">No Sidebar</a></li>
                        </ul>
                    </li>
                    <li class="current-menu-item"><a href="<%=basePath%>topic/all.action">话题</a></li>
                    <li><a href="<%=basePath%>single.jsp">发布</a></li>
                    <li><a href="<%=basePath%>shuDong/main.action">树洞</a></li>
                    <li><a href="<%=basePath%>about.jsp">关于我们</a></li>
                    <li><a href="<%=basePath%>contactUs.jsp">联系我们</a></li>
                </ul><!-- .menu -->
            </nav><!-- #navigation -->
            <div id="header-search">
                <div class="header-search-inner">
                    <form method="get" action="">
                        <input type="text" name="s" placeholder="Search and hit enter" autocomplete="off"/>
                    </form>
                    <span class="header-search-icon"><span class="fa fa-search"></span></span>
                </div><!-- .search-form-wrapper -->
            </div><!-- #header-search -->

        </div><!-- .wrapper -->
    </div><!-- #header-top -->

    <div id="header-main">

    </div><!-- #header-main -->
</header><!-- #header -->


<div class="featured-blog-posts"><p>最热排行榜</p>
    <div class="featured-blog-posts-inner">
        <div class="blog-posts-alt blog-posts-alt-diagonal-effect-enabled no-col-spacing carousel-container">

            <div class="carousel" data-stop-on-hover="false" data-columns="4" data-pagination="false" data-slide-speed="200" data-pagination-speed="800" data-scroll-per-page="false">

            <c:forEach items="${blogliulan}" var="bloglist">
                <div class="blog-post-alt carousel-item" style="border: 1px solid white;">
                    <div class="blog-post-alt-thumb">
                        <div class="blog-post-alt-thumb-inner" style="width:243px;overflow:hidden;text-align: center">
                            <a href="<%=basePath%>single/main.action?blogId=${bloglist.blogContent.blogId}">
                                <img src="<%=basePath%>${bloglist.blogPics.pic}" style="height:250px;" alt="" />
                            </a>
                        </div><!-- .blog-post-alt-thumb-inner -->
                        <div class="blog-post-alt-thumb-cover"></div>
                    </div><!-- .blog-post-alt-thumb -->
                    <div class="blog-post-alt-main">
                        <div class="blog-post-alt-main-inner">
                            <div class="blog-post-alt-date">
                                <fmt:formatDate  pattern="yyyy-MM-dd"
                                                value="${bloglist.blogContent.blogcreatetime}" />
                            </div><!-- .blog-post-alt-date -->
                            <div class="blog-post-alt-title texthidden">
                                <h2><a href="<%=basePath%>single/main.action?blogId=${bloglist.blogContent.blogId}">${bloglist.blogContent.blogcontent}</a></h2>
                            </div><!-- .blog-post-alt-title -->
                            <div class="blog-post-alt-cat">
                                <a href="<%=basePath%>topic/main.action?labelId=${bloglist.labelInfo.labelId}">${bloglist.labelInfo.labelname}</a>
                            </div><!-- .blog-post-alt-cat -->
                            <div class="blog-post-alt-read-more">
                                <a href="<%=basePath%>single/main.action?blogId=${bloglist.blogContent.blogId}">READ ARTICLE</a>
                            </div><!-- .blog-post-alt-read-more -->
                        </div><!-- .blog-post-alt-main-inner -->
                    </div><!-- .blog-post-alt-main -->
                </div><!-- .blog-post-alt -->
            </c:forEach>
            </div><!-- .carousel -->
            <a href="#" class="carousel-go-prev"style="height:250px;width: 100%"></a>
            <a href="#" class="carousel-go-next"style="height:250px;width: 100%"></a>
        </div><!-- blog-posts-alt -->
    </div><!-- #featured-blog-posts-inner -->
</div><!-- #featured-blog-posts -->

    <div id="main">
        <div id="sidebar" class="col" style="width: 30%">
            <div class="widget">
                <h3 class="widget-title">
                    <span class="widget-title-line"></span>
                    <span class="widget-title-text">Tag</span>
                </h3>
                <div class="widget-content">
                    <div class="tags-cloud-widget"style="text-align: center">
                        <c:forEach items="${labelList}" var="labellist">
                            <a href="<%=basePath%>/topic/main.action?labelId=${labellist.labelId}" class="fh5co_tagg" title="${labellist.labelname}">${labellist.labelname}</a>
                        </c:forEach>
                    </div><!-- .tags-cloud-widget -->
                </div><!-- .widget-content -->
            </div><!-- .widget -->

            <div class="widget">
                <h3 class="widget-title">
                    <span class="widget-title-line"></span>
                    <span class="widget-title-text">Recent Posts</span>
                </h3>
                <div class="widget-content">
                    <div class="recent-posts-widget">
                        <c:forEach items="${bloglist}" var="list" begin="0" end="4">
                            <div class="recent-posts-widget-post">
                                <div class="recent-posts-widget-thumb">
                                    <a href="<%=basePath%>/single/main.action?blogId=${list.blogContent.blogId}"><img src="<%=basePath%>${list.blogPics.pic}" alt="" /></a>
                                </div><!-- .recent-posts-widget-thumb -->
                                <div class="recent-posts-widget-main">
                                    <div class="recent-posts-widget-date">
                                        <fmt:formatDate  pattern="MM_dd,yyyy"
                                                         value="${list.blogContent.blogcreatetime}" />
                                    </div>
                                    <div class="recent-posts-widget-title texthidden">
                                        <a href="<%=basePath%>/single/main.action?blogId=${list.blogContent.blogId}">${list.blogContent.blogcontent}</a></div>
                                    <div class="recent-posts-widget-category">
                                        <a href="<%=basePath%>/topic/main.action?labelId=${list.labelInfo.labelId}">${list.labelInfo.labelname}</a></div>
                                </div><!-- .recent-posts-widget-main -->
                            </div><!-- .recent-posts-widget-post -->
                        </c:forEach>
                    </div><!-- .recent-posts-widget -->
                </div><!-- .widget-content -->
            </div><!-- .widget -->
        </div><!-- #sidebar -->


        <div id="content" class="col" style="width:70%" >
            <div class="blog-posts clearfix">
                <c:forEach items="${labelList}" var="labellist" varStatus="status">
                    <div class="blog-post col col-4">
                        <div class="blog-post-main clearfix">
                            <div class="blog-post-info" style="padding: 20px 55px">
                                <div class="blog-post-info-inner">
                                    <div class="blog-post-title" style="margin-bottom: 0">
                                        <h2 class="texthidden">
                                            <a href="<%=basePath%>topic/main.action?labelId=${labellist.labelId}" >
                                                    ${labellist.labelname}
                                            </a>
                                        </h2>
                                    </div><!-- .blog-post-title -->
                                    <div class="blog-post-meta">
                                        <fmt:formatDate  pattern="MM dd,yyyy"
                                                         value="${labellist.labelmodifytime}" />
                                        <div id="season${status.count}" style="display: none" ><fmt:formatDate  pattern="MM"
                                                                                                                value="${labellist.labelmodifytime}" /></div>
                                        <a id="seasons${status.count}">
                                        </a>
                                        <script type="text/javascript">
                                            var month=document.getElementById("season${status.count}").innerHTML;
                                            //alert(month);
                                            switch(month){
                                                case "03":
                                                case "04":
                                                case "05": document.getElementById("seasons${status.count}").innerHTML="In:Spring";
                                                    break;
                                                case "06":
                                                case "07":
                                                case "08": document.getElementById("seasons${status.count}").innerHTML="In:Summer";
                                                    break;
                                                case "09":
                                                case "10":
                                                case "11": document.getElementById("seasons${status.count}").innerHTML="In:Autumn";
                                                    break;
                                                case "12":
                                                case "01":
                                                case "02": document.getElementById("seasons${status.count}").innerHTML="In:Winter";
                                                    break;
                                                default:break;
                                            }
                                        </script>
                                    </div><!-- .blog-post-meta -->
                                    <div class="blog-post-excerpt texthidden" >
                                        ${labellist.labelcontent}
                                    </div><!-- .dslc-blog-post-excerpt -->
                                    <div class="blog-post-read-more"style="text-align: center;margin-bottom: 10px;">
                                        <a href="<%=basePath%>topic/main.action?labelId=${labellist.labelId}">CONTINUE READING</a>
                                    </div><!-- .blog-post-read-more -->
                                </div><!-- .blog-post-info-inner -->
                            </div><!-- .blog-post-info -->
                        </div><!-- .blog-post-main -->
                    </div><!-- .blog-post -->
                </c:forEach>
            </div><!-- .blog-posts -->
        </div><!-- #content -->
    </div><!-- .wrapper -->
</div><!-- #main -->

<!-- JavaScript -->
<script type="text/javascript" src="<%=basePath%>js/index-js/javascript/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/index-js/javascript/plugins.js"></script>
<script type="text/javascript" src="<%=basePath%>js/index-js/javascript/main.js"></script>

</body>
</html>

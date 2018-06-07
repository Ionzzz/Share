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
                        <a href="new.jsp">最新</a>
                        <ul>
                            <li><a href="#">Right Sidebar</a></li>
                            <li><a href="#">Left Sidebar</a></li>
                            <li><a href="#">No Sidebar</a></li>
                        </ul>
                    </li>
                    <li class="current-menu-item"><a href="topic.jsp">话题</a></li>
                    <li><a href="single.jsp">发布</a></li>
                    <li><a href="treehole.jsp">树洞</a></li>
                    <li><a href="about.jsp">关于我们</a></li>
                    <li><a href="contactUs.jsp">联系我们</a></li>
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



<div class="featured-blog-posts">
    <div class="featured-blog-posts-inner">
        <div class="blog-posts-alt blog-posts-alt-diagonal-effect-enabled no-col-spacing carousel-container">
            <div class="carousel" data-stop-on-hover="false" data-columns="4" data-pagination="false" data-slide-speed="200" data-pagination-speed="800" data-scroll-per-page="false">

            <c:forEach items="${blogJiaJu}" var="blogjiaju">
                <div class="blog-post-alt carousel-item">
                    <div class="blog-post-alt-thumb">
                        <div class="blog-post-alt-thumb-inner">
                            <a href="single.jsp"><img src="<%=basePath%>${blogjiaju.blogPics.pic}" style="height:300px;width: 100%" alt="" /></a>
                        </div><!-- .blog-post-alt-thumb-inner -->
                        <div class="blog-post-alt-thumb-cover"></div>
                    </div><!-- .blog-post-alt-thumb -->
                    <div class="blog-post-alt-main">
                        <div class="blog-post-alt-main-inner">
                            <div class="blog-post-alt-date">
                                <fmt:formatDate type="both"
                                                dateStyle="long" timeStyle="long"
                                                value="${blogjiaju.blogContent.blogcreatetime}" />
                            </div><!-- .blog-post-alt-date -->
                            <div class="blog-post-alt-title">
                                <h2><a href="single.jsp">Strawberry Shortcake</a></h2>
                            </div><!-- .blog-post-alt-title -->
                            <div class="blog-post-alt-cat">
                                <a href="single.jsp">Food</a>
                            </div><!-- .blog-post-alt-cat -->
                            <div class="blog-post-alt-read-more">
                                <a href="single.jsp">READ ARTICLE</a>
                            </div><!-- .blog-post-alt-read-more -->
                        </div><!-- .blog-post-alt-main-inner -->
                    </div><!-- .blog-post-alt-main -->
                </div><!-- .blog-post-alt -->
            </c:forEach>
            </div><!-- .carousel -->
            <a href="#" class="carousel-go-prev"></a>
            <a href="#" class="carousel-go-next"></a>
        </div><!-- blog-posts-alt -->
    </div><!-- #featured-blog-posts-inner -->
</div><!-- #featured-blog-posts -->


<div id="main">
    <div class="wrapper clearfix">
        <div id="content" class="col col-8">
            <div class="blog-posts clearfix">

                <div class="blog-post">

                    <div class="blog-post-thumb">
                        <a href="single.jsp"><img src="<%=basePath%>images/index-images/logo.png" alt="" /></a>
                    </div><!-- .blog-post-thumb -->

                    <div class="blog-post-main clearfix">

                        <div class="blog-post-author">

                            <div class="blog-post-author-avatar">
                                <img src="<%=basePath%>images/index-images/blog-posts/avatar.png" alt="" />
                            </div><!-- .blog-post-author-avatar -->

                            <div class="blog-post-author-name">
                                <span>Posted By</span>
                                <a href="#">admin</a>
                            </div><!-- .blog-post-author-name -->

                            <div class="blog-post-tags">
                                <a href="#">one</a><a href="#">two</a><a href="#">three</a>
                            </div><!-- .blog-post-tags -->

                        </div><!-- .blog-post-author -->

                        <div class="blog-post-info">

                            <div class="blog-post-info-inner">

                                <div class="blog-post-title">
                                    <h2><a href="single.jsp">Decorating New Office</a></h2>
                                </div><!-- .blog-post-title -->

                                <div class="blog-post-meta">
                                    April 1, 2015, In: <a href="#">Photography</a>
                                </div><!-- .blog-post-meta -->

                                <div class="blog-post-excerpt">
                                    Curabitur congue dolor sed massa feugiat, sit amet tempor orci convallis. Donec lacus magna, semper eget nisl sed, posuere pellentesque tellus. Cras mauris tellus, ultricies quis hendrerit imperdiet, faucibus non nulla. Cras ex dolor, aliquet eget enim nec, luctus congue nisi. Fusce facilisis in erat vitae cursus.
                                </div><!-- .dslc-blog-post-excerpt -->

                                <div class="blog-post-read-more">
                                    <a href="single.jsp">CONTINUE READING</a>
                                </div><!-- .blog-post-read-more -->

                            </div><!-- .blog-post-info-inner -->

                        </div><!-- .blog-post-info -->

                    </div><!-- .blog-post-main -->

                </div><!-- .blog-post -->

                <div class="blog-post">

                    <div class="blog-post-thumb">
                        <a href="single.jsp"><img src="<%=basePath%>images/index-images/blog-posts/post-2.jpg" alt="" /></a>
                    </div><!-- .blog-post-thumb -->

                    <div class="blog-post-main clearfix">

                        <div class="blog-post-author">

                            <div class="blog-post-author-avatar">
                                <img src="<%=basePath%>images/index-images/blog-posts/avatar.png" alt="" />
                            </div><!-- .blog-post-author-avatar -->

                            <div class="blog-post-author-name">
                                <span>Posted By</span>
                                <a href="#">admin</a>
                            </div><!-- .blog-post-author-name -->

                            <div class="blog-post-tags">
                                <a href="#">one</a><a href="#">two</a><a href="#">three</a>
                            </div><!-- .blog-post-tags -->

                        </div><!-- .blog-post-author -->

                        <div class="blog-post-info">

                            <div class="blog-post-info-inner">

                                <div class="blog-post-title">
                                    <h2><a href="single.jsp">Metal Ampersand On Books</a></h2>
                                </div><!-- .blog-post-title -->

                                <div class="blog-post-meta">
                                    April 1, 2015, In: <a href="#">Photography</a>
                                </div><!-- .blog-post-meta -->

                                <div class="blog-post-excerpt">
                                    Curabitur congue dolor sed massa feugiat, sit amet tempor orci convallis. Donec lacus magna, semper eget nisl sed, posuere pellentesque tellus. Cras mauris tellus, ultricies quis hendrerit imperdiet, faucibus non nulla. Cras ex dolor, aliquet eget enim nec, luctus congue nisi. Fusce facilisis in erat vitae cursus.
                                </div><!-- .dslc-blog-post-excerpt -->

                                <div class="blog-post-read-more">
                                    <a href="single.jsp">CONTINUE READING</a>
                                </div><!-- .blog-post-read-more -->

                            </div><!-- .blog-post-info-inner -->

                        </div><!-- .blog-post-info -->

                    </div><!-- .blog-post-main -->

                </div><!-- .blog-post -->

                <div class="blog-post">

                    <div class="blog-post-thumb">
                        <a href="single.jsp"><img src="<%=basePath%>images/index-images/blog-posts/post-3.jpg" alt="" /></a>
                    </div><!-- .blog-post-thumb -->

                    <div class="blog-post-main clearfix">

                        <div class="blog-post-author">

                            <div class="blog-post-author-avatar">
                                <img src="<%=basePath%>images/index-images/blog-posts/avatar.png" alt="" />
                            </div><!-- .blog-post-author-avatar -->

                            <div class="blog-post-author-name">
                                <span>Posted By</span>
                                <a href="#">admin</a>
                            </div><!-- .blog-post-author-name -->

                            <div class="blog-post-tags">
                                <a href="#">one</a><a href="#">two</a><a href="#">three</a>
                            </div><!-- .blog-post-tags -->

                        </div><!-- .blog-post-author -->

                        <div class="blog-post-info">

                            <div class="blog-post-info-inner">

                                <div class="blog-post-title">
                                    <h2><a href="single.jsp">Blueberry Protein Shake</a></h2>
                                </div><!-- .blog-post-title -->

                                <div class="blog-post-meta">
                                    April 1, 2015, In: <a href="#">Food</a>
                                </div><!-- .blog-post-meta -->

                                <div class="blog-post-excerpt">
                                    Curabitur congue dolor sed massa feugiat, sit amet tempor orci convallis. Donec lacus magna, semper eget nisl sed, posuere pellentesque tellus. Cras mauris tellus, ultricies quis hendrerit imperdiet, faucibus non nulla. Cras ex dolor, aliquet eget enim nec, luctus congue nisi. Fusce facilisis in erat vitae cursus.
                                </div><!-- .dslc-blog-post-excerpt -->

                                <div class="blog-post-read-more">
                                    <a href="single.jsp">CONTINUE READING</a>
                                </div><!-- .blog-post-read-more -->

                            </div><!-- .blog-post-info-inner -->

                        </div><!-- .blog-post-info -->

                    </div><!-- .blog-post-main -->

                </div><!-- .blog-post -->

            </div><!-- .blog-posts -->
            <!--
                            <div class="pagination">
                                <a href="#" class="current-pagination-item">1</a>
                                <a href="#">2</a>
                                <a href="#">3</a>
                                <a href="#">4</a>
                                <a href="#">5</a>
                            </div>.pagination -->

        </div><!-- #content -->

        <div id="sidebar" class="col col-4 col-last">

            <div class="widget">

                <div class="about-author-widget">
                    <div class="about-author-widget-banner">
                        <img src="<%=basePath%>images/index-images/widget-about-author/banner.png" alt="" />
                    </div>
                    <div class="about-author-widget-avatar">
                        <img src="<%=basePath%>images/index-images/widget-about-author/avatar.png" alt="" />
                    </div>
                    <h2 class="about-author-widget-name">Stephany Moore</h2>
                    <h3 class="about-author-widget-position">Lifestyle Blogger</h3>
                    <div class="about-author-widget-text">
                        Cras mauris tellus, ultricies quis hendrerit imperdiet, faucibus non nulla cras ex dolor aliquet eget.
                    </div>

                </div><!-- .about-author-widget -->

            </div><!-- .widget -->

            <div class="widget">

                <h3 class="widget-title">
                    <span class="widget-title-line"></span>
                    <span class="widget-title-text">Textual</span>
                </h3>

                <div class="widget-content">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                    tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.
                </div><!-- .widget-content -->

            </div><!-- .widget -->

            <div class="widget">

                <h3 class="widget-title">
                    <span class="widget-title-line"></span>
                    <span class="widget-title-text">Recent Posts</span>
                </h3>

                <div class="widget-content">

                    <div class="recent-posts-widget">

                        <div class="recent-posts-widget-post">

                            <div class="recent-posts-widget-thumb">
                                <a href="single.jsp"><img src="<%=basePath%>images/index-images/widget-recent-posts/post-1.jpg" alt="" /></a>
                            </div><!-- .recent-posts-widget-thumb -->

                            <div class="recent-posts-widget-main">

                                <div class="recent-posts-widget-date">October 7th, 2015</div>
                                <div class="recent-posts-widget-title"><a href="single.jsp">Strawberry Cake</a></div>
                                <div class="recent-posts-widget-category"><a href="#">Food</a></div>

                            </div><!-- .recent-posts-widget-main -->

                        </div><!-- .recent-posts-widget-post -->

                        <div class="recent-posts-widget-post">

                            <div class="recent-posts-widget-thumb">
                                <a href="single.jsp"><img src="<%=basePath%>images/index-images/widget-recent-posts/post-2.jpg" alt="" /></a>
                            </div><!-- .recent-posts-widget-thumb -->

                            <div class="recent-posts-widget-main">

                                <div class="recent-posts-widget-date">October 7th, 2015</div>
                                <div class="recent-posts-widget-title"><a href="single.jsp">Girl With A Rose</a></div>
                                <div class="recent-posts-widget-category"><a href="#">Photography</a></div>

                            </div><!-- .recent-posts-widget-main -->

                        </div><!-- .recent-posts-widget-post -->

                        <div class="recent-posts-widget-post">

                            <div class="recent-posts-widget-thumb">
                                <a href="single.jsp"><img src="<%=basePath%>images/index-images/widget-recent-posts/post-3.jpg" alt="" /></a>
                            </div><!-- .recent-posts-widget-thumb -->

                            <div class="recent-posts-widget-main">

                                <div class="recent-posts-widget-date">October 7th, 2015</div>
                                <div class="recent-posts-widget-title"><a href="single.jsp">Cat On The Floor</a></div>
                                <div class="recent-posts-widget-category"><a href="#">Photography</a></div>

                            </div><!-- .recent-posts-widget-main -->

                        </div><!-- .recent-posts-widget-post -->

                    </div><!-- .recent-posts-widget -->

                </div><!-- .widget-content -->

            </div><!-- .widget -->
            <div class="widget">
                <h3 class="widget-title">
                    <span class="widget-title-line"></span>
                    <span class="widget-title-text">Tags</span>
                </h3>

                <div class="widget-content">
                    <div class="tags-cloud-widget">
                        <a href="#" class="fh5co_tagg">音乐</a>
                        <a href="#" class="fh5co_tagg">旅行</a>
                        <a href="#" class="fh5co_tagg">美食</a>
                        <a href="#" class="fh5co_tagg">手绘</a>
                        <a href="#" class="fh5co_tagg">书籍</a>
                        <a href="#" class="fh5co_tagg">手工</a>
                        <a href="#" class="fh5co_tagg">家居</a>
                        <a href="#" class="fh5co_tagg">Lifestyle</a>
                        <a href="#" class="fh5co_tagg">Art</a>
                        <a href="#" class="fh5co_tagg">Education</a>
                        <a href="#" class="fh5co_tagg">Social</a>
                        <a href="#" class="fh5co_tagg">Three</a>
                    </div><!-- .tags-cloud-widget -->
                </div><!-- .widget-content -->

            </div><!-- .widget -->
            <div class="widget">

                <h3 class="widget-title">
                    <span class="widget-title-line"></span>
                    <span class="widget-title-text">Search</span>
                </h3>

                <div class="widget-content">
                    <form method="get" action="">
                        <input type="text" class="search-widget-input" placeholder="Type and hit enter" />
                    </form>
                </div><!-- .widget-content -->

            </div><!-- .widget -->



        </div><!-- #sidebar -->

    </div><!-- .wrapper -->

</div><!-- #main -->

<div class="padding font" style="margin-bottom: 50px;text-align: center;">
    <div class=" text-center pb-4 pt-4">
        <a href="#" class="btn_mange_pagging">&nbsp;&nbsp; Previous</a>
        <a href="#" class="btn_pagging">1</a>
        <a href="#" class="btn_pagging">2</a>
        <a href="#" class="btn_pagging">3</a>
        <a href="#" class="btn_pagging">...</a>
        <a href="#" class="btn_mange_pagging">Next&nbsp;&nbsp; </a>
    </div>
</div>
<!-- JavaScript -->
<script type="text/javascript" src="<%=basePath%>js/index-js/javascript/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/index-js/javascript/plugins.js"></script>
<script type="text/javascript" src="<%=basePath%>js/index-js/javascript/main.js"></script>

</body>
</html>

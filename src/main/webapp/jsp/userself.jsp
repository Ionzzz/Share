<%--
  Created by IntelliJ IDEA.
  User: bin
  Date: 2018/6/14
  Time: 9:07
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
    <script src="http://libs.baidu.com/jquery/1.8.3/jquery.min.js"></script>
    <script src="http://jq22.qiniudn.com/masonry-docs.min.js"></script>
    <script>
        $(function() {
            var $container = $('#masonry');
            $container.imagesLoaded(function() {
                $container.masonry({
                    itemSelector: '.box',
                    gutter: 20,
                    isAnimated: true,
                });
            });
        });
    </script>
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
<c:import url="${basePath}header.jsp" ></c:import>
<div id="main" style="margin-top: 50px;">
    <div class="wrapper clearfix">

        <div id="content" class="col col-8">
            <div class="white-wrap">
                <div class="section-heading">
                    <span class="section-heading-line">
                    <c:choose>
                        <c:when test="${userselfmap['blogUserPicsLabels'].size()}==1&&null==${userselfmap['blogUserPicsLabels'].size()}.get(0)||${userselfmap['blogUserPicsLabels'].size()}==0}">
                            0
                        </c:when>
                        <c:otherwise>
                            ${userselfmap['blogUserPicsLabels'].size()}
                        </c:otherwise>
                    </c:choose>
                    </span>
                    <span class="section-heading-text">Results For: Published</span>
                </div><!-- .section-heading -->
                <div class="blog-posts-alt blog-posts-alt-diagonal-effect-enabled clearfix" id="masonry">
                    <c:forEach items="${userselfmap['blogUserPicsLabels']}" var="blog">
                        <div class="blog-post-alt box" style="width: 30%;float:left;margin-bottom: 20px;">
                            <div class="blog-post-alt-thumb">
                                <div class="blog-post-alt-thumb-inner">
                                    <a href="<%=basePath%>single/main.action?blogId=${blog.blogContent.blogId}">
                                        <img src="<%=basePath%>${blog.blogPics.pic}" alt="" /></a>
                                </div><!-- .blog-post-alt-thumb-inner -->
                                <div class="blog-post-alt-thumb-cover"></div>
                            </div><!-- .blog-post-alt-thumb -->
                            <div class="blog-post-alt-main">
                                <div class="blog-post-alt-main-inner">
                                    <div class="blog-post-alt-date">
                                        <fmt:formatDate value="${blog.blogContent.blogcreatetime}" pattern="yyyy-MM-dd"/>
                                    </div><!-- .blog-post-alt-date -->
                                    <div class="blog-post-alt-title ">
                                        <h2><a href="<%=basePath%>single/main.action?blogId=${blog.blogContent.blogId}" class="">
                                            <p class="texthidden">
                                                <c:if test="${blog.labelInfo.labelname=='书籍'}">
                                                    <c:set var="bookname" value=" ${blog.blogContent.blogcontent} "/>
                                                    《${fn:substringBefore(bookname,"||" )}》
                                                </c:if>
                                                <c:if test="${blog.labelInfo.labelname!='书籍'}">
                                                    ${blog.blogContent.blogcontent}
                                                </c:if>
                                            </p></a></h2>
                                    </div><!-- .blog-post-alt-title -->
                                    <div class="blog-post-alt-cat">
                                        <a href="<%=basePath%>single/main.action?blogId=${blog.blogContent.blogId}">${blog.labelInfo.labelname}</a>
                                    </div><!-- .blog-post-alt-cat -->
                                    <div class="blog-post-alt-read-more">
                                        <a href="<%=basePath%>single/main.action?blogId=${blog.blogContent.blogId}">READ ARTICLE</a>
                                    </div><!-- .blog-post-alt-read-more -->
                                </div><!-- .blog-post-alt-main-inner -->
                            </div><!-- .blog-post-alt-main -->
                        </div><!-- .blog-post-alt -->
                    </c:forEach>
                </div><!-- .blog-posts-alt -->
            </div><!-- .white-wrap -->
        </div><!-- #content -->

        <div id="sidebar" class="col col-4 col-last">
            <div class="widget">
                <div class="about-author-widget">
                    <div class="about-author-widget-banner" style="overflow: hidden">
                        <img src="<%=basePath%>images/index-images/widget-about-author/banner.png" style="width: 100%" alt="" />
                    </div>
                    <div class="about-author-widget-avatar">
                        <img src="<%=basePath%>img${userselfmap['userInfo'].userimg}" style="width: 80px;height: 80px;" alt="" />
                    </div>
                    <h2 class="about-author-widget-name">${userselfmap['userInfo'].usernickname}</h2>
                    <h3 class="about-author-widget-position">Lifestyle Blogger</h3>
                    <div class="about-author-widget-text">
                        ${userselfmap['userInfo'].userintroduce}
                    </div>
                </div><!-- .about-author-widget -->
            </div><!-- .widget -->
            <div class="widget">
                <h3 class="widget-title">
                    <span class="widget-title-line"></span>
                    <span class="widget-title-text">Tags</span>
                </h3>
                <div class="widget-content">
                    <div class="tags-cloud-widget">
                        <c:forEach items="${userselfmap['labelInfo']}" var="label" varStatus="status">
                            <a href="<%=basePath%>topic/main.action?labelId=${label.labelId}" class="fh5co_tagg">${label.labelname}</a>
                        </c:forEach>
                    </div><!-- .tags-cloud-widget -->
                </div><!-- .widget-content -->
            </div><!-- .widget -->

            <div class="widget">
                <h3 class="widget-title">
                    <span class="widget-title-line"></span>
                    <span class="widget-title-text">Recent Browse</span>
                </h3>
                <div class="widget-content">
                    <div class="recent-posts-widget">
                        <c:forEach items="${userselfmap['blogBrowse']}" var="blogbrowse" begin="0" end="4">
                            <div class="recent-posts-widget-post">
                                <div class="recent-posts-widget-thumb">
                                    <a href="<%=basePath%>/single/main.action?blogId=${blogbrowse.blogContent.blogId}"><img src="<%=basePath%>${blogbrowse.blogPics.pic}" alt="" /></a>
                                </div><!-- .recent-posts-widget-thumb -->
                                <div class="recent-posts-widget-main">
                                    <div class="recent-posts-widget-date"> <fmt:formatDate value="${blogbrowse.blogContent.blogcreatetime}" pattern="yyyy-MM-dd"/></div>
                                    <div class="recent-posts-widget-title">
                                        <a href="<%=basePath%>/single/main.action?blogId=${blogbrowse.blogContent.blogId}">
                                            <p class="texthidden">${blogbrowse.blogContent.blogcontent}</p></a>
                                    </div>
                                    <div class="recent-posts-widget-category">
                                        <a href="<%=basePath%>/topic/main.action?labelId=${blogbrowse.labelInfo.labelId}">${blogbrowse.labelInfo.labelname}</a>
                                    </div>
                                </div><!-- .recent-posts-widget-main -->
                            </div><!-- .recent-posts-widget-post -->
                        </c:forEach>
                    </div><!-- .recent-posts-widget -->
                </div><!-- .widget-content -->
            </div><!-- .widget -->
        </div><!-- #sidebar -->
    </div><!-- .wrapper -->
</div><!-- #main -->


</body>
</html>

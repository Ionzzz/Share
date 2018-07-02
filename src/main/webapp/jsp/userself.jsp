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
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>

    <!-- CSS -->
    <link rel="stylesheet" href="<%=basePath%>css/index-css/fonts/font-awesome.css">
    <link rel="stylesheet" href="<%=basePath%>css/index-css/plugins.css">
    <link rel="stylesheet" href="<%=basePath%>css/index-css/main.css">
    <link rel='stylesheet' type='text/css' href='<%=basePath%>css/index-css/nav_font.css'>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/index-css/style_1.css" />

    <script src="<%=basePath%>/js/index-js/pubujs1.js"></script>
    <script src="<%=basePath%>/js/index-js/pubujs2.js"></script>
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
                        <c:when test="${userselfmap['blogUserPicsLabels'].size()==1}&&${null==userselfmap['blogUserPicsLabels'].get(0).blogContent}||${userselfmap['blogUserPicsLabels'].size()}==0}">
                            0
                        </c:when>
                        <c:otherwise>
                            ${userselfmap['blogUserPicsLabels'].size()}
                        </c:otherwise>
                    </c:choose>
                    </span>
                    <span class="section-heading-text">已发布博客</span>
                </div><!-- .section-heading -->
                <div class="blog-posts-alt blog-posts-alt-diagonal-effect-enabled clearfix" id="masonry">
                    <c:choose>
                        <c:when test="${userselfmap['blogUserPicsLabels'].get(0).blogContent==null}">
                            暂无发布
                        </c:when>

                        <c:otherwise>
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
                                                <a href="<%=basePath%>single/main.action?blogId=${blog.blogContent.blogId}">查看全文</a>
                                            </div><!-- .blog-post-alt-read-more -->
                                        </div><!-- .blog-post-alt-main-inner -->
                                    </div><!-- .blog-post-alt-main -->
                                </div><!-- .blog-post-alt -->
                            </c:forEach>
                        </c:otherwise>
                    </c:choose>
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
                    <h2 class="about-author-widget-name">${userselfmap['userInfo'].usernickname}
                        <span style="float:right;">
                             <c:if test="${follower == null}">
                                 <a id="cared" href="javascript:void(0)"
                                    onclick="clickfollow(${userselfmap['userInfo'].userId})" style="text-decoration: blink">关注</a>
                             </c:if>
                            <c:set var="flag" value="true"></c:set>
                            <c:forEach items="${follower}" var="follower">
                                <c:if test="${follower.userId == userselfmap['userInfo'].userId}">
                                    <c:set var="flag" value="false"></c:set>
                                    <a id="${userselfmap['userInfo'].userId}" href="javascript:void(0)"
                                       onclick="clickfollow(${userselfmap['userInfo'].userId})" style="text-decoration: blink">取消关注</a>
                                </c:if>
                            </c:forEach>
                            <c:if test="${flag == 'true'}">
                                <a id="${userselfmap['userInfo'].userId}" href="javascript:void(0)"
                                   onclick="clickfollow(${userselfmap['userInfo'].userId})" style="text-decoration: blink">关注</a>
                            </c:if>
                        </span>
                    </h2>
                    <h3 class="about-author-widget-position">${userselfmap['userInfo'].useraccount}</h3>
                    <div class="about-author-widget-text">
                        ${userselfmap['userInfo'].userintroduce}
                    </div>
                </div>

            </div><!-- .widget -->
            <c:if test="${userselfmap['blogUserPicsLabels'].get(0).blogContent!=null}">
                <div class="widget">
                    <h3 class="widget-title">
                        <span class="widget-title-line"></span>
                        <span class="widget-title-text">标签</span>
                    </h3>
                    <div class="widget-content">
                        <div class="tags-cloud-widget">
                            <c:forEach items="${userselfmap['labelInfo']}" var="label" varStatus="status">
                                <a href="<%=basePath%>topic/main.action?labelId=${label.labelId}" class="fh5co_tagg">${label.labelname}</a>
                            </c:forEach>
                        </div><!-- .tags-cloud-widget -->
                    </div><!-- .widget-content -->
                </div><!-- .widget -->
            </c:if>

            <div class="widget">
                <h3 class="widget-title">
                    <span class="widget-title-line"></span>
                    <span class="widget-title-text">动 态</span>
                </h3>
                <div class="widget-content">
                    <div class="recent-posts-widget">
                        <c:choose>
                            <c:when test="${userselfmap['blogBrowse'].get(0).blogContent==null}">
                                暂无足迹
                            </c:when>
                            <c:otherwise>
                                <c:forEach items="${userselfmap['blogBrowse']}" var="blogbrowse" begin="0" end="4">
                                    <div class="recent-posts-widget-post">
                                        <div class="recent-posts-widget-thumb">
                                            <a href="<%=basePath%>/single/main.action?blogId=${blogbrowse.blogContent.blogId}">
                                                <img src="<%=basePath%>${blogbrowse.blogPics.pic}" alt="" /></a>
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
                            </c:otherwise>
                        </c:choose>
                    </div><!-- .recent-posts-widget -->
                </div><!-- .widget-content -->
            </div><!-- .widget -->
        </div><!-- #sidebar -->
    </div><!-- .wrapper -->
</div><!-- #main -->


<script type="text/javascript">
    //    点击关注  再点击删除
    function clickfollow(id) {
//        alert(id);
        var aa = document.getElementById(id).innerText;
//        alert(aa);
        if (aa == "取消关注"){
//            alert("你已关注过此用户！");
            //在页面上弹出确认对话框
            if(window.confirm('你确定要取消关注Ta吗？')){
                //继续执行
                $.ajax({
                    type:"post",
                    url:'${pageContext.request.contextPath }/personalpage/deletefollow.action',
                    data:{"userId":id},
                    dataType:'json',
                    success:function (data) {
//                        alert(data);
                        if(data == 0){
                            alert("取消关注成功！！");
                            $("#"+id).html("<a id='"+id+"' href='javascript:void(0)' style='text-decoration: blink'>关注</a>")
                        }else {
                            alert("取消关注失败！！");
                        }
                    },
                    error:function () {
                        alert("服务器故障，请稍后重试")
                    }
                });
            }

        }else {
//            alert("关注");
            $.ajax({
                type:"post",
                url:'${pageContext.request.contextPath }/personalpage/clickfollow.action',
                data : {"id":id},
                dateType:'json',
                success:function (data) {
//                alert(data);
                    if(data == 0){
                        alert("关注成功！");
                        $("#"+id).html("<a id='"+id+"' href='javascript:void(0)' style='text-decoration: blink'>取消关注</a>")
                    }else if(data == 2){
                        alert("你已关注过此用户！");
                    }else {
                        alert("请稍后重试！");
                    }
                },
                error:function () {
                    alert("服务器故障，请稍后重试")
                }
            });
        }
    }
</script>


</body>
</html>

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



<div class="featured-blog-posts">
    <div class="featured-blog-posts-inner">
        <div class="blog-posts-alt blog-posts-alt-diagonal-effect-enabled no-col-spacing carousel-container">
            <div class="carousel" data-stop-on-hover="false" data-columns="4" data-pagination="false" data-slide-speed="200" data-pagination-speed="800" data-scroll-per-page="false">

            <c:forEach items="${blogList}" var="bloglist">
                <div class="blog-post-alt carousel-item" style="border: 1px solid white;">
                    <div class="blog-post-alt-thumb">
                        <div class="blog-post-alt-thumb-inner" style="text-align: center">
                            <a href="<%=basePath%>single/main.action?blogId=${bloglist.blogContent.blogId}">
                                <img src="<%=basePath%>${bloglist.blogPics.pic}" style="height:250px;margin: auto" alt="" />
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
                            <div class="blog-post-alt-title ">
                                <h2 class="texthidden" style="width:200px;">
                                    <a href="<%=basePath%>single/main.action?blogId=${bloglist.blogContent.blogId}">
                                        <c:if test="${bloglist.labelInfo.labelname=='书籍'}">
                                            <c:set var="bookname" value=" ${bloglist.blogContent.blogcontent} "/>
                                            《${fn:substringBefore(bookname,"||" )}》
                                        </c:if>
                                        <c:if test="${bloglist.labelInfo.labelname!='书籍'}">
                                            ${bloglist.blogContent.blogcontent}
                                        </c:if>
                                    </a>
                                </h2>
                            </div><!-- .blog-post-alt-title -->
                            <div class="blog-post-alt-cat">
                                <a href="<%=basePath%>/topic/main.action?labelId=${bloglist.labelInfo.labelId}">${bloglist.labelInfo.labelname}</a>
                            </div><!-- .blog-post-alt-cat -->
                            <div class="blog-post-alt-read-more">
                                <a href="<%=basePath%>single/main.action?blogId=${bloglist.blogContent.blogId}">READ ARTICLE</a>
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


<form action="<%=basePath%>topic/main.action?labelId=${labelinfo.labelId}" id="mainForm" method="post">

    <div id="main">
        <div id="sidebar" class="col" style="width: 30%">
            <div class="widget">
                <h3 class="widget-title">
                    <span class="widget-title-line"></span>
                    <span class="widget-title-text">Tag</span>
                </h3>
                <div class="widget-content">
                    <div class="tags-cloud-widget"style="text-align: center">
                        <a  class="fh5co_tagg" title="${labelinfo.labelname}">${labelinfo.labelname}</a>
                    </div><!-- .tags-cloud-widget -->
                </div><!-- .widget-content -->
            </div><!-- .widget -->

            <div class="widget">
                <h3 class="widget-title">
                    <span class="widget-title-line"></span>
                    <span class="widget-title-text">Implication</span>
                </h3>
                <h3 class="about-author-widget-position"style="text-align: center" title="${labelinfo.labelcontent}">${labelinfo.labelcontent}</h3>

                <div class="widget-content" style="text-align: center;font-size: 20px;">
                    ${labelinfo.labelcontent}
                </div><!-- .widget-content -->
            </div><!-- .widget -->
            <div class="widget">
                <h3 class="widget-title">
                    <span class="widget-title-line"></span>
                    <span class="widget-title-text">MOST LIKE</span>
                </h3>
                <div class="widget-content">
                    <div class="recent-posts-widget">
                        <c:forEach items="${blogzan}" var="list" begin="0" end="4">
                            <div class="recent-posts-widget-post">
                                <div class="recent-posts-widget-thumb">
                                    <a href="<%=basePath%>single/main.action?blogId=${list.blogContent.blogId}"><img src="<%=basePath%>${list.blogPics.pic}" alt="" /></a>
                                </div><!-- .recent-posts-widget-thumb -->
                                <div class="recent-posts-widget-main">
                                    <div class="recent-posts-widget-date">
                                        <fmt:formatDate  pattern="MM_dd,yyyy"
                                                         value="${list.blogContent.blogcreatetime}" />
                                    </div>
                                    <div class="recent-posts-widget-title texthidden">
                                        <a href="<%=basePath%>single/main.action?blogId=${list.blogContent.blogId}">${list.blogContent.blogcontent}</a></div>
                                    <div class="recent-posts-widget-category">
                                        <a href="<%=basePath%>/topic/main.action?labelId=${list.labelInfo.labelId}"><span style="font-size:9px; opacity: 0.6">TAG:</span>${list.labelInfo.labelname}</a></div>
                                </div><!-- .recent-posts-widget-main -->
                            </div><!-- .recent-posts-widget-post -->
                        </c:forEach>

                    </div><!-- .recent-posts-widget -->
                </div><!-- .widget-content -->
            </div><!-- .widget -->
        </div><!-- #sidebar -->


        <div id="content" class="col" style="width:70%" >
            <div class="blog-posts clearfix">
                <div class="blog-post">
                    <div class="blog-post-thumb" style="height:500px;overflow: hidden">
                        <a href="<%=basePath%>single/main.action?blogId=${blogone.get(0).blogContent.blogId}">
                            <img src="<%=basePath%>${blogone.get(0).blogPics.pic}" style="width:100%;background-position: center" alt="" /></a>
                    </div><!-- .blog-post-thumb -->
                    <div class="blog-post-main clearfix">
                        <div class="blog-post-author">
                            <div class="blog-post-author-avatar">
                                <h4>MOST POPULAR</h4>
                            </div><!-- .blog-post-author-avatar -->
                            <div class="blog-post-author-name">
                                <span>Posted By</span>
                                <a href="<%=basePath%>/index/userself.action?userId=${blogone.get(0).userInfo.userId}">${blogone.get(0).userInfo.usernickname}</a>
                            </div><!-- .blog-post-author-name -->
                            <div class="blog-post-meta">
                            <fmt:formatDate  pattern="MM dd,yyyy,"
                                             value="${blogone.get(0).blogContent.blogcreatetime}" />
                            In: <a href="<%=basePath%>/topic/main.action?labelId=${blogone.get(0).labelInfo.labelId}">${blogone.get(0).labelInfo.labelname}</a>
                        </div><!-- .blog-post-meta -->
                        </div><!-- .blog-post-author -->
                        <div class="blog-post-info">
                            <div class="blog-post-info-inner" style="text-align: center">
                                <div class="blog-post-title">
                                    <h2 class="texthidden">
                                        <a href="<%=basePath%>single/main.action?blogId=${blogone.get(0).blogContent.blogId}" >
                                            <c:if test="${blogone.get(0).labelInfo.labelname=='书籍'}">
                                                <c:set var="bookname" value=" ${blogone.get(0).blogContent.blogcontent} "/>
                                                《${fn:substringBefore(bookname,"||" )}》
                                            </c:if>
                                            <c:if test="${blogone.get(0).labelInfo.labelname!='书籍'}">
                                                ${blogone.get(0).blogContent.blogcontent}
                                            </c:if>
                                        </a>
                                    </h2>
                                </div><!-- .blog-post-title -->
                                <div class="blog-post-tags" style="margin-bottom: 20px">
                                    <a >浏览</a>${blogone.get(0).liulan}
                                    <a href="javascript:void(0)" onclick="getZan('${blogone.get(0).blogContent.blogId}')">点赞</a><span name="${blogone.get(0).blogContent.blogId}">${blogone.get(0).zan}</span>
                                    <a href="<%=basePath%>single/main.action?blogId=${blogone.get(0).blogContent.blogId}">评论</a>${blogone.get(0).pinglun}
                                    <br/>
                                </div><!-- .blog-post-tags -->
                          <%--      <div class="blog-post-excerpt texthidden">

                                </div><!-- .dslc-blog-post-excerpt -->--%>
                                <div class="blog-post-read-more">
                                    <a href="">CONTINUE READING</a>
                                </div><!-- .blog-post-read-more -->
                            </div><!-- .blog-post-info-inner -->
                        </div><!-- .blog-post-info -->
                    </div><!-- .blog-post-main -->
                </div><!-- .blog-post -->

                <input type="hidden" name="curPage"  id="curPage">

                <c:forEach items="${pageInfo.list}" var="bloglist" varStatus="status">
                    <div class="blog-post col col-4">
                        <div class="blog-post-thumb">
                            <a href="<%=basePath%>single/main.action?blogId=${bloglist.blogContent.blogId}">
                                <img src="<%=basePath%>${bloglist.blogPics.pic}" style="height:200px;;margin: auto" alt="" />
                            </a>
                        </div><!-- .blog-post-thumb -->
                        <div class="blog-post-main clearfix">

                            <div class="blog-post-info" >
                                <div class="blog-post-tags" style="float: right;margin:15px 0;">
                                    <a >浏览</a>${bloglist.liulan}<br/>
                                    <a href="javascript:void(0)" onclick="getZan('${bloglist.blogContent.blogId}')">点赞</a><span name="${bloglist.blogContent.blogId}">${bloglist.zan}</span><br/>
                                    <a href="<%=basePath%>single/main.action?blogId=${bloglist.blogContent.blogId}">评论</a>${bloglist.pinglun}
                                    <br/>
                                </div><!-- .blog-post-tags -->
                                <div class="blog-post-info-inner">
                                    <%--<div class="blog-post-title">
                                        <h2 class="texthidden">
                                            <a href="<%=basePath%>single/main.action?blogId=${bloglist.blogContent.blogId}" >
                                                <c:if test="${bloglist.labelInfo.labelname=='书籍'}">
                                                    <c:set var="bookname" value=" ${bloglist.blogContent.blogcontent} "/>
                                                    《${fn:substringBefore(bookname,"||" )}》
                                                </c:if>
                                                <c:if test="${bloglist.labelInfo.labelname!='书籍'}">
                                                    ${bloglist.blogContent.blogcontent}
                                                </c:if>
                                            </a>
                                        </h2>
                                    </div><!-- .blog-post-title -->--%>
                                    <div class="blog-post-author-name" style="font-size: 12px;">
                                        <span style="opacity:0.6;">Posted By</span><br/>
                                        <a href="<%=basePath%>/index/userself.action?userId=${bloglist.userInfo.userId}">${bloglist.userInfo.usernickname}</a>
                                    </div><!-- .blog-post-author-name -->
                                    <div class="blog-post-meta">
                                        <fmt:formatDate  pattern="MM dd,yyyy"
                                                         value="${bloglist.blogContent.blogcreatetime}" /><br/>
                                        <div id="season${status.count}" style="display: none" ><fmt:formatDate  pattern="MM"
                                                                         value="${bloglist.blogContent.blogcreatetime}" /></div>
                                        <a id="seasons${status.count}">
                                        </a>
                                        <script type="text/javascript">
                                                var month=document.getElementById("season${status.count}").innerHTML;
//                                                alert(month);
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

                                    <div class="blog-post-excerpt texthidden">
                                        <c:if test="${bloglist.labelInfo.labelname=='书籍'}">
                                            <c:set var="bookname" value=" ${bloglist.blogContent.blogcontent} "/>
                                            《${fn:substringBefore(bookname,"||" )}》
                                        </c:if>
                                        <c:if test="${bloglist.labelInfo.labelname!='书籍'}">
                                            ${bloglist.blogContent.blogcontent}
                                        </c:if>
                                    </div><!-- .dslc-blog-post-excerpt -->
                                    <div class="blog-post-read-more" style="text-align: center">
                                        <a href="<%=basePath%>single/main.action?blogId=${bloglist.blogContent.blogId}">CONTINUE READING</a>
                                    </div><!-- .blog-post-read-more -->
                                </div><!-- .blog-post-info-inner -->
                            </div><!-- .blog-post-info -->
                        </div><!-- .blog-post-main -->
                    </div><!-- .blog-post -->
                </c:forEach>
            </div><!-- .blog-posts -->
        </div><!-- #content -->
    </div><!-- .wrapper -->

    <div class="pagination"style="margin-top: 50px;text-align: center;">
        <a href="javascript:getPage(1)" class="btn_mange_pagging"><i class="fa fa-long-arrow-left"></i>&nbsp;&nbsp; HOME PAGE</a>
        <c:if test="${pageInfo.pages==1}">
            <a href="javascript:getPage(${pageInfo.pageNum})" class="btn_pagging" style="color: #1abc9c">${pageInfo.pageNum}</a>
        </c:if>
        <c:if test="${pageInfo.pages==2}">
            <c:if test="${pageInfo.pageNum==1}">
                <a href="javascript:getPage(${pageInfo.pageNum})" class="btn_pagging" style="color: #1abc9c">${pageInfo.pageNum}</a>
                <a href="javascript:getPage(${pageInfo.nextPage})" class="btn_pagging">${pageInfo.nextPage}</a>
            </c:if>
            <c:if test="${pageInfo.pageNum==2}">
                <a href="javascript:getPage(${pageInfo.prePage})" class="btn_pagging">${pageInfo.prePage}</a>
                <a href="javascript:getPage(${pageInfo.pageNum})" class="btn_pagging" style="color: #1abc9c">${pageInfo.pageNum}</a>
            </c:if>
        </c:if>
        <c:if test="${pageInfo.pages==3||pageInfo.pages>3}">
            <c:if test="${pageInfo.pageNum==1}">
                <a href="javascript:getPage(${pageInfo.pageNum==1?1:pageInfo.prePage})" class="btn_pagging" style="color: #1abc9c">${pageInfo.pageNum==1?1:pageInfo.prePage}</a>
                <a href="javascript:getPage(${pageInfo.pageNum==1?2:pageInfo.pageNum})" class="btn_pagging">${pageInfo.pageNum==1?2:pageInfo.pageNum}</a>
                <a href="javascript:getPage(${pageInfo.pageNum==1?3:pageInfo.nextPage})" class="btn_pagging">${pageInfo.pageNum==1?3:pageInfo.nextPage}</a>
            </c:if>
            <c:if test="${pageInfo.pageNum!=1&&pageInfo.pageNum!=pageInfo.pages}">
                <a href="javascript:getPage(${pageInfo.prePage})" class="btn_pagging">${pageInfo.prePage}</a>
                <a href="javascript:getPage(${pageInfo.pageNum})" class="btn_pagging" style="color: #1abc9c">${pageInfo.pageNum}</a>
                <a href="javascript:getPage(${pageInfo.nextPage})" class="btn_pagging">${pageInfo.nextPage}</a>
            </c:if>
            <c:if test="${pageInfo.pageNum==pageInfo.pages&&pageInfo.pageNum!=1}">
                <a href="javascript:getPage(${pageInfo.pageNum==pageInfo.pages?pageInfo.prePage-1:pageInfo.prePage})" class="btn_pagging">${pageInfo.pageNum==pageInfo.pages?pageInfo.prePage-1:pageInfo.prePage}</a>
                <a href="javascript:getPage(${pageInfo.pageNum==pageInfo.pages?pageInfo.prePage:pageInfo.pageNum})" class="btn_pagging">${pageInfo.pageNum==pageInfo.pages?pageInfo.prePage:pageInfo.pageNum}</a>
                <a href="javascript:getPage(${pageInfo.pageNum==pageInfo.pages?pageInfo.pages:pageInfo.nextPage})" class="btn_pagging" style="color: #1abc9c">${pageInfo.pageNum==pageInfo.pages?pageInfo.pages:pageInfo.nextPage}</a>
            </c:if>
        </c:if>

        <a href="javascript:getPage(${pageInfo.pages})" class="btn_mange_pagging">END PAGE <i class="fa fa-long-arrow-right"></i>&nbsp;&nbsp; </a>

    </div><!-- .pagination -->
    <div style="text-align: center;opacity:0.6;">${pageInfo.total} 条,共${pageInfo.getPages()}页,当前第${pageInfo.pageNum}页</p>
    </div>
</div><!-- #main -->
</form>
<!-- JavaScript -->
<script type="text/javascript" src="<%=basePath%>js/index-js/javascript/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/index-js/javascript/plugins.js"></script>
<script type="text/javascript" src="<%=basePath%>js/index-js/javascript/main.js"></script>
<script>
    function getPage(curPage) {
        document.getElementById("curPage").value=curPage;
//				触发表单提交事件
        document.getElementById("mainForm").submit();
    }
    function getZan(blogId) {
        $.ajax({
            type:"post",
            url:'${pageContext.request.contextPath }/index/zan.action',
            data : {"blogId":blogId},
            dateType:'json',
            success:function (data) {
                $("span[name="+blogId+"]").html(data);
            }
        });
    }
</script>
<script type="text/javascript">
    function season(){
        var month=$("#season").text();
        alert(1);
        switch(month){
            case 03:
            case 04:
            case 05: $("a[name='season']").html("In:Spring");
                break;
            case 06:
            case 07:
            case 08: $("a[name='season']").html("In:Summer");
                break;
            case 09:
            case 10:
            case 11: $("a[name='season']").html("In:Autumn");
                break;
            case 12:
            case 01:
            case 02: $("a[name='season']").html("In:Winter");
                break;
            default:break;
        }
    }
</script>


</body>
</html>

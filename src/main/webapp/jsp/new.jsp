<%--
  Created by IntelliJ IDEA.
  User: 刘琪
  Date: 2018/5/28
  Time: 19:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>）
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="en" class="no-js">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>New of Share</title>

    <!-- Bootstrap CSS -->
    <link href="<%=basePath%>css/index-css/style_1.css" rel="stylesheet" type="text/css"/>
    <link href="<%=basePath%>css/index-css/main.css" rel="stylesheet" >
    <link href="<%=basePath%>css/index-css/nav_font.css" rel='stylesheet' type='text/css'>

    <link href="<%=basePath%>css/index-css/media_query.css" rel="stylesheet" type="text/css"/>
    <link href="<%=basePath%>css/index-css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="<%=basePath%>css/index-css/font-awesome.min.css">
    <link href="<%=basePath%>css/index-css/animate.css" rel="stylesheet" type="text/css"/>
    <link href="<%=basePath%>css/index-css/content_font.css" rel="stylesheet">
    <link href="<%=basePath%>css/index-css/owl.carousel.css" rel="stylesheet" type="text/css"/>
    <link href="<%=basePath%>css/index-css/owl.theme.default.css" rel="stylesheet" type="text/css"/>


    <!-- Modernizr JS -->
    <script src="<%=basePath%>js/index-js/modernizr-3.5.0.min.js"></script>

    <style>
        .texthidden{
            width:320px;
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
                        <ul>
                            <li class="current-menu-item"><a href="index.jsp">Home Version 1</a></li>
                            <li><a href="#">Home Version 2</a></li>
                            <li><a href="#">Home Version 3</a></li>
                            <li><a href="#">Home Version 4</a></li>
                        </ul>
                    </li>
                    <li class="current-menu-item">
                        <a href="<%=basePath%>new/main.action">最新</a>
                        <ul>
                            <li><a href="#">Right Sidebar</a></li>
                            <li><a href="#">Left Sidebar</a></li>
                            <li><a href="#">No Sidebar</a></li>
                        </ul>
                    </li>
                    <li><a href="<%=basePath%>topic/all.action">话题</a></li>
                    <li><a href="<%=basePath%>single.jsp">发布</a></li>
                    <li><a href="<%=basePath%>shudong/main.action">树洞</a></li>
                    <li><a href="<%=basePath%>about.jsp">关于我们</a></li>
                    <li><a href="<%=basePath%>contactUs.jsp">联系我们</a></li>

                </ul><!-- .menu -->
            </nav><!-- #navigation -->
            <form method="post" action="<%=basePath%>new/main.action">
                <div id="header-search">
                    <div class="header-search-inner">
                        <input type="text" placeholder="Search and hit enter" autocomplete="off"name="searchContent"/>
                        <input type="submit" name="submit"style="display: none" value=""/>
                    </div><!-- .search-form-wrapper -->
                </div><!-- #header-search -->
            </form>
        </div><!-- .wrapper -->
    </div><!-- #header-top -->
</header>


<form action="<%=basePath%>new/main.action" id="mainForm" method="post">
    <div  class="container-fluid pb-4 pt-4 paddding" style="margin-top: 50px;">
        <div class="container paddding font">
            <div class="row mx-0">
                    <div class="col-md-8 animate-box" data-animate-effect="fadeInLeft" style="width: 760px;">
                        <div>
                            <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4">News</div>
                        </div>
                            <input type="hidden" name="curPage" id="curPage">
                            <input type="hidden" name="searchContent" value="${searchContent}"></input>
                        <c:choose>
                            <c:when test="${pageInfo.total==0}">
                                <div style="font-size:18px; text-align: center;">
                                    <img src="<%= basePath %>images/shudong-images/noinfo.gif"/>
                                    <a href="#">暂时没有此类文章存在，快去发布一个吧</a>
                                </div>
                            </c:when>
                            <c:otherwise>
                                <c:forEach items="${pageInfo.list}" var="blog">
                                    <div class="row pb-4">
                                        <div class="col-md-5">
                                            <div class="fh5co_hover_news_img">
                                                <div class="fh5co_news_img" >
                                                    <a href="<%=basePath%>single/main.action?blogId=${blog.blogContent.blogId}">
                                                        <img style="height: auto" src="<%=basePath%>${blog.blogPics.pic}" alt="" class="default-image"/>
                                                    </a>
                                                </div>
                                            </div><%-- onclick="window.location.href='<%=basePath%>single/main.action?blogId=${blog.blogContent.blogId}'"--%>
                                        </div>
                                        <div class="col-md-7 animate-box"style=" height: 200px; overflow:hidden;text-overflow:ellipsis;">
                                            <p class="texthidden">
                                                <a href="<%=basePath%>single/main.action?blogId=${blog.blogContent.blogId}" class="fh5co_magna py-2" >
                                                    <c:if test="${blog.labelInfo.labelname=='书籍'}">
                                                        <c:set var="bookname" value=" ${blog.blogContent.blogcontent} "/>
                                                        《${fn:substringBefore(bookname,"||" )}》
                                                    </c:if>
                                                    <c:if test="${blog.labelInfo.labelname!='书籍'}">
                                                        ${blog.blogContent.blogcontent}
                                                    </c:if>
                                                </a>
                                            </p>
                                                <a href="<%=basePath%>single/main.action?blogId=${blog.blogContent.blogId}" class="fh5co_mini_time py-3">${blog.userInfo.usernickname}-<fmt:formatDate value="${blog.blogContent.blogcreatetime}" pattern="yyyy-MM-dd HH:mm:ss"/> </a>
                                            <p  style="float: right;position: relative">浏览量${blog.liulan}</p><br/>
                                            <div class="fh5co_consectetur"> ${blog.blogContent.blogcontent}</div>
                                        </div>
                                    </div>
                                 </c:forEach>
                            </c:otherwise>
                        </c:choose>
                    </div>

                <div class="col-md-3 animate-box" data-animate-effect="fadeInRight">
                    <div>
                        <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4">Tags</div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="fh5co_tags_all">
                        <c:forEach items="${labelList}" var="labellist">
                            <a href="<%=basePath%>topic/main.action?labelId=${labellist.labelId}" class="fh5co_tagg">${labellist.labelname}</a>
                        </c:forEach>
                        <a href="#" class="fh5co_tagg">更多...</a>
                    </div>


                    <div>
                        <div class="fh5co_heading fh5co_heading_border_bottom pt-3 py-2 mb-4">Most Popular</div>
                    </div>

                    <c:forEach items="${blogpopular}" var="bpopular">
                        <div class="row pb-3" style="margin: 20px auto">
                            <div class="col-5 align-self-center">
                                <img src="<%=basePath%>${bpopular.blogPics.pic}" alt="img" class="fh5co_most_trading"/>
                            </div>
                            <div class="col-7 paddding">
                                <div class="most_fh5co_treding_font"> ${bpopular.blogContent.blogcontent}</div>
                                <div class="most_fh5co_treding_font_123"><fmt:formatDate value="${bpopular.blogContent.blogcreatetime}" pattern="MM-dd_yyyy"/></div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>

            <div class="row mx-0" style="margin-top: 50px;">
                <div class="col-12 text-center pb-4 pt-4">
                    <a href="javascript:getPage(1)" class="btn_mange_pagging"><i class="fa fa-long-arrow-left"></i>&nbsp;&nbsp; HOME PAGE</a>

                    <c:if test="${pageInfo.pages==1}">
                        <a href="javascript:getPage(${pageInfo.pageNum})" class="btn_pagging">${pageInfo.pageNum}</a>
                    </c:if>
                    <c:if test="${pageInfo.pages==2}">
                        <c:if test="${pageInfo.pageNum==1}">
                            <a href="javascript:getPage(${pageInfo.pageNum})" class="btn_pagging">${pageInfo.pageNum}</a>
                            <a href="javascript:getPage(${pageInfo.nextPage})" class="btn_pagging">${pageInfo.nextPage}</a>
                        </c:if>
                        <c:if test="${pageInfo.pageNum==2}">
                            <a href="javascript:getPage(${pageInfo.prePage})" class="btn_pagging">${pageInfo.prePage}</a>
                            <a href="javascript:getPage(${pageInfo.pageNum})" class="btn_pagging">${pageInfo.pageNum}</a>
                        </c:if>
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

                 <%--       <a href="javascript:getPage(${pageInfo.prePage})" class="btn_pagging">${pageInfo.prePage}</a>
                        <a href="javascript:getPage(${pageInfo.pageNum})" class="btn_pagging">${pageInfo.pageNum}</a>
                        <a href="javascript:getPage(${pageInfo.nextPage})" class="btn_pagging">${pageInfo.nextPage}</a>
              --%>
                    
                    <a href="javascript:getPage(${pageInfo.pages})" class="btn_mange_pagging">END PAGE <i class="fa fa-long-arrow-right"></i>&nbsp;&nbsp; </a>
                    <b>${pageInfo.total}</b> 条,共<b>${pageInfo.getPages()}</b>页,当前第<b>${pageInfo.pageNum}</b>页

                </div>
            </div>
        </div>
    </div>
</form>
<div class="container-fluid pb-4 pt-5">
    <div class="container animate-box">
        <div>
            <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4">Trending</div>
        </div>
        <div class="owl-carousel owl-theme" id="slider2">
            <c:forEach items="${blogUserPicsLabelList}" var="blogUserPicsLabelList">
                <div class="item px-2">
                    <div class="fh5co_hover_news_img">
                        <div class="fh5co_news_img"><img src="<%=basePath%>${blogUserPicsLabelList.blogPics.pic}" alt=""/></div>
                        <div style="margin-top: 10px;">
                            <a href="#" class="d-block fh5co_small_post_heading">
                                <span class=""><p class="texthidden">${blogUserPicsLabelList.blogContent.blogcontent}</p></span></a>
                            <div class="c_g"><i class="fa fa-clock-o"></i> <fmt:formatDate value="${blogUserPicsLabelList.blogContent.blogcreatetime}" pattern="MM-dd,yyyy"/></div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>

<c:import url="${basePath}footer.jsp" ></c:import>


<script src="<%=basePath%>js/index-js/jquery.min.js"></script>
<script src="<%=basePath%>js/index-js/owl.carousel.min.js"></script>
<!--<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>-->
<script src="<%=basePath%>js/index-js/tether.min.js"></script>
<script src="<%=basePath%>js/index-js/bootstrap.min.js"></script>
<!-- Waypoints -->
<script src="<%=basePath%>js/index-js/jquery.waypoints.min.js"></script>
<!-- Main -->
<script src="<%=basePath%>js/index-js/main.js"></script>

<script>
    function getPage(curPage) {
        document.getElementById("curPage").value=curPage;
//				触发表单提交事件
        document.getElementById("mainForm").submit();
    }
</script>
</body>
</html>

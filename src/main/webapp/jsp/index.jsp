<%--
  Created by IntelliJ IDEA.
  User: Ion
  Date: 2018/5/28
  Time: 18:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:useBean id="now" class="java.util.Date" scope="page"/>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>Share</title>
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <link href="<%=basePath%>css/index-css/media_query.css" rel="stylesheet" type="text/css"/>
    <link href="<%=basePath%>css/index-css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="<%=basePath%>css/index-css/font-awesome.min.css">
    <link href="<%=basePath%>css/index-css/animate.css" rel="stylesheet" type="text/css"/>
    <link href="<%=basePath%>css/index-css/Poppins.css" rel="stylesheet">
    <link href="<%=basePath%>css/index-css/owl.carousel.css" rel="stylesheet" type="text/css"/>
    <link href="<%=basePath%>css/index-css/owl.theme.default.css" rel="stylesheet" type="text/css"/>
    <!-- Bootstrap CSS -->
    <link href="<%=basePath%>css/index-css/style_1.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/shudong-css/style.css">

    <!-- Modernizr JS -->
    <script src="<%=basePath%>js/index-js/modernizr-3.5.0.min.js"></script>
    <script src="<%=basePath%>js/chat-js/jquery-1.11.1.min.js"></script>

    <style>
        .texthidden{
            white-space: nowrap;/*控制单行显示*/
            overflow: hidden;/*超出隐藏*/
            text-overflow: ellipsis;/*隐藏的字符用省略号表示*/
        }
        .fontdiv{
            color:#FFFFFF;
            text-decoration:blink;
        }
        .img-responsive {
            display: inline-block;
            height: auto;
            max-width: 100%;
        }
    </style>
    <script>
        var arr;
        function getZan(blogId) {
            $.ajax({
                type:"post",
                url:'${pageContext.request.contextPath}/index/zan.action',
                data : {"blogId":blogId},
                dateType:'json',
                success:function (data) {
                    arr = data.split("&");
                    $("span[name="+blogId+"]").html(arr[0]);
                }
            });
        }
    </script>

</head>
<body>
<div class="container-fluid fh5co_header_bg" style="opacity: 0.9;">
    <div class="container">
        <div class="row">

            <div class="col-12 fh5co_mediya_center"><a href="#" class="color_fff fh5co_mediya_setting" name="refreshTime"><i
                    class="fa fa-clock-o"></i>&nbsp;&nbsp;&nbsp; <fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss"/></a>
                <div class="d-inline-block fh5co_trading_posotion_relative"><a href="#" class="treding_btn">Share</a>
                    <div class="fh5co_treding_position_absolute"></div>
                </div>
                <a class="color_fff fh5co_mediya_setting">记录生活</a>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid">
    <div class="container">
        <div class="row">
            <div class="col-12 col-md-3 fh5co_padding_menu">
                <img src="<%=basePath%>images/index-images/logo.png" alt="img" class="fh5co_logo_width"/>
            </div>
            <div class="col-12 col-md-9 align-self-center fh5co_mediya_right">
                <div class="text-center d-inline-block">
                    <a class="fh5co_display_table"><div class="fh5co_verticle_middle"><i class="fa fa-search"></i></div></a>
                </div>
                <div class="text-center d-inline-block">
                    <a class="fh5co_display_table"><div class="fh5co_verticle_middle"><i class="fa fa-linkedin"></i></div></a>
                </div>
                <div class="text-center d-inline-block">
                    <a class="fh5co_display_table"><div class="fh5co_verticle_middle"><i class="fa fa-google-plus"></i></div></a>
                </div>
                <div class="text-center d-inline-block">
                    <a <%--href="" target="_blank"--%> class="fh5co_display_table"><div class="fh5co_verticle_middle"><i class="fa fa-twitter"></i></div></a>
                </div>
<%--头像  个人中心--%>
                <div class="text-center d-inline-block">
                    <a href="<%=basePath%>personalpage/personal.action" target="_blank" class="fh5co_display_table">
                        <div class="fh5co_verticle_middle"><i class="fa fa-facebook"></i>
                        </div>
                        <c:if test="${indexmap['userimg']!=null}">
                            <img src="<%=basePath%>img${indexmap['userimg']}" height="50px" width="50px" style="border-radius: 50%" /></a>
                        </c:if>
                        <c:if test="${indexmap['userimg']==null}">
                            <img src="<%=basePath%>/images/index-images/b8b61f04b19de2e728bfef9dcc4332d5.jpeg" height="50px" width="50px" style="border-radius: 50%" /></a>
                        </c:if>



                </div>
                <!--<div class="d-inline-block text-center"><img src="images/country.png" alt="img" class="fh5co_country_width"/></div>-->
                <div class="d-inline-block text-center dd_position_relative ">


                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid bg-faded fh5co_padd_mediya padding_786" >
    <div class="container padding_786" >
        <nav class="navbar navbar-toggleable-md navbar-light ">
            <button class="navbar-toggler navbar-toggler-right mt-3" type="button" data-toggle="collapse"
                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation"><span class="fa fa-bars"></span></button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent" >
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="<%=basePath%>index/main.action">首页 <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="<%=basePath%>new/main.action">最新 <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="<%=basePath%>topic/all.action">话题 <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="<%=basePath%>jsp/publishBlog.jsp" id="dropdownMenuButton2" >发布</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="<%=basePath%>shuDong/main.action">树洞 <span class="sr-only">(current)</span></a>
                    </li>

                    <li class="nav-item ">
                        <a class="nav-link" href="<%=basePath%>jsp/about.jsp">关于我们 <span class="sr-only">(current)</span></a>
                    </li>

                    <li class="nav-item ">
                        <a class="nav-link" href="<%=basePath%>jsp/contactUs.jsp">联系我们 <span class="sr-only">(current)</span></a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
</div>
<div class="container-fluid paddding mb-5">
    <div class="row mx-0">
        <div class="col-md-6 col-12 paddding animate-box" data-animate-effect="fadeIn">
            <div class="fh5co_suceefh5co_height">
                <img name="img" src="<%=basePath%>${indexmap['blogone'].blogPics.pic}" class="" alt="img"/>

                <div class="fh5co_suceefh5co_height_position_absolute">
                    <div class="fontdiv" style="margin:20px 0 20px 20px;float: left;opacity:0.7;color:#1abc9c">${indexmap['blogone'].labelInfo.labelname}</div>
                    <p  class="fontdiv" style="margin:30px;text-align: right;font-weight: 300;">
                        热度：${indexmap['blogone'].liulan}<br/>

                        <a href="javascript:void(0)" onclick="getZan('${indexmap['blogone'].blogContent.blogId}')" style="text-decoration: blink">
                           <img  src="<%= basePath %>images/shudong-images/Zan.png" />
                        </a>

                        <span name="${indexmap['blogone'].blogContent.blogId}">${indexmap['blogone'].zan}</span><br/>
                        <span class="total-comments-on-post pull-right">
                            <c:if test="${indexmap['blogone'].pinglun!=0}">
                                <a href="<%= basePath %>single/main.action?blogId=${indexmap['blogone'].blogContent.blogId}"class="fontdiv" style="text-decoration: blink">${indexmap['blogone'].pinglun} 条评论</a>
                            </c:if>
                        </span>
                    </p>
                </div>
                <div class="fh5co_suceefh5co_height_position_absolute_font" style="margin-top: 35px;">
                     <i class="fa fa-clock-o"></i>&nbsp;&nbsp;<fmt:formatDate value="${indexmap['blogone'].blogContent.blogcreatetime}" pattern="MM-dd-yyyy"/>
                    <p class="texthidden"  style=" width:600px;">
                        <a href="<%=basePath%>single/main.action?blogId=${indexmap['blogone'].blogContent.blogId}" class="fh5co_good_font" style="font-size: 30px;">
                        <c:if test="${indexmap['blogone'].labelInfo.labelname=='书籍'}">
                            <c:set var="bookname" value=" ${indexmap['blogone'].blogContent.blogcontent} "/>
                            《${fn:substringBefore(bookname,"||" )}》
                        </c:if>
                        <c:if test="${indexmap['blogone'].labelInfo.labelname!='书籍'}">
                            ${indexmap['blogone'].blogContent.blogcontent}
                        </c:if>
                        </a>
                    </p>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="row">
                <c:forEach items="${indexmap['blogfour']}" var="blogfour" begin="0" end="3" varStatus="status">
                    <div class="col-md-6 col-6 paddding animate-box"data-animate-effect="fadeIn">
                      <div class="fh5co_suceefh5co_height_2">
                          <img name="img" src="<%=basePath%>${blogfour.blogPics.pic}" alt="img"/>

                        <div class="fh5co_suceefh5co_height_position_absolute">
                            <div class="fontdiv" style="margin:20px 0 20px 20px;float: left;opacity:0.7;color:#1abc9c">${blogfour.labelInfo.labelname}</div>
                            <p class="fontdiv" style="margin:30px;text-align: right">
                                热度：${blogfour.liulan}<br/>
                                <a href="javascript:void(0)" onclick="getZan('${blogfour.blogContent.blogId}')" style="text-decoration: blink">
                                    <img  src="<%= basePath %>images/shudong-images/Zan.png" />
                                </a> <span name="${blogfour.blogContent.blogId}">${blogfour.zan}</span><br/>
                                <span class="total-comments-on-post pull-right">
                                    <c:if test="${blogfour.pinglun!=0}">
                                        <a href="<%= basePath %>single/main.action?blogId=${blogfour.blogContent.blogId}" style="text-decoration: blink" class="fontdiv">${blogfour.pinglun} 条评论</a>
                                    </c:if>
                                </span>
                            </p>
                        </div>
                        <div class="fh5co_suceefh5co_height_position_absolute_font_2">
                         <i class="fa fa-clock-o"></i>&nbsp;&nbsp;<fmt:formatDate value="${blogfour.blogContent.blogcreatetime}" pattern="MM-dd-yyyy"/>
                            <p class="texthidden"  style=" width:300px;"><a href="<%=basePath%>single/main.action?blogId=${blogfour.blogContent.blogId}" class="fh5co_good_font_2 texthidden">
                                <c:if test="${blogfour.labelInfo.labelname=='书籍'}">
                                    <c:set var="bookname" value=" ${blogfour.blogContent.blogcontent} "/>
                                    《${fn:substringBefore(bookname,"||" )}》
                                </c:if>
                                <c:if test="${blogfour.labelInfo.labelname!='书籍'}">
                                    ${blogfour.blogContent.blogcontent}
                                </c:if>
                                    </a>
                            </p>
                        </div>
                      </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>







<div class="container-fluid pt-3">
    <div class="container animate-box" data-animate-effect="fadeIn">
        <div>
            <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4">${indexmap['blogonelist'].get(0).labelInfo.labelname}</div>
        </div>
        <div class="owl-carousel owl-theme js" id="slider1">

            <c:forEach items="${indexmap['blogonelist']}" var="blogonelist" begin="0" end="9" varStatus="status">
                <div class="item px-2" >
                    <div class="fh5co_latest_trading_img_position_relative">
                        <div class="fh5co_latest_trading_img" onclick="window.location.href='<%=basePath%>single/main.action?blogId=${blogonelist.blogContent.blogId}'">
                            <img name="img" src="<%=basePath%>${blogonelist.blogPics.pic}" onclick="window.location.href='<%=basePath%>single/main.action?blogId=${blogonelist.blogContent.blogId}'" alt="img" />
                        </div>
                        <div class="fh5co_latest_trading_img_position_absolute">
                            <p class="fontdiv" style="margin:30px;text-align: right">
                                热度：${blogonelist.liulan}<br/>
                                <a href="javascript:void(0)" onclick="getZan('${blogonelist.blogContent.blogId}')" style="text-decoration: blink">
                                    <img  src="<%= basePath %>images/shudong-images/Zan.png"/>
                                </a> <span name="${blogonelist.blogContent.blogId}">${blogonelist.zan}</span><br/>
                                <span class="total-comments-on-post pull-right">
                                    <c:if test="${blogonelist.pinglun!=0}">
                                        <a href="<%= basePath %>single/main.action?blogId=${blogonelist.blogContent.blogId}" class="fontdiv" style="text-decoration: blink">${blogonelist.pinglun} 条评论</a>
                                    </c:if>
                                </span>
                            </p>
                        </div>
                        <div class="fh5co_latest_trading_img_position_absolute_1">
                            <p class="text-white texthidden "  style=" width:240px;">
                                <a href="<%=basePath%>single/main.action?blogId=${blogonelist.blogContent.blogId}" class="text-white">
                                    <c:if test="${blogonelist.labelInfo.labelname=='书籍'}">
                                        <c:set var="bookname" value=" ${blogonelist.blogContent.blogcontent} "/>
                                        《${fn:substringBefore(bookname,"||" )}》
                                    </c:if>
                                    <c:if test="${blogonelist.labelInfo.labelname!='书籍'}">
                                        ${blogonelist.blogContent.blogcontent}
                                    </c:if>
                                </a>
                            </p>
                            <div class="fh5co_latest_trading_date_and_name_color c_g">
                                <span onclick="window.location.href='<%=basePath%>index/userself.action?userId=${blogonelist.userInfo.userId}'">${blogonelist.userInfo.usernickname}</span> - <fmt:formatDate value="${blogonelist.blogContent.blogcreatetime}" pattern="yyyy-MM-dd  HH:mm"/> </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>


<div class="container-fluid pb-4 pt-5">
    <div class="container animate-box">
        <div>
            <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4">${indexmap['blogtwolist'].get(0).labelInfo.labelname}</div>
        </div>
        <div class="owl-carousel owl-theme" id="slider2">
            <c:forEach items="${indexmap['blogtwolist']}" var="blogtwolist" begin="0" end="9">
                <div class="item px-2" >
                    <div class="fh5co_hover_news_img">
                        <div class="fh5co_news_img" onclick="window.location.href='<%=basePath%>single/main.action?blogId=${blogtwolist.blogContent.blogId}'">

                            <img name="img" src="<%=basePath%>${blogtwolist.blogPics.pic}"style="" alt="img"/></div>
                        <div>
                            <p class="texthidden" style="width: 350px">
                                <a href="<%=basePath%>single/main.action?blogId=${blogtwolist.blogContent.blogId}" class="fh5co_small_post_heading " >
                                    <c:if test="${blogtwolist.labelInfo.labelname=='书籍'}">
                                        <c:set var="bookname" value=" ${blogtwolist.blogContent.blogcontent} "/>
                                        《${fn:substringBefore(bookname,"||" )}》
                                    </c:if>
                                    <c:if test="${blogtwolist.labelInfo.labelname!='书籍'}">
                                        ${blogtwolist.blogContent.blogcontent}
                                    </c:if>
                                </a>
                            </p>

                            <div style="float:left;margin-top: 10px;">
                                <a href="<%=basePath%>/index/userself.action?userId=${blogtwolist.userInfo.userId}}" style="text-decoration: blink">${blogtwolist.userInfo.usernickname}</a><br/>
                                <span><fmt:formatDate value="${blogtwolist.blogContent.blogcreatetime}" pattern="yyyy-MM-dd  HH:mm"/></span>
                            </div>
                            <span class="" style="margin:10px 30px;float: right">
                                热度：${blogtwolist.liulan}<br/>
                                <a href="javascript:void(0)" onclick="getZan('${blogtwolist.blogContent.blogId}')" style="text-decoration: blink">
                                    <img  src="<%= basePath %>images/shudong-images/Zan.png"/>
                                </a> <span name="${blogtwolist.blogContent.blogId}">${blogtwolist.zan}</span><br/>
                                <span class="total-comments-on-post pull-right">
                                    <c:if test="${blogtwolist.pinglun!=0}">
                                    <a href="<%= basePath %>single/main.action?blogId=${blogtwolist.blogContent.blogId}" class="">${blogtwolist.pinglun} 条评论</a>
                                </c:if>
                                </span>
                            </span>

                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>

<div class="container-fluid fh5co_video_news_bg pb-4">
    <div class="container animate-box" data-animate-effect="fadeIn">
        <div>
            <div class="fh5co_heading fh5co_heading_border_bottom pt-5 pb-2 mb-4  text-white">${indexmap['blogthreelist'].get(0).labelInfo.labelname}</div>
        </div>
        <div>
            <div class="owl-carousel owl-theme js" id="slider3">
                <c:forEach items="${indexmap['blogthreelist']}" var="blogthreelist" begin="0" end="9">
                    <div class="item px-2" ><%--onclick="window.location.href='<%=basePath%>single/main.action?blogId=${blogthreelist.blogContent.blogId}'"--%>
                        <div class="fh5co_hover_news_img">
                            <div class="fh5co_news_img" style="text-align: center">
                                <a href="<%=basePath%>single/main.action?blogId=${blogthreelist.blogContent.blogId}">
                                    <img name="img" src="<%=basePath%>${blogthreelist.blogPics.pic}" alt="img"/>
                                </a>
                            </div>
                            <div>
                                <p class="text-white texthidden" style="width: 350px">
                                    <a href="<%=basePath%>single/main.action?blogId=${blogthreelist.blogContent.blogId}" class="fh5co_small_post_heading fh5co_small_post_heading_1" >
                                        <c:if test="${blogthreelist.labelInfo.labelname=='书籍'}">
                                            <c:set var="bookname" value=" ${blogthreelist.blogContent.blogcontent} "/>
                                            《${fn:substringBefore(bookname,"||" )}》
                                        </c:if>
                                        <c:if test="${blogthreelist.labelInfo.labelname!='书籍'}">
                                            ${blogthreelist.blogContent.blogcontent}
                                        </c:if>
                                    </a>
                                </p>

                                <p style="text-align: right"><fmt:formatDate value="${blogthreelist.blogContent.blogcreatetime}" pattern="yyyy-MM-dd  HH:mm"/></p>
                            </div>
                        </div>
                    </div>
                </c:forEach>

            </div>
        </div>
    </div>
</div>

<div class="container-fluid pb-4 pt-4 paddding">
    <div class="container paddding">
        <div class="row mx-0">
            <div class="col-md-8 animate-box" data-animate-effect="fadeInLeft">
                <div>
                    <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4">${indexmap['blogfourlist'].get(0).labelInfo.labelname}</div>
                </div>
                <c:forEach items="${indexmap['blogfourlist']}" var="blogfourlist" begin="0" end="3">
                    <div class="row pb-4">
                        <div class="col-md-4"> <%--onclick="window.location.href='<%=basePath%>single/main.action?blogId=${blogfourlist.blogContent.blogId}'"--%>
                            <div class="fh5co_hover_news_img">
                                <div class="fh5co_news_img" style="width: 200px;">
                                    <a href="<%=basePath%>single/main.action?blogId=${blogfourlist.blogContent.blogId}">
                                        <img name="img" src="<%=basePath%>${blogfourlist.blogPics.pic}"style="" alt=""/>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-7">
                            <p></p>
                            <p class="texthidden" style="width: 400px">
                                <a href="<%=basePath%>single/main.action?blogId=${blogfourlist.blogContent.blogId}" class="fh5co_magna py-2">
                                    <c:if test="${blogfourlist.labelInfo.labelname=='书籍'}">
                                        <c:set var="bookname" value=" ${blogfourlist.blogContent.blogcontent} "/>
                                        《${fn:substringBefore(bookname,"||" )}》
                                    </c:if>
                                    <c:if test="${blogfourlist.labelInfo.labelname!='书籍'}">
                                        ${blogfourlist.blogContent.blogcontent}
                                    </c:if>
                                </a>
                                <span class="" style="text-align: right;float: right">
                                    热度：${blogfourlist.liulan}<br/>
                                    <a href="javascript:void(0)" onclick="getZan('${blogfourlist.blogContent.blogId}')" style="text-decoration: blink">
                                        <img  src="<%= basePath %>images/shudong-images/Zan.png"/>
                                    </a> <span name="${blogfourlist.blogContent.blogId}">${blogfourlist.zan}</span><br/>
                                    <span class="total-comments-on-post pull-right">
                                        <c:if test="${blogfourlist.pinglun!=0}">
                                            <a href="<%= basePath %>single/main.action?blogId=${blogfourlist.blogContent.blogId}" class="">${blogfourlist.pinglun} 条评论</a>
                                        </c:if>
                                    </span>
                                </span>
                                <br/><br/>
                                <a href="<%=basePath%>/index/userself.action?userId=${blogfourlist.userInfo.userId}" style="text-decoration: blink">${blogfourlist.userInfo.username}</a>
                                <span> - <fmt:formatDate value="${blogfourlist.blogContent.blogcreatetime}" pattern="yyyy-MM-dd  HH:mm"/>
                                </span>
                            </p>
                            <div class="fh5co_consectetur"> ${blogfourlist.blogContent.blogcontent}
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>

            <div class="col-md-3 animate-box" data-animate-effect="fadeInRight">
                <div>
                    <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4">话题</div>
                </div>
                <div class="clearfix"></div>
                <div class="fh5co_tags_all">
                    <c:forEach items="${labelList}" var="labellist">
                        <a href="<%=basePath%>topic/main.action?labelId=${labellist.labelId}" class="fh5co_tagg">${labellist.labelname}</a>
                    </c:forEach>
                    <a href="<%=basePath%>topic/all.action" class="fh5co_tagg">更多...</a>
                </div>


                <div>
                    <div class="fh5co_heading fh5co_heading_border_bottom pt-3 py-2 mb-4">能量达人</div>
                </div>
                <c:forEach items="${indexmap['userList5']}" var="userlist" begin="0" end="4">
                    <div class="row pb-3"  style="margin: 20px 0;">
                        <div class="col-5 align-self-center">
                            <a href="<%=basePath%>index/userself.action?userId=${userlist.userId}">
                                <img src="<%=basePath%>img${userlist.userimg}" alt="img" class="fh5co_most_trading"/>
                            </a>
                        </div>
                        <div class="col-7 paddding">
                            <div class="most_fh5co_treding_font">
                                <span onclick="window.location.href='<%=basePath%>index/userself.action?userId=${userlist.userId}'">
                                        ${userlist.usernickname}
                                </span>
                                <span style="float:right;">
                                    <c:if test="${follower == null}">
                                         <a id="cared" href="javascript:void(0)"
                                            onclick="clickfollow(${userlist.userId})" style="text-decoration: blink">关注</a>
                                    </c:if>
                                    <c:set var="flag" value="true"></c:set>
                                    <c:forEach items="${follower}" var="follower">
                                        <c:if test="${follower.userId == userlist.userId}">
                                            <c:set var="flag" value="false"></c:set>
                                            <a id="${userlist.userId}" href="javascript:void(0)"
                                               onclick="clickfollow(${userlist.userId})" style="text-decoration: blink">取消关注</a>
                                        </c:if>
                                    </c:forEach>
                                    <c:if test="${flag == 'true'}">
                                        <a id="${userlist.userId}" href="javascript:void(0)"
                                           onclick="clickfollow(${userlist.userId})" style="text-decoration: blink">关注</a>
                                    </c:if>
                                    <%--</c:forEach>--%>
                                </span>

                            </div>
                            <div class="most_fh5co_treding_font_123">
                                    ${userlist.userintroduce}
                            </div>
                        </div>
                    </div>
                </c:forEach>



            </div>
        </div>

    </div>
</div>

<c:import url="${basePath}footer.jsp" ></c:import>


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
    var img=document.getElementsByName("img");
    //alert(img.length);
    for(var i=0;i<img.length;i++){
        if (!/*@cc_on!@*/0) {//if not IE
            //Firefox2、Firefox3、Safari3.1+、Opera9.6+ support js.onload
        // img[i].onload = funcition(){}
            //alert(img[i].width+"----"+img[i].height);
             if(img[i].width>img[i].height){
                 img[i].style.height="100%";
                 //alert("h");
             }else{
                 img[i].style.width="100%";
                 //alert("w");
             }
        }else{
            //IE6、IE7 support js.onreadystatechange
            img[i].onreadystatechange = function () {
                if (img[i].readyState == 'loaded' || img[i].readyState == 'complete') {
                    if(img[i].width>img[i].height){
                        img[i].style.height="100%";
                    }else{
                        img[i].style.width="100%";
                    }
                }
            }
        }
    }
</script>





</body>
</html>

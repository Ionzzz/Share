<%--
  Created by IntelliJ IDEA.
  User: 刘琪
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
    <link href="<%=basePath%>css/index-css/media_query.css" rel="stylesheet" type="text/css"/>
    <link href="<%=basePath%>css/index-css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="<%=basePath%>css/index-css/font-awesome.min.css">
    <link href="<%=basePath%>css/index-css/animate.css" rel="stylesheet" type="text/css"/>
    <link href="<%=basePath%>css/index-css/Poppins.css" rel="stylesheet">
    <link href="<%=basePath%>css/index-css/owl.carousel.css" rel="stylesheet" type="text/css"/>
    <link href="<%=basePath%>css/index-css/owl.theme.default.css" rel="stylesheet" type="text/css"/>
    <!-- Bootstrap CSS -->
    <link href="<%=basePath%>css/index-css/style_1.css" rel="stylesheet" type="text/css"/>
    <!-- Modernizr JS -->
    <script src="<%=basePath%>js/index-js/modernizr-3.5.0.min.js"></script>

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
    </style>
    <script>

        function getZan(blogId) {
            $.ajax({
                type:"post",
                url:'${pageContext.request.contextPath }/shuDong/Zan.action',
                data : {"blogId":blogId},
                dateType:'json',
                success:function (data) {
                    $("span[name="+blogId+"]").html(data);
                }
            });
        }
        $(function () {
            setInterval(function () {

            }, 1000);
        });


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
                <a href="#" class="color_fff fh5co_mediya_setting">Instagram’s big redesign goes live with black-and-white app</a>
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
                    <a href="" target="_blank" class="fh5co_display_table"><div class="fh5co_verticle_middle"><i class="fa fa-twitter"></i></div></a>
                </div>
<%--头像  个人中心--%>
                <div class="text-center d-inline-block">
                    <a href="<%=basePath%>personalpage/personal.action" target="_blank" class="fh5co_display_table">
                        <div class="fh5co_verticle_middle"><i class="fa fa-facebook"></i>
                        </div><img src="<%=basePath%>images/index-images/person_1.jpg" height="50px" width="50px"/></a>
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
            <a class="navbar-brand" href="#"><img src="<%=basePath%>images/index-images/logo.png" alt="img" class="mobile_logo_width"/></a>
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
                        <a class="nav-link" href="<%=basePath%>publishBlog.jsp" id="dropdownMenuButton2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">发布</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="<%=basePath%>shuDong/main.action">树洞 <span class="sr-only">(current)</span></a>
                    </li>

                    <li class="nav-item ">
                        <a class="nav-link" href="<%=basePath%>about.jsp">关于我们 <span class="sr-only">(current)</span></a>
                    </li>

                    <li class="nav-item ">
                        <a class="nav-link" href="<%=basePath%>contactUs.jsp">联系我们 <span class="sr-only">(current)</span></a>
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
                <a href="<%=basePath%>single/main.action?blogId=${indexmap['blogone'].blogContent.blogId}">
                    <img src="<%=basePath%>${indexmap['blogone'].blogPics.pic}" style="height:100%" alt="img"/>
                </a>
                <div class="fh5co_suceefh5co_height_position_absolute">
                    <p  class="fontdiv" style="margin:30px;text-align: right">
                        热度：${indexmap['blogone'].liulan}<br/>
                        <a href="javascript:void(0)" onclick="getZan('${indexmap['blogone'].blogContent.blogId}')" class="fontdiv">
                            <span  onclick="changeZanImg()">
                                <img  src="<%= basePath %>images/shudong-images/Zan.png"/></span>
                        </a> <span name="${indexmap['blogone'].blogContent.blogId}">${indexmap['blogone'].zan}</span><br/>
                        <span class="total-comments-on-post pull-right">
                            <c:if test="${indexmap['blogone'].pinglun!=0}">
                                <a href="<%= basePath %>single/main.action?blogId=${indexmap['blogone'].blogContent.blogId}"class="fontdiv">${indexmap['blogone'].pinglun} 条评论</a>
                            </c:if>
                        </span>
                    </p>
                </div>
                <div class="fh5co_suceefh5co_height_position_absolute_font">
                     <i class="fa fa-clock-o"></i>&nbsp;&nbsp;<fmt:formatDate value="${indexmap['blogone'].blogContent.blogcreatetime}" pattern="MM-dd-yyyy"/>
                    <p class="texthidden"  style=" width:600px;"><a href="<%=basePath%>single/main.action?blogId=${indexmap['blogone'].blogContent.blogId}" class="fh5co_good_font"> ${indexmap['blogone'].blogContent.blogcontent} </a></p>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="row">
                <c:forEach items="${indexmap['blogfourlist']}" var="blogfourlist">
                    <div class="col-md-6 col-6 paddding animate-box"data-animate-effect="fadeIn">
                      <div class="fh5co_suceefh5co_height_2">
                          <img src="<%=basePath%>${blogfourlist.blogPics.pic}" style="width: 100%" alt="img"/>
                        <div class="fh5co_suceefh5co_height_position_absolute">
                            <p class="fontdiv" style="margin:30px;text-align: right">
                                热度：${blogfourlist.liulan}<br/>
                                <a href="javascript:void(0)" onclick="getZan('${blogfourlist.blogContent.blogId}')">
                                    <span  onclick="changeZanImg()">
                                        <img  src="<%= basePath %>images/shudong-images/Zan.png"/></span>
                                </a> <span name="${blogfourlist.blogContent.blogId}">${blogfourlist.zan}</span><br/>
                                <span class="total-comments-on-post pull-right">
                                    <c:if test="${blogfourlist.pinglun!=0}">
                                        <a href="<%= basePath %>single/main.action?blogId=${blogfourlist.blogContent.blogId}" class="fontdiv">${blogfourlist.pinglun} 条评论</a>
                                    </c:if>
                                </span>
                            </p>
                        </div>
                        <div class="fh5co_suceefh5co_height_position_absolute_font_2">
                         <i class="fa fa-clock-o"></i>&nbsp;&nbsp;<fmt:formatDate value="${blogfourlist.blogContent.blogcreatetime}" pattern="MM-dd-yyyy"/>
                            <p class="texthidden"  style=" width:300px;"><a href="<%=basePath%>single/main.action?blogId=${blogfourlist.blogContent.blogId}" class="fh5co_good_font_2 texthidden"> ${blogfourlist.blogContent.blogcontent} </a></p>
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
            <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4">家居</div>
        </div>
        <div class="owl-carousel owl-theme js" id="slider1">

            <c:forEach items="${indexmap['blogJiaJu']}" var="blogJiaJu">
                <div class="item px-2" >
                    <div class="fh5co_latest_trading_img_position_relative">
                        <div class="fh5co_latest_trading_img"onclick="window.location.href='<%=basePath%>single/main.action?blogId=${blogJiaJu.blogContent.blogId}'">
                            <img src="<%=basePath%>${blogJiaJu.blogPics.pic}" alt="img"/>
                        </div>
                        <div class="fh5co_latest_trading_img_position_absolute">
                            <p class="fontdiv" style="margin:30px;text-align: right">
                                热度：${blogJiaJu.liulan}<br/>
                                <a href="javascript:void(0)" onclick="getZan('${blogJiaJu.blogContent.blogId}')">
                                    <span  onclick="changeZanImg()">
                                        <img  src="<%= basePath %>images/shudong-images/Zan.png"/></span>
                                </a> <span name="${blogJiaJu.blogContent.blogId}">${blogJiaJu.zan}</span><br/>
                                <span class="total-comments-on-post pull-right">
                                    <c:if test="${blogJiaJu.pinglun!=0}">
                                        <a href="<%= basePath %>single/main.action?blogId=${blogJiaJu.blogContent.blogId}" class="fontdiv">${blogJiaJu.pinglun} 条评论</a>
                                    </c:if>
                                </span>
                            </p>
                        </div>
                        <div class="fh5co_latest_trading_img_position_absolute_1">
                            <p class="text-white texthidden "  style=" width:240px;"> <a href="<%=basePath%>single/main.action?blogId=${blogJiaJu.blogContent.blogId}" class="text-white"> ${blogJiaJu.blogContent.blogcontent} </a></p>
                            <div class="fh5co_latest_trading_date_and_name_color c_g">
                                    ${blogJiaJu.userInfo.usernickname} - <fmt:formatDate value="${blogJiaJu.blogContent.blogcreatetime}" pattern="yyyy-MM-dd  HH:mm"/> </div>
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
            <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4">旅行</div>
        </div>
        <div class="owl-carousel owl-theme" id="slider2">
            <c:forEach items="${indexmap['blogLvXing']}" var="blogLvXing">
                <div class="item px-2" onclick="window.location.href='<%=basePath%>single/main.action?blogId=${blogLvXing.blogContent.blogId}'">
                    <div class="fh5co_hover_news_img">
                        <div class="fh5co_news_img">
                            <img src="<%=basePath%>${blogLvXing.blogPics.pic}"style="width:100%;margin:auto" alt="img"/></div>
                        <div>
                            <p class="texthidden" style="width: 350px">
                                <a href="<%=basePath%>single/main.action?blogId=${blogLvXing.blogContent.blogId}" class="fh5co_small_post_heading " >${blogLvXing.blogContent.blogcontent}</a>
                            </p>
                            <p class="" style="margin:30px;text-align: right">
                                热度：${blogLvXing.liulan}<br/>
                                <a href="javascript:void(0)" onclick="getZan('${blogLvXing.blogContent.blogId}')"><span  onclick="changeZanImg()">
                                    <img  src="<%= basePath %>images/shudong-images/Zan.png"/></span>
                                </a> <span name="${blogLvXing.blogContent.blogId}">${blogLvXing.zan}</span><br/>
                                <span class="total-comments-on-post pull-right">
                                    <c:if test="${blogLvXing.pinglun!=0}">
                                    <a href="<%= basePath %>single/main.action?blogId=${blogLvXing.blogContent.blogId}" class="">${blogLvXing.pinglun} 条评论</a>
                                </c:if>
                                </span>
                            </p>
                            <p style="text-align: right"><fmt:formatDate value="${blogLvXing.blogContent.blogcreatetime}" pattern="yyyy-MM-dd  HH:mm"/></p>
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
            <div class="fh5co_heading fh5co_heading_border_bottom pt-5 pb-2 mb-4  text-white">美食</div>
        </div>
        <div>
            <div class="owl-carousel owl-theme js" id="slider3">
                <c:forEach items="${indexmap['blogFood']}" var="blogfood">
                    <div class="item px-2" ><%--onclick="window.location.href='<%=basePath%>single/main.action?blogId=${blogfood.blogContent.blogId}'"--%>
                        <div class="fh5co_hover_news_img">
                            <div class="fh5co_news_img">
                                <a href="<%=basePath%>single/main.action?blogId=${blogfood.blogContent.blogId}">
                                    <img src="<%=basePath%>${blogfood.blogPics.pic}" style="width: 100%;" alt="img"/>
                                </a>
                            </div>
                            <div>
                                <p class="text-white texthidden" style="width: 350px">
                                    <a href="<%=basePath%>single/main.action?blogId=${blogfood.blogContent.blogId}" class="fh5co_small_post_heading fh5co_small_post_heading_1" >${blogfood.blogContent.blogcontent}</a>
                                </p>
                                <p style="text-align: right"><fmt:formatDate value="${blogfood.blogContent.blogcreatetime}" pattern="yyyy-MM-dd  HH:mm"/></p>
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
                    <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4">书籍</div>
                </div>
                <c:forEach items="${indexmap['blogBook4']}" var="blogbook">
                    <div class="row pb-4">
                        <div class="col-md-4"> <%--onclick="window.location.href='<%=basePath%>single/main.action?blogId=${blogbook.blogContent.blogId}'"--%>
                            <div class="fh5co_hover_news_img">
                                <div class="fh5co_news_img" style="width: 200px;">
                                    <a href="<%=basePath%>single/main.action?blogId=${blogbook.blogContent.blogId}">
                                        <img src="<%=basePath%>${blogbook.blogPics.pic}"style="width: 200px;" alt=""/>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-7">
                            <p></p>
                            <p class="texthidden" style="width: 400px">
                                <a href="<%=basePath%>single/main.action?blogId=${blogbook.blogContent.blogId}" class="fh5co_magna py-2">
                                    <c:set var="bookname" value="${blogbook.blogContent.blogcontent}"/>
                                      《${fn:substringBefore(bookname,"||" )}》  </a></p>

                                    ${blogbook.userInfo.username} -  <fmt:formatDate value="${blogbook.blogContent.blogcreatetime}" pattern="yyyy-MM-dd  HH:mm"/>
                            <div class="fh5co_consectetur"> ${blogbook.blogContent.blogcontent}
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
                <c:forEach items="${indexmap['userList5']}" var="userlist">
                    <div class="row pb-3"  style="margin: 20px 0;"onclick="window.location.href='<%=basePath%>index/userself.action?userId=${userlist.userId}'">
                        <div class="col-5 align-self-center">
                            <a href="<%=basePath%>index/userself.action?userId=${userlist.userId}">
                                <img src="<%=basePath%>img${userlist.userimg}" alt="img" class="fh5co_most_trading"/>
                            </a>
                        </div>
                        <div class="col-7 paddding">
                            <div class="most_fh5co_treding_font">
                                ${userlist.usernickname}<span style="float:right;"><a href="" style="text-decoration: blink">关注</a></span>
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




<script src="<%=basePath%>js/index-js/jquery.min.js"></script>
<script src="<%=basePath%>js/index-js/owl.carousel.min.js"></script>
<!--<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>-->
<script src="<%=basePath%>js/index-js/tether.min.js"></script>
<script src="<%=basePath%>js/index-js/bootstrap.min.js"></script>
<!-- Waypoints -->
<script src="<%=basePath%>js/index-js/jquery.waypoints.min.js"></script>
<!-- Main -->
<script src="<%=basePath%>js/index-js/main.js"></script>

</body>
</html>

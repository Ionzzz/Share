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
    </style>

</head>
<body>
<div class="container-fluid fh5co_header_bg" style="opacity: 0.9;">
    <div class="container">
        <div class="row">
            <div class="col-12 fh5co_mediya_center"><a href="#" class="color_fff fh5co_mediya_setting"><i
                    class="fa fa-clock-o"></i>&nbsp;&nbsp;&nbsp;Friday, 5 January 2018</a>
                <div class="d-inline-block fh5co_trading_posotion_relative"><a href="#" class="treding_btn">Trending</a>
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
                    <a href="personalpage/personal.jsp" target="_blank" class="fh5co_display_table"><div class="fh5co_verticle_middle"><i class="fa fa-facebook"></i></div><img src="<%=basePath%>images/index-images/person_1.jpg" height="50px" width="50px"/></a>
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
                        <a class="nav-link" href="index.jsp">首页 <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="new.jsp">最新 <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="single.jsp">话题 <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="publishBlog.jsp" id="dropdownMenuButton2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">发布</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="<%=basePath%>shuDong/main.action">树洞 <span class="sr-only">(current)</span></a>
                    </li>

                    <li class="nav-item ">
                        <a class="nav-link" href="about.jsp">关于我们 <span class="sr-only">(current)</span></a>
                    </li>

                    <li class="nav-item ">
                        <a class="nav-link" href="contactUs.jsp">联系我们 <span class="sr-only">(current)</span></a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
</div>
<div class="container-fluid paddding mb-5">
    <div class="row mx-0">
        <div class="col-md-6 col-12 paddding animate-box" data-animate-effect="fadeIn">
            <div class="fh5co_suceefh5co_height" onclick="window.location.href='<%=basePath%>single/main.action?blogId=${blogone.blogContent.blogId}'"><img src="<%=basePath%>${blogone.blogPics.pic}" alt="img"/>
                <div class="fh5co_suceefh5co_height_position_absolute"></div>
                <div class="fh5co_suceefh5co_height_position_absolute_font">
                    <div class=""><a href="#" class="color_fff"> <i class="fa fa-clock-o"></i>&nbsp;&nbsp;<fmt:formatDate value="${blogone.blogContent.blogcreatetime}" pattern="MM-dd-yyyy"/>
                    </a></div>
                    <p class="texthidden"  style=" width:600px;"><a href="single.jsp" class="fh5co_good_font"> ${blogone.blogContent.blogcontent} </a></p>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="row">
                <c:forEach items="${blogfourlist}" var="blogfourlist">
                    <div class="col-md-6 col-6 paddding animate-box"  onclick="window.location.href='<%=basePath%>single/main.action?blogId=${blogfourlist.blogContent.blogId}'" data-animate-effect="fadeIn">
                      <div class="fh5co_suceefh5co_height_2"><img src="<%=basePath%>${blogfourlist.blogPics.pic}" alt="img"/>
                        <div class="fh5co_suceefh5co_height_position_absolute"></div>
                        <div class="fh5co_suceefh5co_height_position_absolute_font_2">
                            <a href="#" class="color_fff"> <i class="fa fa-clock-o"></i>&nbsp;&nbsp;<fmt:formatDate value="${blogfourlist.blogContent.blogcreatetime}" pattern="MM-dd-yyyy"/> </a>
                            <p class="texthidden"  style=" width:300px;"><a href="single.jsp" class="fh5co_good_font_2 texthidden"> ${blogfourlist.blogContent.blogcontent} </a></p>
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
            <c:forEach items="${blogJiaJu}" var="blogJiaJu">
                <div class="item px-2" onclick="window.location.href='<%=basePath%>single/main.action?blogId=${blogJiaJu.blogContent.blogId}'">
                    <div class="fh5co_latest_trading_img_position_relative">
                        <div class="fh5co_latest_trading_img"><img src="<%=basePath%>${blogJiaJu.blogPics.pic}" alt="img" class="fh5co_img_special_relative"/></div>
                        <div class="fh5co_latest_trading_img_position_absolute"></div>
                        <div class="fh5co_latest_trading_img_position_absolute_1">
                            <p class="text-white texthidden "  style=" width:240px;"> <a href="single.jsp" class="text-white"> ${blogJiaJu.blogContent.blogcontent} </a></p>
                            <div class="fh5co_latest_trading_date_and_name_color c_g">
                                    ${blogJiaJu.userInfo.usernickname} - <fmt:formatDate value="${blogJiaJu.blogContent.blogcreatetime}" pattern="yyyy-MM-dd HH:mm:ss"/> </div>
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
            <c:forEach items="${blogLvXing}" var="blogLvXing">
                <div class="item px-2" onclick="window.location.href='<%=basePath%>single/main.action?blogId=${blogLvXing.blogContent.blogId}'">
                    <div class="fh5co_hover_news_img">
                        <div class="fh5co_news_img"><img src="<%=basePath%>${blogLvXing.blogPics.pic}" alt="img"/></div>
                        <div>
                            <p class="texthidden" style="width: 350px"><a href="single.jsp" class="fh5co_small_post_heading " >${blogLvXing.blogContent.blogcontent}</a></p>
                            <p style="text-align: right"><fmt:formatDate value="${blogLvXing.blogContent.blogcreatetime}" pattern="yyyy-MM-dd HH:mm:ss"/></p>
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
            <div class="owl-carousel owl-theme" id="slider3">
                <c:forEach items="${blogFood}" var="blogfood">
                    <div class="item px-2" onclick="window.location.href='<%=basePath%>single/main.action?blogId=${blogfood.blogContent.blogId}'">
                        <div class="fh5co_hover_news_img">
                            <div class="fh5co_news_img"><img src="<%=basePath%>${blogfood.blogPics.pic}" alt="img"/></div>
                            <div>
                                <p class="text-white texthidden" style="width: 350px"><a href="single.jsp" class="fh5co_small_post_heading fh5co_small_post_heading_1" >${blogfood.blogContent.blogcontent}</a></p>
                                <p style="text-align: right"><fmt:formatDate value="${blogfood.blogContent.blogcreatetime}" pattern="yyyy-MM-dd HH:mm:ss"/></p>
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
                <c:forEach items="${blogBook4}" var="blogbook">
                    <div class="row pb-4" onclick="window.location.href='<%=basePath%>single/main.action?blogId=${blogbook.blogContent.blogId}'">
                        <div class="col-md-5">
                            <div class="fh5co_hover_news_img">
                                <div class="fh5co_news_img"><img src="<%=basePath%>${blogbook.blogPics.pic}" alt=""/></div>
                            </div>
                        </div>
                        <div class="col-md-7">
                            <p class="texthidden" style="width: 400px"> <a href="single.jsp" class="fh5co_magna py-2"> Magna aliqua ut enim ad minim veniam quisnostrud quis xercitation ullamco. </a></p>
                            <a href="single.jsp" class="fh5co_mini_time py-3">
                                    ${blogbook.userInfo.username} -  <fmt:formatDate value="${blogbook.blogContent.blogcreatetime}" pattern="yyyy-MM-dd HH:mm:ss"/> </a>
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
                        <a href="#" class="fh5co_tagg">${labellist.labelname}</a>
                    </c:forEach>
                    <a href="#" class="fh5co_tagg">更多...</a>
                </div>
                <div>
                    <div class="fh5co_heading fh5co_heading_border_bottom pt-3 py-2 mb-4">能量达人</div>
                </div>
                <c:forEach items="${userList5}" var="userlist">
                    <div class="row pb-3">
                        <div class="col-5 align-self-center">
                            <img src="<%=basePath%>${userlist.userimg}" alt="img" class="fh5co_most_trading"/>
                        </div>
                        <div class="col-7 paddding">
                            <div class="most_fh5co_treding_font"> ${userlist.usernickname}</div>
                            <div class="most_fh5co_treding_font_123"> ${userlist.userintroduce}</div>
                        </div>
                    </div>
                </c:forEach>


            </div>
        </div>

    </div>
</div>







<div class="container-fluid fh5co_footer_bg pb-3">
    <div class="container animate-box">
        <div class="row">
            <div class="col-12 spdp_right py-5"><img src="<%=basePath%>images/index-images/white_logo.png" alt="img" class="footer_logo"/></div>
            <div class="clearfix"></div>
            <div class="col-12 col-md-4 col-lg-3">
                <div class="footer_main_title py-3"> 关于我们</div>
                <div class="footer_sub_about pb-3">
                    生活不止眼前的苟且<br/>
                    不止诗和远方<br/>
                    更是记录的仪式感<br/>
                    认真的年轻<br/>
                    认真地老去<br/>
                </div>
                <div class="footer_mediya_icon">
                    <div class="text-center d-inline-block"><a class="fh5co_display_table_footer">
                        <div class="fh5co_verticle_middle"><i class="fa fa-linkedin"></i></div>
                    </a></div>
                    <div class="text-center d-inline-block"><a class="fh5co_display_table_footer">
                        <div class="fh5co_verticle_middle"><i class="fa fa-google-plus"></i></div>
                    </a></div>
                    <div class="text-center d-inline-block"><a class="fh5co_display_table_footer">
                        <div class="fh5co_verticle_middle"><i class="fa fa-twitter">111</i></div>
                    </a></div>
                    <div class="text-center d-inline-block"><a class="fh5co_display_table_footer">
                        <div class="fh5co_verticle_middle"><i class="fa fa-facebook"></i></div>
                    </a></div>
                </div>
            </div>
            <div class="col-12 col-md-3 col-lg-2">
                <div class="footer_main_title py-3"> 话题</div>
                <ul class="footer_menu">
                    <li><a href="#" class=""><i class="fa fa-angle-right"></i>&nbsp;&nbsp; 音乐</a></li>
                    <li><a href="#" class=""><i class="fa fa-angle-right"></i>&nbsp;&nbsp; 旅行</a></li>
                    <li><a href="#" class=""><i class="fa fa-angle-right"></i>&nbsp;&nbsp; 美食</a></li>
                    <li><a href="#" class=""><i class="fa fa-angle-right"></i>&nbsp;&nbsp; 手绘</a></li>
                    <li><a href="#" class=""><i class="fa fa-angle-right"></i>&nbsp;&nbsp; 书籍</a></li>
                    <li><a href="#" class=""><i class="fa fa-angle-right"></i>&nbsp;&nbsp; 手工DIY</a></li>
                    <li><a href="#" class=""><i class="fa fa-angle-right"></i>&nbsp;&nbsp; 家居</a></li>
                    <li><a href="#" class=""><i class="fa fa-angle-right"></i>&nbsp;&nbsp; 更多...</a></li>
                </ul>
            </div>
            <div class="col-12 col-md-5 col-lg-3 position_footer_relative">
                <div class="footer_main_title py-3"> 最新发布</div>
                <div class="footer_makes_sub_font"> Dec 31, 2018</div>
                <a href="#" class="footer_post pb-4"> Success is not a good teacher failure makes you humble </a>
                <div class="footer_makes_sub_font"> Dec 31, 2018</div>
                <a href="#" class="footer_post pb-4"> Success is not a good teacher failure makes you humble </a>
                <div class="footer_makes_sub_font"> Dec 31, 2018</div>
                <a href="#" class="footer_post pb-4"> Success is not a good teacher failure makes you humble </a>
                <div class="footer_position_absolute"><img src="<%=basePath%>images/index-images/footer_sub_tipik.png" alt="img" class="width_footer_sub_img"/></div>
            </div>
            <div class="col-12 col-md-12 col-lg-4 ">
                <div class="footer_main_title py-3"> 动态</div>
                <a href="#" class="footer_img_post_6"><img src="<%=basePath%>images/index-images/allef-vinicius-108153.jpg" alt="img"/></a>
                <a href="#" class="footer_img_post_6"><img src="<%=basePath%>images/index-images/32-450x260.jpg" alt="img"/></a>
                <a href="#" class="footer_img_post_6"><img src="<%=basePath%>images/index-images/download (1).jpg" alt="img"/></a>
                <a href="#" class="footer_img_post_6"><img src="<%=basePath%>images/index-images/science-578x362.jpg" alt="img"/></a>
                <a href="#" class="footer_img_post_6"><img src="<%=basePath%>images/index-images/vil-son-35490.jpg" alt="img"/></a>
                <a href="#" class="footer_img_post_6"><img src="<%=basePath%>images/index-images/zack-minor-15104.jpg" alt="img"/></a>
                <a href="#" class="footer_img_post_6"><img src="<%=basePath%>images/index-images/download.jpg" alt="img"/></a>
                <a href="#" class="footer_img_post_6"><img src="<%=basePath%>images/index-images/download (2).jpg" alt="img"/></a>
                <a href="#" class="footer_img_post_6"><img src="<%=basePath%>images/index-images/ryan-moreno-98837.jpg" alt="img"/></a>
            </div>
        </div>
        <div class="row justify-content-center pt-2 pb-4">
            <div class="col-12 col-md-8 col-lg-7 ">
                <div class="input-group">
                    <span class="input-group-addon fh5co_footer_text_box" id="basic-addon1"><i class="fa fa-envelope"></i></span>
                    <input type="text" class="form-control fh5co_footer_text_box" placeholder="邮箱" aria-describedby="basic-addon1">
                    <a href="#" class="input-group-addon fh5co_footer_subcribe" id="basic-addon12"> <i class="fa fa-paper-plane-o"></i>&nbsp;&nbsp;发送</a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid fh5co_footer_right_reserved">
    <div class="container">

    </div>
</div>

<div class="gototop js-top">
    <a href="#" class="js-gotop"><i class="fa fa-arrow-up"></i></a>
</div>

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

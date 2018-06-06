<%--
  Created by IntelliJ IDEA.
  User: ion
  Date: 2018/5/28
  Time: 19:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title></title>
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
</head>
<body class="single">

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
                    <li>
                        <a href="new.jsp">最新</a>
                        <ul>
                            <li><a href="#">Right Sidebar</a></li>
                            <li><a href="#">Left Sidebar</a></li>
                            <li><a href="#">No Sidebar</a></li>
                        </ul>
                    </li>
                    <li><a href="topic.jsp">话题</a></li>
                    <li class="current-menu-item"><a href="single.jsp">发布</a></li>
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
</header>


<div id="fh5co-title-box" style=" background-image: url(<%=basePath%>images/index-images/letter_bg_01.jpg);  background-position: 0px 50%;" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="page-title">
        <img src="<%=basePath%>images/index-images/person_1.jpg" alt="Free HTML5 by FreeHTMl5.co">
        <span>${blog.blogContent.blogcreatetime}</span>
        <h2>How to write interesting articles</h2>
    </div>
</div>
<div id="fh5co-single-content" class="container-fluid pb-4 pt-4 paddding">
    <div class="container paddding">
        <div class="row mx-0">
            <div class="col-md-8 animate-box" data-animate-effect="fadeInLeft">
                <div>
                    <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4"><fmt:formatDate value="${blog.blogContent.blogcreatetime}" pattern="yyyy-MM-dd"/></div>
                </div>
                ${blog.blogContent.blogcontent}
                <%--<p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla malesuada enim id enim congue
                    convallis. Praesent a cursus orci. Proin mauris eros, rhoncus in risus nec, vestibulum dignissim
                    diam. Duis dapibus, magna ac fringilla consectetur, tellus quam aliquam quam, molestie tincidunt
                    justo risus et nunc. Donec quis justo nec diam hendrerit facilisis placerat non magna. Class aptent
                    taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
                </p>--%>

            </div>
            <div class="col-md-3 animate-box" data-animate-effect="fadeInRight">
                <div>
                    <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4">Tags</div>
                </div>
                <div class="clearfix"></div>
                <div class="fh5co_tags_all">
                    <c:forEach items="${LabelName}" var="labelname">
                        <a href="#" class="fh5co_tagg">${labelname}</a>
                    </c:forEach>
                    <a href="#" class="fh5co_tagg">更多</a>

                </div>
                <div>
                    <div class="fh5co_heading fh5co_heading_border_bottom pt-3 py-2 mb-4">Most Popular</div>
                </div>

                <div class="row pb-3">
                    <div class="col-5 align-self-center">
                        <img src="<%=basePath%>images/index-images/allef-vinicius-108153.jpg" alt="img" class="fh5co_most_trading"/>
                    </div>
                    <div class="col-7 paddding">
                        <div class="most_fh5co_treding_font"> Enim ad minim veniam nostrud xercitation ullamco.</div>
                        <div class="most_fh5co_treding_font_123"> April 18, 2018</div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<div id="comments">
    <div class="white-wrap container">
        <ol class="comments">
            <li class="comment"><span class="comment-author-avatar">
					<img src="<%=basePath%>images/index-images/comments/placeholder.png" alt="" />
			</span>
                <div class="comment-inner">
                    <div class="comment-info clearfix">
                        <div class="comment-meta">
                            <span class="comment-meta-author">Stephany Moore</span>
                            <span class="comment-meta-date">March 31, 2015</span>
                        </div>
                        <!-- .comment-meta -->
                        <span class="comment-reply"> <a rel="nofollow" href="#">Reply</a></span>
                    </div>
                    <!-- .comment-info -->
                    <div class="comment-main">
                        <p>Proin quis nunc ut quam fermentum dignissim. Fusce mi
                            nisl, auctor non laoreet a, auctor vel sem. Ut quis ex quis
                            turpis accumsan molestie. Cras lobortis, elit vitae tincidunt
                            varius, arcu augue vehicula tellus, vel aliquet ante odio eu mi.
                            Nam nec nulla elit.</p>
                    </div>
                    <!-- .comment-main -->
                </div> <!-- .comment-inner -->
                <ul class="comment-children">
                    <li class="comment"><span class="comment-author-avatar"><img src="<%=basePath%>images/index-images/comments/placeholder.png" alt="" /></span>
                        <div class="comment-inner">
                            <div class="comment-info clearfix">
                                <div class="comment-meta">
                                    <span class="comment-meta-author">Stephany Moore</span>
                                    <span class="comment-meta-date">March 31, 2015</span>
                                </div>
                                <!-- .comment-meta -->
                                <span class="comment-reply"> <a rel="nofollow" href="#">Reply</a>
								</span>
                            </div>
                            <!-- .comment-info -->
                            <div class="comment-main">
                                <p>Proin quis nunc ut quam fermentum dignissim. Fusce mi
                                    nisl, auctor non laoreet a, auctor vel sem. Ut quis ex quis
                                    turpis accumsan molestie. Cras lobortis, elit vitae tincidunt
                                    varius, arcu augue vehicula tellus, vel aliquet ante odio eu
                                    mi. Nam nec nulla elit.</p>
                            </div>
                            <!-- .comment-main -->
                        </div> <!-- .comment-inner --></li>
                    <!-- .comment -->
                </ul> <!-- .children --></li>
            <!-- .comment -->
            <li class="comment"><span class="comment-author-avatar"><img src="<%=basePath%>images/index-images/comments/placeholder.png" alt="" /></span>
                <div class="comment-inner">
                    <div class="comment-info clearfix">
                        <div class="comment-meta">
                            <span class="comment-meta-author">Stephany Moore</span> <span class="comment-meta-date">March 31, 2015</span>
                        </div>
                        <!-- .comment-meta -->
                        <span class="comment-reply"> <a rel="nofollow" href="#">Reply</a>
						</span>
                    </div>
                    <!-- .comment-info -->
                    <div class="comment-main">
                        <p>Proin quis nunc ut quam fermentum dignissim. Fusce mi
                            nisl, auctor non laoreet a, auctor vel sem. Ut quis ex quis
                            turpis accumsan molestie. Cras lobortis, elit vitae tincidunt
                            varius, arcu augue vehicula tellus, vel aliquet ante odio eu mi.
                            Nam nec nulla elit.</p>
                    </div>
                    <!-- .comment-main -->
                </div> <!-- .comment-inner --></li>
            <!-- .comment -->
        </ol>
    </div>
    <!-- .white-wrap -->
</div>
<!-- #comments -->



<div class="container-fluid pb-4 pt-5">
    <div class="container animate-box">
        <div>
            <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4">Trending</div>
        </div>
        <div class="owl-carousel owl-theme" id="slider2">
            <div class="item px-2">
                <div class="fh5co_hover_news_img">
                    <div class="fh5co_news_img"><img src="<%=basePath%>images/index-images/39-324x235.jpg" alt=""/></div>
                    <div>
                        <a href="#" class="d-block fh5co_small_post_heading"><span class="">The top 10 best computer speakers in the market</span></a>
                        <div class="c_g"><i class="fa fa-clock-o"></i> Oct 16,2017</div>
                    </div>
                </div>
            </div>
            <div class="item px-2">
                <div class="fh5co_hover_news_img">
                    <div class="fh5co_news_img"><img src="<%=basePath%>images/index-images/joe-gardner-75333.jpg" alt=""/></div>
                    <div>
                        <a href="#" class="d-block fh5co_small_post_heading"><span class="">The top 10 best computer speakers in the market</span></a>
                        <div class="c_g"><i class="fa fa-clock-o"></i> Oct 16,2017</div>
                    </div>
                </div>
            </div>
            <div class="item px-2">
                <div class="fh5co_hover_news_img">
                    <div class="fh5co_news_img"><img src="<%=basePath%>images/index-images/ryan-moreno-98837.jpg" alt=""/></div>
                    <div>
                        <a href="#" class="d-block fh5co_small_post_heading"><span class="">The top 10 best computer speakers in the market</span></a>
                        <div class="c_g"><i class="fa fa-clock-o"></i> Oct 16,2017</div>
                    </div>
                </div>
            </div>
            <div class="item px-2">
                <div class="fh5co_hover_news_img">
                    <div class="fh5co_news_img"><img src="<%=basePath%>images/index-images/seth-doyle-133175.jpg" alt=""/></div>
                    <div>
                        <a href="#" class="d-block fh5co_small_post_heading"><span class="">The top 10 best computer speakers in the market</span></a>
                        <div class="c_g"><i class="fa fa-clock-o"></i> Oct 16,2017</div>
                    </div>
                </div>
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
                <div class="footer_main_title py-3"> About</div>
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
                        <div class="fh5co_verticle_middle"><i class="fa fa-twitter"></i></div>
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
                    <li><a href="#" class=""><i class="fa fa-angle-right"></i>&nbsp;&nbsp; 手工</a></li>
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
<!-- Parallax -->
<script src="<%=basePath%>js/index-js/jquery.stellar.min.js"></script>
<!-- Main -->
<script src="<%=basePath%>js/index-js/main.js"></script>
<script>if (!navigator.userAgent.match(/Android|BlackBerry|iPhone|iPad|iPod|Opera Mini|IEMobile/i)){$(window).stellar();}</script>

</body>
</html>

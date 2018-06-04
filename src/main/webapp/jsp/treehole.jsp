<%--
  Created by IntelliJ IDEA.
  User: bin
  Date: 2018/5/30
  Time: 10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html lang="zh">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>树洞</title>
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/index-css/index.css" media="all" />
    <link rel="stylesheet" href="<%=basePath%>css/index-css/main.css">
    <link href='<%=basePath%>css/index-css/nav_font.css' rel='stylesheet' type='text/css'>

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

<body class="home blog custom-background round-avatars">


<header id="header">

    <div id="header-top">
        <div class="wrapper clearfix">
            <nav id="navigation">
                <ul class="menu">
                    <li>
                        <a href="index.jsp">首页</a>
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
                            <li><a href="single.jsp">Right Sidebar</a></li>
                            <li><a href="#">Left Sidebar</a></li>
                            <li><a href="#">No Sidebar</a></li>
                        </ul>
                    </li>
                    <li><a href="topic.jsp">话题</a></li>
                    <li><a href="single.jsp">发布</a></li>
                    <li class="current-menu-item"><a href="treehole.jsp">树洞</a></li>
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



<div class="Yarn_Background" style="background-image: url( <%=basePath%>images/index-images/47fb3c_.jpg)"></div>
<form class="js-search search-form search-form--modal" method="get" action="" role="search">
    <div class="search-form__inner">
        <div>
            <div id="search-container" class="ajax_search">
                <form method="get" id="searchform" action="">
                    <div class="filter_container"><input type="text" value="" autocomplete="off" placeholder="Type then select or enter" name="s" id="search-input" />
                        <ul id="search_filtered" class="search_filtered"></ul>
                    </div>
                    <input type="submit" name="submit" id="searchsubmit" class="searchsubmit" value="" />
                </form>
            </div>
        </div>
    </div>
</form>


<div class="navi" data-aos="fade-down">
    <div class="bt-nav">
        <div class="line line1"></div>
        <div class="line line2"></div>
        <div class="line line3"></div>
    </div>
    <div class="navbar animated fadeInRight">
        <div class="inner">
            <nav id="site-navigation" class="main-navigation">
                <div id="main-menu" class="main-menu-container">
                    <div class="menu-menu-container">
                        <ul id="primary-menu" class="menu">
                            <li id="menu-item-17" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-17">
                                <a href="index.jsp">首页</a>
                            </li>
                            <li id="menu-item-173" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-173">
                                <a href="new.jsp">最新</a>
                            </li>
                            <li id="menu-item-78" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-78">
                                <a href="link.html">链接</a>
                            </li>
                            <li id="menu-item-252" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-252">
                                <a href="archives.html">归档</a>
                                <ul class="sub-menu">
                                    <li id="menu-item-165" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-165">
                                        <a href="">theme</a>
                                    </li>
                                    <li id="menu-item-163" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-163">
                                        <a href="">Happen</a>
                                    </li>
                                    <li id="menu-item-924" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-924">
                                        <a href="">WeWork</a>
                                    </li>
                                    <li id="menu-item-164" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-164">
                                        <a href="">WordPress</a>
                                    </li>
                                </ul>
                            </li>
                            <li id="menu-item-57" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-57">
                                <a href="gustbook.html">留言</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- #site-navigation -->
        </div>
    </div>
</div>
<div class="hebin" data-aos="fade-down">
    <i class=" js-toggle-search iconfont">&#xe60e;</i>
</div>
<header id="masthead" class="overlay animated from-bottom" itemprop="brand">
    <div class="site-branding text-center">
        <a href="">
            <figure>
                <img class="custom-logo avatar" src=" <%=basePath%>images/index-images/omikron.png" />
            </figure>
        </a>
        <h3 class="blog-description"><p>This is beauty</p></h3>
    </div>
    <!-- .site-branding -->
    <div class="decor-part">
        <div id="particles-js"></div>
    </div>
    <div class="animation-header">
        <div class="decor-wrapper">
            <svg id="header-decor" class="decor bottom" xmlns="http://www.w3.org/2000/svg" version="1.1" viewBox="0 0 100 100" preserveAspectRatio="none">
                <path class="large left" d="M0 0 L50 50 L0 100" fill="rgba(255,255,255, .1)"></path>
                <path class="large right" d="M100 0 L50 50 L100 100" fill="rgba(255,255,255, .1)"></path>
                <path class="medium left" d="M0 100 L50 50 L0 33.3" fill="rgba(255,255,255, .3)"></path>
                <path class="medium right" d="M100 100 L50 50 L100 33.3" fill="rgba(255,255,255, .3)"></path>
                <path class="small left" d="M0 100 L50 50 L0 66.6" fill="rgba(255,255,255, .5)"></path>
                <path class="small right" d="M100 100 L50 50 L100 66.6" fill="rgba(255,255,255, .5)"></path>
                <path d="M0 99.9 L50 49.9 L100 99.9 L0 99.9" fill="rgba(255,255,255, 1)"></path>
                <path d="M48 52 L50 49 L52 52 L48 52" fill="rgba(255,255,255, 1)"></path>
            </svg>
        </div>
    </div>
</header>
<div id="main" class="content">
    <div class="container">
        <article itemscope="itemscope">
            <div class="posts-list js-posts">
                <div class="post post-layout-list" data-aos="fade-up">
                    <div class="status_list_item icon_kyubo">
                        <div class="status_user" style="background-image: url(<%=basePath%>images/index-images/b0ce3f3cde0c084b6d42321b2dcbc407.jpeg);">
                            <div class="status_section">
                                <a href="detail.jsp" class="status_btn">交代是不可能交代的</a>
                                <p class="section_p">相隔上一次的更新我掰手指数一数，下意识的双腿一软，给各位小哥哥小姐姐们跪下了。自从有了对象后，周末几乎落下了主题的进度（邪魅的笑）。一边开发新的主题，一边收集您们给我反馈回来的"臭虫"，还有新的主题后台看见了一些大神在... </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="post post-layout-list" data-aos="fade-up">
                    <div class="postnormal review ">
                        <div class="post-container review-item">
                            <div class="row review-item-wrapper">
                                <div class="col-sm-3">
                                    <a rel="nofollow" href="detail.jsp">
                                        <div class="review-item-img" style="background-image: url(<%=basePath%>images/index-images/diego-ph-249471-2-800x1000.jpg);"></div>
                                    </a>
                                </div>
                                <div class="col-sm-9 flex-xs-middle">
                                    <div class="review-item-title">
                                        <a href="detail.jsp" rel="bookmark">我才不会写年终总结之瞎说篇</a>
                                    </div>
                                    <div class="review-item-creator"><b>发布日期：</b>2017-12-30</div>
                                    <span class="review-item-info"><b>总浏览量：</b>1203 reads</span>
                                </div>
                            </div>
                            <div class="review-bg-wrapper">
                                <div class="bg-blur" style="background-image: url(<%=basePath%>images/index-images/diego-ph-249471-2-800x1000.jpg);"></div>
                            </div>
                        </div>
                        <div class="post-container">
                            <div class="entry-content">确实讨厌去写所谓的年终总结，在公司已经被动的想领导上交一个总结，自己就懒得去总结，不然，我觉得脑子里应该会编写出八九不离十的内容，所以正经八儿的事情略了，瞎说一下。 年初的人事调动是个人最不能接受的事情，但不接受也得接受，老板一句“这是命令...</div>
                            <div class="post-footer">
                                <a class="gaz-btn primary" href="">READ MORE</a>
                                <span class="total-comments-on-post pull-right"><a href="">31 Comments</a></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="post post-layout-list" data-aos="fade-up">
                    <div class="status_list_item icon_kyubo">
                        <div class="status_user" style="background-image: url(<%=basePath%>images/index-images/b0ce3f3cde0c084b6d42321b2dcbc407.jpeg);">
                            <div class="status_section">
                                <a href="detail.jsp" class="status_btn">状态</a>
                                <p class="section_p">因为我这后半年飘忽不定的更新节奏，感觉真的对不住用户。最近才松下来能处理反馈的bug，顺便加快新主题 Dcras 的制作，农历年后或许能上线，准确时间，不敢说-- 为了感谢大家对 Yarn 的支持，Dcras 会以 获兑现码半价的承诺 给 Yarn ... </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="post post-layout-list js-gallery" data-aos="fade-up">
                    <div class="post-album">
                        <div class="row content">
                            <div class="bg" style="background-image: url(<%=basePath%>images/index-images/IMG_0150.jpg);"></div>
                            <div class="contentext flex-xs-middle">
                                <div class="album-title">
                                    <a href="detail.jsp">重构图像样式测试</a>
                                </div>
                                <h5 class="review-item-creator"><b>发布日期：</b>2017-11-13</h5>
                                <div class="album-content">如眼所见是一个图像样式，必须写五十左右的文字作为这个文本框的空白填充，不写也是可以的，强迫症不能容忍空白。</div>
                            </div>
                            <div class="album-thumb-width flex-xs-middle">
                                <div class="row album-thumb no-gutter">
                                    <div class="col-xs-4"><img class="thumb" src="<%=basePath%>images/index-images/IMG_0150-250x250.jpg" /></div>
                                    <div class="col-xs-4"><img class="thumb" src="<%=basePath%>images/index-images/IMG_0149-250x250.jpg" /></div>
                                    <div class="col-xs-4"><img class="thumb" src="<%=basePath%>images/index-images/IMG_0146-250x250.jpg" /></div>
                                    <div class="col-xs-4"><img class="thumb" src="<%=basePath%>images/index-images/IMG_0147-250x250.jpg" /></div>
                                    <div class="col-xs-4"><img class="thumb" src="<%=basePath%>images/index-images/IMG_0148-250x250.jpg" /></div>
                                    <div class="col-xs-4">
                                        <a href="">5 pics</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="post post-layout-list" data-aos="fade-up">
                    <div class="postnormal review ">
                        <div class="post-container review-item">
                            <div class="row review-item-wrapper">
                                <div class="col-sm-3">
                                    <a rel="nofollow" href="detail.jsp">
                                        <div class="review-item-img" style="background-image: url(<%=basePath%>images/index-images/47fb3c_9afed6c259f94589881bd55376206366mv2_d_3840_5784_s_4_2-800x450.jpg);"></div>
                                    </a>
                                </div>
                                <div class="col-sm-9 flex-xs-middle">
                                    <div class="review-item-title">
                                        <a href="detail.jsp" rel="bookmark">给大家介绍一下</a>
                                    </div>
                                    <div class="review-item-creator"><b>发布日期：</b>2017-10-02</div>
                                    <span class="review-item-info"><b>总浏览量：</b>1600 reads</span>
                                </div>
                            </div>
                            <div class="review-bg-wrapper">
                                <div class="bg-blur" style="background-image: url(<%=basePath%>images/index-images/47fb3c_9afed6c259f94589881bd55376206366mv2_d_3840_5784_s_4_2-800x450.jpg);"></div>
                            </div>
                        </div>
                        <div class="post-container">
                            <div class="entry-content">现在的明星的影响力足以影响国内娱乐圈的"半壁江山"，发条微博，新浪都恐慌好几天，来来来，蹭个热点给大家介绍一下我的女朋友。</div>
                            <div class="post-footer">
                                <a class="gaz-btn primary" href="detail.jsp">READ MORE</a>
                                <span class="total-comments-on-post pull-right"><a href="">30 Comments</a></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- post-formats end Infinite Scroll star -->
            <!-- post-formats -->
        </article>
    </div>
</div>

<footer id="footer" class="overlay animated from-top">
    <div class="decor-wrapper">
        <svg id="footer-decor" class="decor top" xmlns="http://www.w3.org/2000/svg" version="1.1" viewBox="0 0 100 100" preserveAspectRatio="none">
            <path class="large left" d="M0 0 L50 50 L0 100" fill="rgba(255,255,255, .1)"></path>
            <path class="large right" d="M100 0 L50 50 L100 100" fill="rgba(255,255,255, .1)"></path>
            <path class="medium left" d="M0 0 L50 50 L0 66.6" fill="rgba(255,255,255, .3)"></path>
            <path class="medium right" d="M100 0 L50 50 L100 66.6" fill="rgba(255,255,255, .3)"></path>
            <path class="small left" d="M0 0 L50 50 L0 33.3" fill="rgba(255,255,255, .5)"></path>
            <path class="small right" d="M100 0 L50 50 L100 33.3" fill="rgba(255,255,255, .5)"></path>
            <path d="M0 0 L50 50 L100 0 L0 0" fill="rgba(255,255,255, 1)"></path>
            <path d="M48 48 L50 51 L52 48 L48 48" fill="rgba(255,255,255, 1)"></path>
        </svg>
    </div>

    <script type='text/javascript' src='<%=basePath%>js/index-js/tree/jquery.min.js'></script>
    <script type='text/javascript' src='<%=basePath%>js/index-js/tree/plugins.js'></script>
    <script type='text/javascript' src='<%=basePath%>js/index-js/tree/script.js'></script>
    <script type='text/javascript' src='<%=basePath%>js/index-js/tree/particles.js'></script>
    <script type='text/javascript' src='<%=basePath%>js/index-js/tree/aos.js'></script>
</footer>
</body>

</html>
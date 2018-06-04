<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 刘琪
  Date: 2018/5/29
  Time: 13:41
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
<body>

<body class="home blog custom-background round-avatars">

<header id="header">

    <div id="header-top">
        <div class="wrapper clearfix">
            <nav id="navigation">
                <ul class="menu">
                    <li>
                        <a href="<%=basePath%>jsp/index.jsp">首页</a>
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



<div class="Yarn_Background" style="background-image: url( <%= basePath %>images/shudong-images/47fb3c_.jpg);"></div>
<form class="js-search search-form search-form--modal" method="get" action="search.html" role="search">
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
                                <a href="#">首页</a>
                            </li>

                            <li id="menu-item-78" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-78">
                                <a href="index.html">树洞</a>
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
                            <%--<li id="menu-item-57" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-57">--%>
                                <%--<a href="gustbook.html">留言</a>--%>
                            <%--</li>--%>
                            <li id="menu-item-57" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-57">
                                <a href="gustbook.html">发布</a>
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
                <img class="custom-logo avatar" src="<%= basePath %>images/shudong-images/omikron.png" />
            </figure>
        </a>
        <h3 class="blog-description"><p>说出平时生活不曾表达的</p></h3>
    </div>
    <!-- .site-branding -->
    <div class="decor-part">
        <div id="particles-js"></div>
    </div>
    <div class="animation-header">
        <div class="decor-wrapper">

        </div>
    </div>
</header>

<div id="main" class="content">
    <div class="container">
        <article itemscope="itemscope">
            <div class="posts-list js-posts">
                <c:forEach items="${sdContent}" var="sd">

                <div class="post post-layout-list" data-aos="fade-up">
                    <div class="postnormal review ">
                        <div class="post-container review-item">
                            <div class="row review-item-wrapper">
                                <div class="col-sm-3">
                                    <a rel="nofollow" href="detail.html">
                                        <div class="review-item-img" style="background-image: url(<%= basePath %>images/shudong-images/b0ce3f3cde0c084b6d42321b2dcbc407.jpeg);"></div>
                                    </a>
                                </div>
                                <div class="col-sm-9 flex-xs-middle">
                                    <div class="review-item-title">
                                        <a href="detail.html" rel="bookmark">树洞X</a>
                                    </div>
                                    <div class="review-item-creator"><b>发布日期：</b><fmt:formatDate value="${sd.blogCreateTime}" pattern="yyyy-MM-dd HH:mm:ss"/></div>
                                    <span class="review-item-info"><b>总浏览量：</b>${sd.blogBrowseCount}</span>
                                    <span class="review-item-info"><b>点赞：</b>${sd.bbrowse}</span>

                                </div>
                            </div>
                            <div class="review-bg-wrapper">
                                <div class="bg-blur" style="background-image: url(<%= basePath %>images/shudong-images/diego-ph-249471-2-800x1000.jpg);"></div>
                            </div>
                        </div>
                        <div class="post-container">
                            <div class="entry-content">${sd.blogContent}</div>
                            <div class="post-footer">
                                <%--<a class="gaz-btn primary" href="">READ MORE</a>--%>
                                    <a href="<%= basePath %>shuDong/Zan.action?userId=1&blogId=${sd.blogId}">
                                        <img id="zanImg" src="<%= basePath %>images/shudong-images/preZan.png"/>
                                    </a>
                                <span class="total-comments-on-post pull-right"><a href="">31 Comments</a></span>
                            </div>
                        </div>
                    </div>
                </div>

                    </c:forEach>


            </div>


            <!-- post-formats end Infinite Scroll star -->
            <!-- post-formats -->
            <div class="pagination js-pagination">
                <div class="js-next pagination__load">
                    <a href=""><i class="iconfont">&#xe605;</i></a>
                </div>
            </div>
        </article>
            <!-- -pagination  -->
    </div>
</div>


<footer id="footer" class="overlay animated from-top">

    <div class="socialize" data-aos="zoom-in">
        <li>
            <a title="weibo" class="socialicon" href=""><i class="iconfont" aria-hidden="true">&#xe601;</i></a>
        </li>
        <li class="wechat">
            <a class="socialicon"><i class="iconfont">&#xe609;</i></a>
            <div class="wechatimg"><img src="<%= basePath %>images/shudong-images/49D3746D-7519-B709-83E4-65BD1927C4E7.jpg"></div>
        </li>
        <li>
            <a title="QQ" class="socialicon" href="" target="_blank"><i class="iconfont" aria-hidden="true">&#xe616;</i></a>
        </li>
    </div>
</footer>



</body>
<script>
    $('#zanImg').click().toggle(
        function(){
            alert('111'+this);
            this.src="<%= basePath %>images/shudong-images/preZan.png";
        },
    function(){
        alert(this);
        this.src="<%= basePath %>images/shudong-images/Zan.png";
    }
    );
</script>

<script type='text/javascript' src='<%=basePath %>/js/index-js/tree/jquery.min.js'></script>
<script type='text/javascript' src='<%=basePath %>/js/index-js/tree/plugins.js'></script>
<script type='text/javascript' src='<%=basePath %>/js/index-js/tree/script.js'></script>
<script type='text/javascript' src='<%=basePath %>/js/index-js/tree/particles.js'></script>
<script type='text/javascript' src='<%=basePath %>/js/index-js/tree/aos.js'></script>

</html>

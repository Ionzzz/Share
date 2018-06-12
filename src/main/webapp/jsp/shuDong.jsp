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
    <script>
        function getPage(curPage) {
            document.getElementById("curPage").value=curPage;
//				触发表单提交事件
            document.getElementById("mainForm").submit();
        }
    </script>


</head>
<body>

<body class="home blog custom-background round-avatars">

<div class="Yarn_Background" style="background-image: url( <%= basePath %>images/shudong-images/47fb3c_.jpg);"></div>
<form class="js-search search-form search-form--modal" method="post" action="<%=basePath%>shuDong/main.action" role="search">
    <div class="search-form__inner">
        <div>
            <div id="search-container" class="ajax_search">
                    <div class="filter_container">
                        <input type="text" value="" style="color:black;font-size:18px;" autocomplete="off" placeholder="请输入需要搜索的内容" name="searchContent" id="search-input" />
                        <input type="submit" name="submit" id="searchsubmit" class="searchsubmit" value="" style="color: white; font-size: 20px;"/>搜索
                        <ul id="search_filtered" class="search_filtered"></ul>
                    </div>
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
                            <%--<li id="menu-item-17" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-17">--%>
                                <%--<a href="#">首页</a>--%>
                            <%--</li>--%>

                            <li id="menu-item-78" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-78">
                                <a href="<%=basePath%>index/main.action" style="font-size: 16px;">首页</a>
                            </li>
                            <li id="menu-item-57" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-57">
                                <a href="gustbook.html" style="font-size: 16px;">最热</a>
                            </li>
                                <li id="menu-item-57" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-57">
                                    <a href="gustbook.html" style="font-size: 16px;">时空机</a>
                                </li>
                            <li id="menu-item-57" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-57">
                                <a href="#" style="font-size: 16px;">发布</a>
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
        <form action="<%= basePath %>shuDong/main.action" id="mainForm" method="get">
        <%--mainPage--%>
        <article itemscope="itemscope">

            <div class="posts-list js-posts">
                <input type="hidden" name="curPage"  id="curPage">
                <input type="hidden" name="searchContent" value="${searchContent}"></input>


                <c:choose>
                    <c:when test="${pageInfo.total==0}">
                        <div style="font-size:18px; text-align: center;">
                            <img src="<%= basePath %>images/shudong-images/noinfo.gif"/>
                            <a href="#">暂时没有此类树洞存在，快去发布一个吧</a>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <%--有数据--%>
                        <c:forEach items="${pageInfo.list}" var="sd">
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
                                                    <a href="detail.html" rel="bookmark" style="font-size:20px; font-weight: bolder">树洞X</a>
                                                </div>
                                                <div class="review-item-creator" style="font-size:15px;"><b>发布日期：</b><fmt:formatDate value="${sd.blogCreateTime}" pattern="yyyy-MM-dd HH:mm:ss"/></div>
                                                <span class="review-item-info" style="font-size:15px;"><b>总浏览量：</b>${sd.blogBrowseCount}</span>
                                                <span class="review-item-info" style="font-size:15px;"><b>点赞：</b>${sd.bbrowse}</span>

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
                                            <span class="total-comments-on-post pull-right">
                                                <a href="<%= basePath %>shuDong/DetailComment.action?blogId=${sd.blogId}">${sd.bcCount} 条评论</a>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </c:otherwise>
                </c:choose>

            </div>
        </article>

        <%--pageInfo--%>
        <div class="row mx-0" style="margin-top: 50px;">
            <div class="col-12 text-center pb-4 pt-4">
                <a href="javascript:getPage(1)" class="btn_mange_pagging"><i class="fa fa-long-arrow-left"></i>&nbsp;&nbsp; 首页</a>

                <c:if test="${pageInfo.pages==1}">
                    <a href="javascript:getPage(${pageInfo.pageNum})" class="btn_pagging">${pageInfo.pageNum}</a>
                </c:if>
                <c:if test="${pageInfo.pages==2}">
                    <a href="javascript:getPage(${pageInfo.pageNum})" class="btn_pagging">${pageInfo.pageNum}</a>
                    <a href="javascript:getPage(${pageInfo.nextPage})" class="btn_pagging">${pageInfo.nextPage}</a>
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


                <a href="javascript:getPage(${pageInfo.pages})" class="btn_mange_pagging">末页 <i class="fa fa-long-arrow-right"></i>&nbsp;&nbsp; </a>
                <b>共 ${pageInfo.total}</b> 条   <b>${pageInfo.getPages()}</b>页，当前第<b>${pageInfo.pageNum}</b>页

            </div>
        </div>

        </form>
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


<script type='text/javascript' src='<%=basePath %>js/index-js/tree/jquery.min.js'></script>
<script type='text/javascript' src='<%=basePath %>js/index-js/tree/plugins.js'></script>
<script type='text/javascript' src='<%=basePath %>js/index-js/tree/script.js'></script>
<script type='text/javascript' src='<%=basePath %>js/index-js/tree/particles.js'></script>
<script type='text/javascript' src='<%=basePath %>js/index-js/tree/aos.js'></script>

</html>

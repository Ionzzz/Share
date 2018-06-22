<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Danmon
  Date: 2018/6/21
  Time: 14:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>关注的用户</title>
    <link href="<%=basePath%>css/personal-css/style.css" title="style" rel="stylesheet" type="text/css" />
    <link id="clink" href="<%=basePath%>css/personal-css/style-mango.css" title="style" rel="stylesheet" type="text/css" media="screen" />
    <script src="<%=basePath%>js/personal-js/jquery.min.js" type="text/javascript"></script>
    <script src="<%=basePath%>js/personal-js/jquery.masonry.min.js" type="text/javascript"></script>
    <script src="<%=basePath%>js/personal-js/jquery.easing.1.3.js" type="text/javascript"></script>
    <script src="<%=basePath%>js/personal-js/MetroJs.lt.js" type="text/javascript"></script>
    <script src="<%=basePath%>js/personal-js/jquery.fancybox-1.3.4.js" type="text/javascript" charset="utf-8"></script>
    <script src="<%=basePath%>js/personal-js/jquery.flexslider-min.js" type="text/javascript" charset="utf-8"></script>
    <script src="<%=basePath%>js/personal-js/hoverintent.js" type="text/javascript" charset="utf-8"></script>
    <script src="<%=basePath%>js/personal-js/organictabs.jquery.js" type="text/javascript" charset="utf-8"></script>
    <!--[if lt IE 9]>
    <!--<style type="text/css">-->
        <!--@import url("style-ie8.css");-->
    <!--</style>-->
    <script src="<%=basePath%>js/personal-js/css3-mediaqueries.js" type="text/javascript" charset="utf-8"></script>
    <script>
        document.createElement('header');
        document.createElement('nav');
        document.createElement('section');
        document.createElement('article');
        document.createElement('aside');
        document.createElement('footer');
        document.createElement('hgroup');
    </script>
    <![endif]-->
    <script src="<%=basePath%>js/personal-js/javascript.js" type="text/javascript"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>

    <script type="text/javascript">

        //       异步刷新左侧关注人
        function showAllFollowInfo(followGroupName){
//            alert(followGroupName);
            if(followGroupName == "care"){
                $("#fans-list").attr("style","display:none;");
                $("#follow-list").hide();
                $("#fellow-list").show();
            }else if(followGroupName == "fans"){
                $("#follow-list").hide();
                $("#fellow-list").hide();
                $("#fans-list").attr("style","display:block;");
            } else {
//                alert(followGroupName);
                $.ajax({
                    type:"post",
                    url:'${pageContext.request.contextPath }/personalpage/groupfellow.action',
                    data : {"followGroupName":followGroupName},
                    dateType:'json',
                    success:function (data) {
                        //                  获得不同分组的关注人信息
                        var len = data.length;
                        var tableStr = "";
                        //                            alert(tableStr);
                        if(len==0){
                            tableStr = tableStr + "<font color='#cd0a0a'>该分组没有您关注的用户</font>";
                        }else {
                            tableStr += "<div class='page-sub-title'>"
                                + "<h1>"+followGroupName+"&nbsp;"+len+"</h1>"
                                +"<div class='tagline'>分组"+followGroupName+"中您关注的用户</div>"
                                + "</div>"
                                + "<div id='about-container'>";
                            for(var i = 0;i<len;i++) {
                                tableStr += "<div class='about-person' id='cares"+data[i].userId+"'>"
                                    + "<a href='#' class='no-text-dec'>"
                                    + "<img class='about-portrait' src='<%=basePath%>img" + data[i].userimg + "' alt='Person 1'/>"
                                    + "</a>"
                                    + "<h5>" + data[i].usernickname + "</h5>"
                                    + "<a><p>"
                                    + "<a id='"+data[i].userId+"' href='javascript:void(0)' onclick='clickfollow("+data[i].userId+")' style='text-decoration: blink'>取消关注</a>"
                                    + "</p></a>"
                                    + "</div>";
                            }
                        }
                        tableStr = tableStr + "</div>";
//                        alert(tableStr);
                        $("#fans-list").attr("style","display:none;");
                        $("#fellow-list").hide();
                        $("#follow-list").show();
                        //添加到div中
                        $("#follow-list").html(tableStr);
                    }

                });
            }

        }

    </script>

<body>
<div id="bodypat">
    <section id="container">
        <!-- BEGIN HEADER -->
        <header class="clearfix">
            <!-- BEGIN LOGO -->
            <a id="headerlink" href="/ShareMaven/personalpage/personal.action" title="home">
                <img id="logo" src="<%=basePath%>img${userinfo.userimg}" alt="logo" />
                <span id="sitename" style="font-size: 2.8em;">
                    ${userinfo.usernickname}
                        <span>${userinfo.userstatus}</span>
            </span>
            </a>

            <nav>
                <ul id="nav" class="clearfix">
                    <!-- Menu Item 1 -->
                    <li><a href="/ShareMaven/personalpage/personal.action" title="Home"><span>首页</span></a></li>
                    <!-- Menu Item 4 -->
                    <li>
                        <a href="/ShareMaven/personalpage/dynamic.action" title="Features"><span>我的动态</span></a>
                        <ul>
                            <li><a href="/ShareMaven/personalpage/dynamic.action?id=comment" title="Features"><span>我的评论</span></a></li>
                            <li><a href="/ShareMaven/personalpage/dynamic.action?id=zan" title="Features"><span>我的赞</span></a></li>
                            <li><a href="/ShareMaven/personalpage/dynamic.action?id=collect" title="Features"><span>我的收藏</span></a></li>
                        </ul>
                    </li>
                    <!-- Menu Item 5 -->
                    <li class="current"><a href="/ShareMaven/personalpage/fellow.action" title="About"><span>关注</span></a></li>
                    <!-- Menu Item 6 -->
                    <li><a href="/ShareMaven/personalpage/data.action" title="Contact"><span>我的资料</span></a></li>
                </ul>
            </nav>
        </header>

        <!-- END HEADER -->

        <!-- BEGIN CONTENT -->
        <section id="content" class="clearfix">
            <!-- Title --><div id="content-title">My Care</div>

            <!-- BEGIN PAGE -->
            <section id="page">

                <!-- BEGIN PAGE CONTENT -->
                <div id="pg-content" class="clearfix">

                    <section id="sidebar">
                        <div id="search" class="widget">
                            <form action=" " />
                            <input id="search-field" type="search" name="sitesearch" class="placeholder" placeholder="Search" />
                            <input type="submit" id="search-submit" value=" "/>
                            </form>
                        </div>

                        <div id="recent-box" class="widget">
                            <ul class="articles-widget" style="font-size:1.2em;">
                                <li>
                                    <a href="javascript:void(0)" onclick="showAllFollowInfo('care')">关注</a>
                                    <ul>
                                        <c:forEach items="${group}" var="groups">
                                            <li>
                                                <a href="javascript:void(0)" onclick="showAllFollowInfo('${groups.followgroupname}')">${groups.followgroupname}</a>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </li>
                                <li id="follow">
                                    <a href="javascript:void(0)" onclick="showAllFollowInfo('fans')">粉丝</a>
                                </li>
                            </ul>
                        </div>
                    </section>

                    <div id="follow-list" name="follow-list">

                    </div>
                    <div id="fellow-list" name="fellow-list">
                        <form action="<%=basePath%>personalpage/fellow.action" id="mainForm" method="post">
                            <div class="page-sub-title">
                                <h1>All Care ${fn:length(pageInfo.list)}</h1>
                                <div class="tagline">所有您关注的人</div>
                            </div>

                            <div id="about-container">
                                <input type="hidden" name="curPage"  id="curPage">
                                <c:forEach items="${pageInfo.list}" var="concerns" varStatus="st">
                                    <div class="about-person"  id="cares${concerns.userId}">
                                        <a href="#" class="no-text-dec">
                                            <img class="about-portrait" src="<%=basePath%>img${concerns.userimg}" alt="Person 1" />
                                        </a>
                                        <h5>${concerns.usernickname}</h5>
                                        <a href="#"><p>
                                            <c:if test="${cares == null}">
                                                <a id="cared" href="javascript:void(0)"
                                                   onclick="clickfollow(${concerns.userId})" style="text-decoration: blink">关注</a>
                                            </c:if>
                                            <c:set var="flag" value="true"></c:set>
                                            <c:forEach items="${cares}" var="cares">
                                                <c:if test="${cares.userId == concerns.userId}">
                                                    <c:set var="flag" value="false"></c:set>
                                                    <a id="${concerns.userId}" href="javascript:void(0)"
                                                       onclick="clickfollow(${concerns.userId})" style="text-decoration: blink">取消关注</a>
                                                </c:if>
                                            </c:forEach>
                                            <c:if test="${flag == 'true'}">
                                                <a id="${concerns.userId}" href="javascript:void(0)"
                                                   onclick="clickfollow(${concerns.userId})" style="text-decoration: blink">关注</a>
                                            </c:if>
                                        </p></a>
                                    </div>

                                </c:forEach>

                                <%--pageInfo--%>
                                <div class="pagination clearfix">
                                    <a href="javascript:getPage(1)"><i class="fa fa-long-arrow-left"></i>&nbsp;&nbsp; 首页</a>
                                    <c:if test="${!pageInfo.isFirstPage}">
                                        <a href="javascript:getPage(${pageInfo.pageNum == 1?1:pageInfo.prePage})">上一页</a>
                                    </c:if>
                                    <c:if test="${pageInfo.pages==1}">
                                        <a href="javascript:getPage(${pageInfo.pageNum})">${pageInfo.pageNum}</a>
                                    </c:if>
                                    <c:if test="${pageInfo.pages==2}">
                                        <a href="javascript:getPage(${pageInfo.pageNum})">${pageInfo.pageNum}</a>
                                        <a href="javascript:getPage(${pageInfo.nextPage})">${pageInfo.nextPage}</a>
                                    </c:if>
                                    <c:if test="${pageInfo.pages==3||pageInfo.pages>3}">
                                        <c:if test="${pageInfo.pageNum==1}">
                                            <a href="javascript:getPage(${pageInfo.pageNum==1?1:pageInfo.prePage})">${pageInfo.pageNum==1?1:pageInfo.prePage}</a>
                                            <a href="javascript:getPage(${pageInfo.pageNum==1?2:pageInfo.pageNum})" >${pageInfo.pageNum==1?2:pageInfo.pageNum}</a>
                                            <a href="javascript:getPage(${pageInfo.pageNum==1?3:pageInfo.nextPage})">${pageInfo.pageNum==1?3:pageInfo.nextPage}</a>
                                        </c:if>
                                        <c:if test="${pageInfo.pageNum!=1&&pageInfo.pageNum!=pageInfo.pages}">
                                            <a href="javascript:getPage(${pageInfo.prePage})">${pageInfo.prePage}</a>
                                            <a href="javascript:getPage(${pageInfo.pageNum})" >${pageInfo.pageNum}</a>
                                            <a href="javascript:getPage(${pageInfo.nextPage})" >${pageInfo.nextPage}</a>
                                        </c:if>
                                        <c:if test="${pageInfo.pageNum==pageInfo.pages&&pageInfo.pageNum!=1}">
                                            <a href="javascript:getPage(${pageInfo.pageNum==pageInfo.pages?pageInfo.prePage-1:pageInfo.prePage})">${pageInfo.pageNum==pageInfo.pages?pageInfo.prePage-1:pageInfo.prePage}</a>
                                            <a href="javascript:getPage(${pageInfo.pageNum==pageInfo.pages?pageInfo.prePage:pageInfo.pageNum})">${pageInfo.pageNum==pageInfo.pages?pageInfo.prePage:pageInfo.pageNum}</a>
                                            <a href="javascript:getPage(${pageInfo.pageNum==pageInfo.pages?pageInfo.pages:pageInfo.nextPage})">${pageInfo.pageNum==pageInfo.pages?pageInfo.pages:pageInfo.nextPage}</a>
                                        </c:if>
                                    </c:if>
                                    <c:if test="${!pageInfo.isLastPage}">
                                        <a href="javascript:getPage(${pageInfo.nextPage})">下一页</a>
                                    </c:if>
                                    <a href="javascript:getPage(${pageInfo.pages})">末页 <i class="fa fa-long-arrow-right"></i>&nbsp;&nbsp; </a>
                                </div><!-- .pagination -->


                            </div>
                        </form>
                    </div>

                    <div id="fans-list" style="display: none">
                        <div class="page-sub-title">
                            <h1>All Fans ${fn:length(follower)}</h1>
                            <div class="tagline">所有关注您的人</div>
                        </div>
                        <c:forEach items="${follower}" var="followers" varStatus="st">
                            <div class="about-person">
                                <a href="#" class="no-text-dec">
                                    <img class="about-portrait" src="<%=basePath%>img${followers.userimg}" alt="Person 1" />
                                    <h5>${followers.usernickname}</h5>
                                    <a href="#"><p>
                                        <c:if test="${cares == null}">
                                            <a id="cared" href="javascript:void(0)"
                                               onclick="clickfollow(${followers.userId})" style="text-decoration: blink">关注</a>
                                        </c:if>
                                        <c:set var="flag" value="true"></c:set>
                                        <c:forEach items="${cares}" var="cares">
                                            <c:if test="${cares.userId == followers.userId}">
                                                <c:set var="flag" value="false"></c:set>
                                                <a id="${followers.userId}" href="javascript:void(0)"
                                                   onclick="clickfollow(${followers.userId})" style="text-decoration: blink">取消关注</a>
                                            </c:if>
                                        </c:forEach>
                                        <c:if test="${flag == 'true'}">
                                            <a id="${followers.userId}" href="javascript:void(0)"
                                               onclick="clickfollow(${followers.userId})" style="text-decoration: blink">关注</a>
                                        </c:if>
                                    </p></a>
                                </a>
                            </div>
                        </c:forEach>
                    </div>


                </div>

                <!-- END PAGE CONTENT -->
            </section>
            <!-- END PAGE -->

        </section>
        <!-- END CONTENT -->


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
                                    $("#cares"+id).remove();
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


        <!-- BEGIN FOOTER -->
        <footer class="clearfix">

            <div id="footer-social">
                <a href="#"><span class="behance-mini"></span></a>
                <a href="#"><span class="twitter-mini"></span></a>
                <a href="#"><span class="facebook-mini"></span></a>
                <a href="#"><span class="linkedin-mini"></span></a>
                <a href="#"><span class="pinterest-mini"></span></a>
                <a href="#"><span class="dribbble-mini"></span></a>
            </div><!-- end #footer-social -->

        </footer>
        <!-- END FOOTER -->

    </section><!-- end #container -->
</div>


<%--分页--%>
<script>
    function getPage(curPage) {
        document.getElementById("curPage").value=curPage;
        //				触发表单提交事件
        document.getElementById("mainForm").submit();
    }
</script>



</body>
</html>

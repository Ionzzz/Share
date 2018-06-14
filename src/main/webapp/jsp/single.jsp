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
    <script type='text/javascript' src='<%=basePath %>js/index-js/jquery-1.11.2.js'></script>
    <script type='text/javascript' src='<%=basePath %>layer/layer.js'></script>


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
<body class="single">

<c:import url="${basePath}header.jsp" ></c:import>


<div id="fh5co-title-box" style=" background-image: url(<%=basePath%>images/index-images/letter_bg_01.jpg);height: 500px;  background-position: 0px 50%;" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="page-title">
        <img src="<%=basePath%>img${blog.userInfo.userimg}"style="width: 80px;height: 80px;" alt="Free HTML5 by FreeHTMl5.co">
        <span>>${blog.userInfo.usernickname}</span>
        <span>${blog.userInfo.userintroduce}</span>
<%--
        <h2>How to write interesting articles</h2>
--%>
    </div>
</div>
<div id="fh5co-single-content" class="container-fluid pb-4 pt-4 paddding">
    <div class="container paddding">
        <div class="row mx-0">
            <div class="col-md-8 animate-box" data-animate-effect="fadeInLeft">
                <div>
                    <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4"><fmt:formatDate value="${blog.blogContent.blogcreatetime}" pattern="yyyy-MM-dd"/></div>
                </div>
                <div style="width:inherit;float: left;margin: 30px;" >
                    <span>${blog.blogContent.blogcontent}</span>
                </div>
                <div style="width:inherit">
                    <p> <img src="<%=basePath%>${blog.blogPics.pic}" style="height: 300px;margin:0 20px" align="left"hspace="5" vspace="5">
                    </p>
                </div>



            </div>
            <div class="col-md-3 animate-box" data-animate-effect="fadeInRight">
                <div>
                    <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4">Tags</div>
                </div>
                <div class="clearfix"></div>
                <div class="fh5co_tags_all">
                    <c:forEach items="${LabelInfo}" var="label">
                        <a href="<%=basePath%>topic/main.action?labelId=${label.labelId}" class="fh5co_tagg">${label.labelname}</a>
                    </c:forEach>
                    <a href="<%=basePath%>topic/all.action" class="fh5co_tagg">更多</a>
                </div>
                <div>
                    <div class="fh5co_heading fh5co_heading_border_bottom pt-3 py-2 mb-4">Most Popular</div>
                </div>
                <c:forEach items="${bmore}" var="bmore">
                    <div class="row pb-3">
                        <div class="col-5 align-self-center">
                            <img src="<%=basePath%>${bmore.blogPics.pic}" alt="img" class="fh5co_most_trading"/>
                        </div>
                        <div class="col-7 paddding">
                            <div class="most_fh5co_treding_font texthidden">${bmore.blogContent.blogcontent}</div>
                            <div class="most_fh5co_treding_font_123"><fmt:formatDate value="${bmore.blogContent.blogcreatetime}" pattern="yyyy-MM-dd"/></div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
<div id="comments">
    <div class="white-wrap container">
        <div>
            <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4">
                <c:choose>
                    <c:when test="${blogmap['blogComments'].size()==1&&null==blogmap['blogComments'].get(0)||blogmap['blogComments'].size()==0}">
                        0条评论
                    </c:when>
                    <c:otherwise>
                        ${blogmap['blogComments'].size()}条评论
                    </c:otherwise>
                </c:choose>
                <span><a rel='nofollow' class='comment-reply-link' href="javascript:void(0)"  aria-label='回复给ta' onclick="blogComment('1','${blog.blogContent.blogId}')">&nbsp;&nbsp;&nbsp;评论</a></span>
            </div>

        </div>

        <c:forEach items="${blogmap['blogComments']}" var="bcomment" varStatus="status">

            <ol class="comments">
                <li class="comment">
                    <c:choose>
                        <c:when test="${bcomment.commentId==0}">
                            暂无人评论
                        </c:when>
                    <c:otherwise>
                    <span class="comment-author-avatar">
                        <img src="<%=basePath%>img${blogmap['blogCommentUser'][status.count-1].userimg}" style="width: 80px;height: 80px;" alt="" />
                    </span>
                    <div class="comment-inner">
                        <div class="comment-info clearfix">
                            <div class="comment-meta">
                                <span class="comment-meta-author">${bcomment.userNickName}_(${bcomment.userAccount})</span>
                                <span class="comment-meta-date">${bcomment.commentTime}</span>
                            </div>
                            <!-- .comment-meta -->
                            <span id="ReplyComment"><a href="javascript:void(0)" onclick="showAllReplyComment(this,'${bcomment.commentId}')">&nbsp;&nbsp;&nbsp;&nbsp;显示评论</a></span>
                            <span class="comment-reply"> <a rel="nofollow" href="javascript:void(0)" onclick="blogComment('2','${bcomment.commentId}')" >Reply</a></span>
                        </div>
                        <!-- .comment-info -->
                        <div class="comment-main">
                            <p>${bcomment.commentContent}</p>

                        </div>
                        <!-- .comment-main -->
                    </div> <!-- .comment-inner -->

                    <ul class="comment-children">
                        <div name="${bcomment.commentId}">

                        </div>
                        <!-- .comment -->
                    </ul> <!-- .children -->

                    </c:otherwise>
                    </c:choose>
                </li>
                <!-- .comment -->
            </ol>
        </c:forEach>
    </div>
    <!-- .white-wrap -->

</div>
<!-- #comments -->



<div class="container-fluid pb-4 pt-5">
    <div class="container animate-box">
        <div>
            <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4">Trending</div>
        </div>
        <div class="owl-carousel owl-theme" id="slider1">
            <c:forEach items="${bpopular}" var="bpopular">
                <div class="item px-2">
                    <div class="fh5co_hover_news_img">
                        <div class="fh5co_news_img" style="height: 170px;">
                            <a href="<%=basePath%>single/main.action?blogId=${bpopular.blogContent.blogId}" style="margin: auto" >
                                <img src="<%=basePath%>${bpopular.blogPics.pic}" style="width:100%;margin:auto"  alt=""/>
                            </a>
                        </div>
                        <div style="margin-top: 10px;">
                            <a href="<%=basePath%>single/main.action?blogId=${bpopular.blogContent.blogId}" class="d-block fh5co_small_post_heading">
                                <p class="texthidden">${bpopular.blogContent.blogcontent}</p>
                            </a>
                            <div class="c_g"><i class="fa fa-clock-o"></i> <fmt:formatDate value="${bpopular.blogContent.blogcreatetime}" pattern="yyyy-MM-dd"/></div>
                        </div>
                    </div>
                </div>
            </c:forEach>

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
        <%--<div class="row justify-content-center pt-2 pb-4">
            <div class="col-12 col-md-8 col-lg-7 ">
                <div class="input-group">
                    <span class="input-group-addon fh5co_footer_text_box" id="basic-addon1"><i class="fa fa-envelope"></i></span>
                    <input type="text" class="form-control fh5co_footer_text_box" placeholder="邮箱" aria-describedby="basic-addon1">
                    <a href="#" class="input-group-addon fh5co_footer_subcribe" id="basic-addon12"> <i class="fa fa-paper-plane-o"></i>&nbsp;&nbsp;发送</a>
                </div>
            </div>
        </div>--%>
    </div>
</div>
<div class="container-fluid fh5co_footer_right_reserved">
    <div class="container">

    </div>
</div>

<div class="gototop js-top">
    <a href="#" class="js-gotop"><i class="fa fa-arrow-up"></i></a>
</div>

<script type="text/javascript">

    //        评论回复遮罩层
    function blogComment(flag,blogId){
        $.ajax({
            type:'post',
            url:'${pageContext.request.contextPath}/single/InsertBlogCommentBlogId.action?flag='+flag,
            data:{'blogId':blogId},
            dateType:'json',
            success:function (data) {
                layer.open({
                    type: 2,
                    title: '写下你想说的话吧',
                    maxmin: false,
                    anim:4,
                    String:"",
                    shadeClose: true, //点击遮罩关闭层
                    area: ['800px', '400px'],
                    content: '<%=basePath%>jsp/publishBlogComment.jsp',

                });
            }
        });

    }


    //        异步刷新评论
    function showAllReplyComment(obj,commentId){
        $.ajax({
            type:"post",
            url:'${pageContext.request.contextPath }/single/ReplyComment.action',
            data : {"commentId":commentId},
            dateType:'json',
            success:function (data) {
//                  获得二级评论
                if( !$.isEmptyObject(data)){
                    $("div[name="+commentId+"]").empty();

                    for (var i=0;i<data.length;i++){
                        var str1="<li class=\"comment\">" +
                            "       <div class=\"comment-inner\">\n" +
                            "           <div class=\"comment-info clearfix\">\n" +
                            "               <div class=\"comment-meta\"> ";
                        var str2="              <span class=\"comment-meta-author\">"+data[i].userNickName+"("+data[i].userAccount+")"+"<span style=\"font-size:13px;font-weight:500;\">&nbsp;&nbsp;评论了</span>&nbsp;&nbsp;share_"+data[i].commentUserId+"</span>";
                        var str3="              <time><span class=\"comment-meta-date\">"+data[i].replycommenttime+"</span></time>" +
                            "               </div>";
                        var str4="          <span class=\"comment-reply\"> <a rel=\"nofollow\" href='javascript:void(0)' onclick='blogComment(3,"+data[i].replycommentId+")'>Reply</a></span>" +
                            "           </div>";
                        var str8="      <div class=\"comment-main\"> <p>"+data[i].replycommentcontent+"</p>" +
                            "           </div>" +
                            "       </div>" +
                            "     </li>";
                        $("div[name="+commentId+"]").append(str1+str2+str3+str4+str8);
                    }
                    var str6="<a href='javascript:void(0)' onclick='packUp(this,"+commentId+")'>&nbsp;&nbsp;&nbsp;&nbsp;收起</a></p>";
                    $("div[name="+commentId+"]").append(str6);
                }else{
                    var str5="<i style='font-size: 15px; font-weight: bolder; color: #959381;'>暂时没有评论哦</i>";
                    var str7="<a href='javascript:void(0)' onclick='packUp(this,"+commentId+")'>&nbsp;&nbsp;&nbsp;&nbsp;收起</a></p>";
                    $("div[name="+commentId+"]").html(str5+str7);
                }
            }
        });
    }

    //        收起
    function packUp(obj,commentId) {
        $.ajax({
            type:"post",
            dateType:'json',
            success:function (data) {
                var str8="";
                $("div[name="+commentId+"]").html(str8);
            }
        });

    }

</script>



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

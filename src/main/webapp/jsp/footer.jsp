<%--
  Created by IntelliJ IDEA.
  User: bin
  Date: 2018/6/19
  Time: 13:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>

</head>

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
<body>

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
                    <c:forEach items="${labelList}" var="labellist" begin="0" end="4">
                        <li><a href="<%=basePath%>/topic/main.action?labelId=${labellist.labelId}" class="" style="text-decoration: blink "><i class="fa fa-angle-right"></i>&nbsp;&nbsp; ${labellist.labelname}</a></li>
                    </c:forEach>
                    <li><a href="<%=basePath%>/topic/all.action" class="" style="text-decoration: blink "><i class="fa fa-angle-right"></i>&nbsp;&nbsp; 更多...</a></li>
                </ul>
            </div>
            <div class="col-12 col-md-5 col-lg-3 position_footer_relative">
                <div class="footer_main_title py-3"> 最新发布</div>
                <c:forEach items="${foot}" var="foot" begin="0" end="2">
                    <div class="footer_makes_sub_font"style="margin: 10px 0;"><fmt:formatDate value="${foot.blogContent.blogcreatetime}" pattern="MM-dd,yyyy"/></div>
                    <a href="<%=basePath%>single/main.action?blogId=${foot.blogContent.blogId}" class="footer_post pb-4 texthidden" style="text-decoration: blink "> ${foot.blogContent.blogcontent} </a>
                </c:forEach>
                <div class="footer_position_absolute"><img src="<%=basePath%>images/index-images/footer_sub_tipik.png" alt="img" class="width_footer_sub_img"/></div>
            </div>
            <div class="col-12 col-md-12 col-lg-4 ">
                <div class="footer_main_title py-3"> 动态</div>
                <c:forEach items="${foot}" var="img" begin="0" end="8">
                    <a href="<%=basePath%>single/main.action?blogId=${img.blogContent.blogId}" class="footer_img_post_6">
                        <img src="<%=basePath%>${img.blogPics.pic}" alt="img"/></a>
                </c:forEach>
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
</body>
</html>

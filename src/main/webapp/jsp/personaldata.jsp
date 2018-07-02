<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: Danmon
  Date: 2018/6/21
  Time: 19:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>我的资料</title>
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>

    <link href="<%=basePath%>css/index-css/style_1.css" rel="stylesheet" type="text/css"/>
    <link href="<%=basePath%>css/index-css/main.css" rel="stylesheet" >
    <link href="<%=basePath%>css/index-css/nav_font.css" rel='stylesheet' type='text/css'>
    <link href="<%=basePath%>css/personal-css/style.css" title="style" rel="stylesheet" type="text/css" />
    <link id="clink" href="<%=basePath%>css/personal-css/style-mango.css" title="style" rel="stylesheet" type="text/css" media="screen" />
    <%--<link href="<%=basePath%>bootstrap/css/bootstrap.css" type="text/css">--%>
    <script src="<%=basePath%>js/personal-js/jquery.min.js" type="text/javascript"></script>
    <script src="<%=basePath%>js/personal-js/jquery.masonry.min.js" type="text/javascript"></script>
    <script src="<%=basePath%>js/personal-js/jquery.easing.1.3.js" type="text/javascript"></script>
    <script src="<%=basePath%>js/personal-js/MetroJs.lt.js" type="text/javascript"></script>
    <script src="<%=basePath%>js/personal-js/jquery.fancybox-1.3.4.js" type="text/javascript" charset="utf-8"></script>
    <script src="<%=basePath%>js/personal-js/jquery.flexslider-min.js" type="text/javascript" charset="utf-8"></script>
    <script src="<%=basePath%>js/personal-js/hoverintent.js" type="text/javascript" charset="utf-8"></script>
    <script src="<%=basePath%>js/personal-js/organictabs.jquery.js" type="text/javascript" charset="utf-8"></script>

    <script src="<%=basePath%>js/personal-js/javascript.js" type="text/javascript"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>

    <%--省市区三级联动插件--%>
    <script type="text/javascript">
        var Gid  = document.getElementById ;
        var showArea = function(){
            Gid('show').innerHTML = "<h3>省" + Gid('s_province').value + " - 市" +
                Gid('s_city').value + " - 县/区" +
                Gid('s_county').value + "</h3>"
        }
        Gid('s_county').setAttribute('onchange','showArea()');
    </script>

    <%--时间插件--%>
    <script type="text/javascript" src="<%=basePath%>My97DatePicker/WdatePicker.js"></script>





<script type="text/javascript">

//                    jquery加文本框修改内容
        $(function() {
            //获取class为caname的元素
            $(".changeContent").click(function() {
                var id = $(this).attr("id");
//                alert(id);
    //                            var td=$(".content");
                var td = $(this).prev();
                var a = td.text();
                var txt = a.replace(/[ ]/g,"");   //清除空格
                var input = $("<input type='text' value='"+txt+"'/>");
                td.html(input);
                input.click(function() { return false; });
                //获取焦点
                input.trigger("focus");
                //文本框失去焦点后提交内容，重新变为文本
                input.blur(function() {
                    var newtxt = $(this).val();
                    //判断文本有没有修改
                    if (newtxt != txt) {
                        $.ajax({
                            type:"post",
                            url:'${pageContext.request.contextPath }/personalpage/updatecontent.action',
                            data : {
                                "id":id,
                                "content":newtxt
                            },
                            dateType:'json',
                            success:function (data) {
//                                alert(data);
                                if(data){
                                    alert("修改成功！");
                                    td.html(newtxt);
                                    if(id == "nickname"){
                                        $("#sitename").html("<span id='sitename' style='font-size: 32px'>"+newtxt+"</span>");
                                    }
                                }else {
                                    alert("请稍后再试！");
                                    td.html(a);
                                }
                            },
                            error:function () {
                                alert("服务器错误，请稍后重试！");
                                td.html(a);
                            }
                        });
                    }
                    else
                    {
                        td.html(newtxt);
                    }
                });
            });
        });

        //                电话号码加密显示
        $(function() {
            var phone = $('#phone').text();
            var mphone = phone.substr(0, 3) + '****' + phone.substr(7);
    //                    此时mphone 的值就是中间四位显示为*号的了；
            $('#phone').text(mphone);
        });


//        修改地区
        $(function () {
            $(".changArea").click(function () {
//                alert("aaa");
                $("#area").hide();
                document.getElementById("address1").style.display = "block";
                $("#sava1").click(function () {
                    var province = $("#s_province").val();
                    var city = $("#s_city").val();
                    var county = $("#s_county").val();
                    if(province == '省份'){
                        alert("请选择省份");
                    }else {
                        if(city == '地级市'){
                            alert("请选择地级市");
                        }else {
                            if(county == '市、县级市'){
                                alert("请选择市、县级市");
                            }else {
                                $.ajax({
                                    type:"post",
                                    url:'${pageContext.request.contextPath }/personalpage/updateAddress.action',
                                    data : {
                                        "province":province,
                                        "city":city,
                                        "county":county
                                    },
                                    dateType:'json',
                                    success:function (data) {
                                        if(data){
                                            alert("修改成功!");
                                            $("#address1").html(province+"&nbsp;"+city+"&nbsp;"+county+"&nbsp;"+"<a href='javaScript:void(0)' class='changArea'>修改所在地</a>")
                                        }else {
                                            alert("修改失败,请稍后重试!");
                                        }
                                    },
                                    error:function () {
                                        alert("服务器出错，请稍后重试!");
                                    }
                                })
                            }
                        }
                    }
                })
            })
        });

//    保存地区
    $(function () {
        $("#sava").click(function () {
            var province = $("#s_province").val();
    //        alert(province);
            var city = $("#s_city").val();
            var county = $("#s_county").val();
    //        alert(city);
    //        alert(county);
            if(province == '省份'){
                alert("请选择省份");
            }else {
                if(city == '地级市'){
                    alert("请选择地级市");
                }else {
                    if(county == '市、县级市'){
                        alert("请选择市、县级市");
                    }else {
                        $.ajax({
                            type:"post",
                            url:'${pageContext.request.contextPath }/personalpage/updateAddress.action',
                            data : {
                                "province":province,
                                "city":city,
                                "county":county
                            },
                            dateType:'json',
                            success:function (data) {
                                if(data){
                                    alert("修改成功!");
                                    $("#address").html(province+"&nbsp;"+city+"&nbsp;"+county+"&nbsp;"+"<a href='javaScript:void(0)' class='changArea'>修改所在地</a>")
                                }else {
                                    alert("修改失败,请稍后重试!");
                                }
                            },
                            error:function () {
                                alert("服务器出错，请稍后重试!");
                            }
                        })
                    }
                }
            }
        })
})

//   保存出生日期
    $(function () {
        $("#savadate").click(function () {
            var date = $("#startDate").val();
            alert(date);
            $.ajax({
                type:"post",
                url:'${pageContext.request.contextPath }/personalpage/updateCreateTime.action',
                data : {
                    "date":date
                },
                dateType:'json',
                success:function (data) {
                    alert(data);
                    if(data){
                        alert("修改成功!");
                        $("#createTime").html("<span>"+date+"<span>&nbsp;<a id='savadate' href='javascript:void(0)'>修改</a>");
                    }else {
                        alert("请稍后重试！");
                    }
                },
                error:function () {
                    alert("服务器错误，请稍后重试！")
                }
            })
        })
    })

//    修改出生日期
    $(function () {
        $("#updatedate").click(function () {
            $(".createdate").hide();
            document.getElementById("modifydate").style.display = "block";
            $("#savadate1").click(function () {
                var date = $("#startDate1").val();
//                alert(date);
                $.ajax({
                    type:"post",
                    url:'${pageContext.request.contextPath }/personalpage/updateCreateTime.action',
                    data : {
                        "date":date
                    },
                    dateType:'json',
                    success:function (data) {
//                        alert(data);
                        if(data){
                            alert("修改成功!");
                            $("#modifydate").hide();
                            $(".createdate").show();
                            $(".createdate").html(date+"<a id='updatedate' href='javascript:void(0)'>修改</a>");
                        }else {
                            alert("请稍后重试！");
                        }
                    },
                    error:function () {
                        alert("服务器错误，请稍后重试！")
                    }
                })
            })
        })
    });

//    修改性别
    $(function () {
        $("#modifysex").click(function () {
            $("#sex").hide();
            document.getElementById("selectsex").style.display = "block";
            $("#savesex1").click(function () {
                var sex = $("input:radio[name = 'sex']:checked").val();
                if(sex == null){
                        alert("请选择性别!");
                }else {
//                    alert(sex);
                    $.ajax({
                        type:"post",
                        url:'${pageContext.request.contextPath }/personalpage/updateSex.action',
                        data : {
                            "sex":sex
                        },
                        dateType:'json',
                        success:function (data) {
//                            alert(data);
                            if(data){
                                alert("修改成功!");
                                $("#selectsex").hide();
                                $("#sex").show();
                                $("#sex").html("<div id='ex'>"+sex+"<a id='modifysex' href='javascript:void(0)'>修改</a></div>");
                            }else {
                                alert("请稍后重试!");
                            }
                        },
                        error:function () {
                            alert("服务器错误，请稍后重试!");
                        }
                    })
                }
            })
        })
    })

</script>

<body>
<c:import url="${basePath}header.jsp" ></c:import>

<div id="bodypat">
    <section id="container">

        <header class="clearfix">
            <!-- BEGIN LOGO -->
            <a id="headerlink" href="/ShareMaven/personalpage/personal.action" title="home">
                <c:if test="${userinfo.userimg == null}">
                    <img id="logo" src="<%=basePath%>img/head/11.jpg" alt="logo" />
                </c:if>
                <c:if test="${userinfo.userimg != null}">
                    <img id="logo" src="<%=basePath%>img${userinfo.userimg}" alt="logo" />
                </c:if>
                <c:if test="${userinfo.usernickname == null}">
                    <span id="sitename" style="font-size:30px;">
                            用户 ${userinfo.userId}
                    </span>
                </c:if>
                <c:if test="${userinfo.usernickname != null}">
                    <span id="sitename" style="font-size:30px;">
                            ${userinfo.usernickname}
                    </span>
                </c:if>

                <c:if test="${userinfo.userstatus}==1"><span></span></c:if>
                <c:if test="${userinfo.userstatus}==0"><span>禁言</span></c:if>
            </a>

            <nav>
                <ul id="nav" class="clearfix" style="margin-top:35px;">
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
                    <li><a href="/ShareMaven/personalpage/fellow.action" title="About"><span>关注</span></a></li>
                    <!-- Menu Item 6 -->
                    <li class="current"><a href="/ShareMaven/personalpage/data.action" title="Contact"><span>我的资料</span></a></li>
                </ul>
            </nav>
        </header>


        <section id="content" class="clearfix">
            <!-- Title -->
            <div id="content-title" style="font-size: 3em">修改个人资料</div>

            <!-- BEGIN PAGE -->
            <section id="page">

                <!-- BEGIN PAGE CONTENT -->
                <div id="pg-content" class="clearfix">

                    <div class="data">
                        <table class="">
                            <tr>
                                <th align="center" style="font-size: 23px"><hr class="break" />基本信息<hr class="break" /></th>
                                <th></th>
                                <th></th>
                                <th></th>
                            </tr>

                            <tr class="" style="font-size: 18px">
                                <td width="100px" align="right">登录名</td>
                                <td width="5px"></td>
                                <td>
                                    <span id="phone">${userinfo.userphone}</span>
                                    <a href="#" onclick="change(this)">修改密码</a></td>
                                <td></td>
                            </tr>
                            <tr class="" style="font-size: 18px">
                                <td width="100px" align="right">昵称</td>
                                <td width="5px"></td>
                                <td>
                                    <c:if test="${not empty userinfo.usernickname}">
                                    <span>
                                            ${userinfo.usernickname}
                                    </span>
                                        <a href="javaScript:void(0)" id="nickname" class="changeContent">修改昵称</a>
                                    </c:if>
                                    <c:if test="${empty userinfo.usernickname}">
                                        <a href="javaScript:void(0)" id="nickname" class="changeContent">马上填写</a>昵称
                                    </c:if>
                                </td>
                                <td></td>
                            </tr>
                            <tr class="" style="font-size: 18px">
                                <td width="100px" id="modifyname" align="right">真实姓名</td>
                                <td width="5px"></td>
                                <td>
                                    <c:if test="${not empty userinfo.username}">
                                    <span>
                                            ${userinfo.username}
                                    </span>
                                        <a href="javaScript:void(0)" id="name" class="changeContent">修改姓名</a>
                                    </c:if>
                                    <c:if test="${empty userinfo.username}">
                                        <a href="javaScript:void(0)" class="changeContent">马上填写</a>自己的真实姓名
                                    </c:if>
                                </td>
                                <td></td>
                            </tr>
                            <tr class="" style="font-size: 18px">
                                <td width="100px" align="right">所在地</td>
                                <td width="5px"></td>
                                <td>
                                    <c:if test="${not empty address}">
                                        <div id="area">
                                             <span id="area1">
                                                ${address.province} ${address.city} ${address.county}${address.detailAddress}
                                            </span>
                                            <a href="javaScript:void(0)" class="changArea">修改所在地</a>
                                        </div>
                                        <div id="address1" style="display: none">
                                            <select id="s_province" name="s_province"></select>
                                            <select id="s_city" name="s_city" ></select>
                                            <select id="s_county" name="s_county"></select>
                                            <a id="sava1" href="javascript:void(0)">保存</a>
                                            <script class="resources library" src="<%=basePath%>js\personal-js\area.js" type="text/javascript"></script>
                                            <script type="text/javascript">_init_area();</script>
                                        </div>
                                    </c:if>
                                    <c:if test="${empty address}">
                                        <div class="info">
                                            <div id="address">
                                                <select id="s_province" name="s_province"></select>
                                                <select id="s_city" name="s_city" ></select>
                                                <select id="s_county" name="s_county"></select>
                                                <a id="sava" href="javascript:void(0)">保存</a>
                                                <script class="resources library" src="<%=basePath%>js\personal-js\area.js" type="text/javascript"></script>
                                                <script type="text/javascript">_init_area();</script>
                                            </div>
                                        </div>
                                    </c:if>
                                </td>
                                <td></td>
                            </tr>
                            <tr class="" style="font-size: 18px">
                                <td width="100px" align="right">性别</td>
                                <td width="5px"></td>
                                <td>
                                    <c:if test="${not empty userinfo.usersex}">
                                        <div id="sex">
                                                ${userinfo.usersex}
                                            <a id="modifysex" href="javascript:void(0)">修改</a>
                                        </div>
                                        <div id="selectsex" style="display: none">
                                            <input type="radio" name="sex" id="男" value="男">男
                                            <input type="radio" name="sex" value="女" id="woman">女
                                            <a id="savesex1" href="javascript:void(0)">保存</a>
                                        </div>
                                    </c:if>
                                    <c:if test="${empty userinfo.usersex}">
                                        <label class="radio-inline">
                                            <input type="radio" value="男">男
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" value="女" checked="checked">女
                                        </label>
                                        <a id="savesex" href="javascript:void(0)">保存</a>
                                    </c:if>
                                </td>
                                <td></td>
                            </tr>
                            <tr class="" style="font-size: 18px">
                                <td width="100px" align="right">生日</td>
                                <td width="5px"></td>
                                <td>
                                    <c:if test="${not empty userinfo.usercreatetime}">
                                        <div class="createdate">
                                            <span>
                                                <fmt:formatDate value="${userinfo.usercreatetime}" pattern="yyyy-MM-dd" />
                                            </span>
                                            <a id="updatedate" href="javascript:void(0)">修改</a>
                                        </div>
                                        <div id="modifydate" style="display: none">
                                            <input type="text" class="form-control Wdate" value="2001-05-28"
                                                   onClick="WdatePicker()" readonly="readonly" name="startDate"
                                                   id="startDate1" placeholder="出生日期" >
                                            <a id="savadate1" href="javascript:void(0)">保存</a>
                                        </div>
                                    </c:if>
                                    <c:if test="${empty userinfo.usercreatetime}">
                                        <div id="createTime">
                                            <input type="text" class="form-control Wdate" value="2001-05-28"
                                                   onClick="WdatePicker()" readonly="readonly" name="startDate"
                                                   id="startDate" placeholder="出生日期" >
                                            <a id="savadate" href="javascript:void(0)">保存</a>
                                        </div>
                                    </c:if>
                                </td>
                                <td></td>
                            </tr>
                            <tr class="" style="font-size: 18px">
                                <td width="100px" align="right">简介</td>
                                <td width="5px"></td>
                                <td id="modifyintroduct" onclick="startEdit(this.id)">
                                    <c:if test="${not empty userinfo.userintroduce}">
                                    <span>
                                            ${userinfo.userintroduce}
                                    </span>
                                        <a href="javaScript:void(0)" class="changeContent">修改个人简介</a>
                                    </c:if>
                                    <c:if test="${empty userinfo.userintroduce}">
                                        <a href="javaScript:void(0)" id="introduce" class="changeContent">马上填写</a>个人简介
                                    </c:if>
                                </td>
                                <td></td>
                            </tr>
                            <tr class="" style="font-size: 18px">
                                <td width="100px" align="right">注册时间</td>
                                <td width="5px"></td>
                                <td>
                                    <c:if test="${not empty userinfo.logintime}">
                                    <span id="modify">
                                        <fmt:formatDate value="${userinfo.logintime}" pattern="yyyy-MM-dd" />
                                    </span>
                                    </c:if>
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <th align="center" style="font-size: 23px"><hr class="break" />联系信息<hr class="break" /></th>
                                <th></th>
                                <th></th>
                            </tr>
                            <tr class="" style="font-size: 18px">
                                <td width="100px" align="right">邮箱</td>
                                <td width="5px"></td>
                                <td>
                                    <c:if test="${not empty userinfo.useremail}">
                                    <span>
                                            ${userinfo.useremail}
                                    </span>
                                    </c:if>
                                    <c:if test="${empty userinfo.useremail}">
                                    <a href="javaScript:void(0)">马上填写</a>自己的邮箱
                                    </c:if>
                                </td>
                                <td></td>
                            </tr>
                            <tr class="" style="font-size: 18px">
                                <td width="100px" align="right">QQ</td>
                                <td width="5px"></td>
                                <td><a href="#">马上填写</a>自己的QQ信息</td>
                                <td></td>
                            </tr>
                            <tr class="" style="font-size: 18px">
                                <td width="100px" align="right">MSN</td>
                                <td width="5px"></td>
                                <td><a href="#">马上填写</a>自己的MSN信息</td>
                                <td></td>
                            </tr>
                            <tr>
                                <th align="center" style="font-size: 23px"><hr class="break" />教育信息<hr class="break" /></th>
                                <td width="10px"></td>
                                <th></th>
                                <th></th>
                            </tr>

                            <tr class="" style="font-size: 18px">
                                <td width="100px" align="right">学历</td>
                                <td width="5px"></td>
                                <td>
                                    <c:if test="${not empty userinfo.usereducate}">
                                    <span>
                                            ${userinfo.usereducate}
                                    </span>
                                        <a href="javaScript:void(0)">修改学历信息</a>
                                    </c:if>
                                    <c:if test="${empty userinfo.usereducate}">
                                        <a href="javaScript:void(0)" class="changeContent">马上填写</a>自己的学历
                                        <select>
                                            <option>博士后</option>
                                            <option>博士</option>
                                            <option>硕士</option>
                                            <option>本科</option>
                                            <option>高中及以下</option>
                                        </select>
                                    </c:if>
                                </td>
                                <td></td>
                            </tr>

                            <tr class="" style="font-size: 18px">
                                <td width="100px" align="right">学校</td>
                                <td width="5px"></td>
                                <td>
                                    <c:if test="${not empty userinfo.usergraduate}">
                                    <span>
                                            ${userinfo.usergraduate}
                                    </span>
                                        <a href="javaScript:void(0)" id="school" class="changeContent">修改学校信息</a>
                                    </c:if>
                                    <c:if test="${empty userinfo.usergraduate}">
                                        <a href="javaScript:void(0)" class="changeContent">马上填写</a>自己的毕业院校
                                    </c:if>
                                </td>
                                <td></td>
                            </tr>

                        </table>

                    </div>

                </div><!-- end #pg-content -->
                <!-- END PAGE CONTENT -->
            </section>
            <!-- END PAGE -->
        </section>

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

    </section><!-- end #container -->
</div>

</body>
</html>

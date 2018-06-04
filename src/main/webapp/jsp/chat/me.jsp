<%--
  Created by IntelliJ IDEA.
  User: Danmon
  Date: 2018/6/3
  Time: 14:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>@me</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Great Taste Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //for-mobile-apps -->
    <link href="../../css/chat-css/bootstrap.css" type="text/css" rel="stylesheet" media="all" />
    <link href="../../css/chat-css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="../../css/chat-css/chat.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" type="text/css" href="../../fonts/chat-fonts/font_Icon/iconfont.css" />
    <!-- CSS -->
    <link rel="stylesheet" href="../../css/chat-css/main.css" />

    <link rel="stylesheet" type="text/css" href="../../css/chat-css/notice.css" />

    <!-- js -->
    <script src="../../js/chat-js/jquery-1.11.1.min.js"></script>
    <!-- //js -->
    <!-- for bootstrap working -->
    <script src="../../js/chat-js/bootstrap.js"></script>
    <!-- //for bootstrap working -->
    <script src="../../js/chat-js/jquery.wmuSlider.js"></script>


</head>

<body>

<header id="header">

    <div id="header-top">
        <div class="wrapper clearfix">
            <nav id="navigation">
                <ul class="menu">
                    <li>
                        <a href="../index.jsp">Home</a>
                        <ul>
                            <li class="current-menu-item"><a href="../index.jsp">Home Version 1</a></li>
                            <li><a href="home-2.html">Home Version 2</a></li>
                            <li><a href="home-3.html">Home Version 3</a></li>
                            <li><a href="home-4.html">Home Version 4</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="../single.jsp">Blog</a>
                        <ul>
                            <li><a href="../single.jsp">Right Sidebar</a></li>
                            <li><a href="single-left-sidebar.html">Left Sidebar</a></li>
                            <li><a href="single-no-sidebar.html">No Sidebar</a></li>
                        </ul>
                    </li>
                    <li class="current-menu-item"><a href="elements.html">Topic</a></li>
                    <li><a href="typography.html">World</a></li>
                    <li><a href="search.html">Contact</a></li>

                </ul><!-- .menu -->
            </nav><!-- #navigation -->
            <div id="navigation-hamburger">
                <span class="navigation-hamburger-hook"><span class="fa fa-reorder"></span></span>
                <select>
                    <option value="#">- Select -</option>
                    <!-- automatically populated based on #navigation -->
                </select>
            </div><!-- #navigation-hamburger -->
            <div id="header-search">
                <div class="header-search-inner">
                    <form method="get" action="search.html">
                        <input type="text" name="s" placeholder="Search and hit enter" />
                    </form>
                    <span class="header-search-icon"><span class="fa fa-search"></span></span>
                </div><!-- .search-form-wrapper -->
            </div><!-- #header-search -->

        </div><!-- .wrapper -->
    </div><!-- #header-top -->
</header>




<div class="container">
    <div class="all row banner-body-content">

        <div class="left col-md-2 col-md-offset-1">

            <div class="top-nav">
                <h3>我的消息箱</h3>
                <nav class="navbar navbar-default">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
                        <nav class="stroke">
                            <ul class="nav navbar-nav">
                                <li><a href="chat.jsp" class="hvr-underline-from-left"><span class="iconfont icon-xiaoxi1"></span>&nbsp;私信</a></li>
                                <li class="active"><a href="me.jsp"><span class="iconfont icon-yingyangbaojian"></span>&nbsp;@我的</a></li>
                                <li><a href="comment.jsp" class="hvr-underline-from-left"><span class="iconfont icon-pingjia"></span>&nbsp;评论</a></li>
                                <li><a href="thrums_up.jsp" class="hvr-underline-from-left"><span class="iconfont icon-shoucang2"></span>&nbsp;赞</a></li>

                            </ul>
                        </nav>
                    </div>
                    <!-- /.navbar-collapse -->
                </nav>
            </div>
        </div>

        <div class="center col-md-5">
            <br/>
            <table class="table">
                <th style="text-align:center">@我的</th>

                <tbody style="display:block; max-height:500px;overflow-y: scroll;">
                <tr>
                    <td>
                        <div class="shang row">
                            <div class="touxiang col-md-2">
                                <a href="#">
                                    <img src="../../images/chat-images/images/co.png" />
                                </a>
                            </div>
                            <div class="qita col-md-10">
                                <div class="wangming">
                                    <a href="#">
                                        <p>土豆小姐</p>
                                    </a>
                                </div>
                                <div class="shijian">
                                    2018年6月2日
                                </div>
                            </div>
                        </div>
                        <div class="xia">
                            <div class="me">
                                <br/>
                                <a href="#">
                                    <p>@小胖鱼</p>
                                </a>
                            </div>
                            <div class="neirong">
                                <div class="innercontent">
                                    <a href="#">
                                        <!--当条博客中的纯文字-->
                                        <p><span>土豆小姐：</span>你已经是个大人了 别再因为一点感情问题就失魂落魄 你可以有一段糟糕的爱情  但不能放纵自己过一个烂透的人生 ​​​​</p>
                                    </a>
                                </div>
                            </div>
                        </div>

                    </td>
                </tr>

                <tr>
                    <td>
                        <div class="shang row">
                            <div class="touxiang col-md-2">
                                <a href="#">
                                    <img src="../../images/chat-images/images/co.png" />
                                </a>
                            </div>
                            <div class="qita col-md-10">
                                <div class="wangming">
                                    <a href="#">
                                        <p>土豆小姐</p>
                                    </a>
                                </div>
                                <div class="shijian">
                                    2018年6月2日
                                </div>
                            </div>
                        </div>
                        <div class="xia">
                            <div class="me">
                                <br/>
                                <a href="#">
                                    <p>@小胖鱼</p>
                                </a>
                            </div>
                            <div class="neirong">
                                <div class="innercontent">
                                    <a href="#">
                                        <!--当条博客中的纯文字-->
                                        <p><span>土豆小姐：</span>你已经是个大人了 别再因为一点感情问题就失魂落魄 你可以有一段糟糕的爱情  但不能放纵自己过一个烂透的人生 ​​​​</p>
                                    </a>
                                </div>
                            </div>
                        </div>

                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="shang row">
                            <div class="touxiang col-md-2">
                                <a href="#">
                                    <img src="../../images/chat-images/images/co.png" />
                                </a>
                            </div>
                            <div class="qita col-md-10">
                                <div class="wangming">
                                    <a href="#">
                                        <p>土豆小姐</p>
                                    </a>
                                </div>
                                <div class="shijian">
                                    2018年6月2日
                                </div>
                            </div>
                        </div>
                        <div class="xia">
                            <div class="me">
                                <br/>
                                <a href="#">
                                    <p>@小胖鱼</p>
                                </a>
                            </div>
                            <div class="neirong">
                                <div class="innercontent">
                                    <a href="#">
                                        <!--当条博客中的纯文字-->
                                        <p><span>土豆小姐：</span>你已经是个大人了 别再因为一点感情问题就失魂落魄 你可以有一段糟糕的爱情  但不能放纵自己过一个烂透的人生 ​​​​</p>
                                    </a>
                                </div>
                            </div>
                        </div>

                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="shang row">
                            <div class="touxiang col-md-2">
                                <a href="#">
                                    <img src="../../images/chat-images/images/co.png" />
                                </a>
                            </div>
                            <div class="qita col-md-10">
                                <div class="wangming">
                                    <a href="#">
                                        <p>土豆小姐</p>
                                    </a>
                                </div>
                                <div class="shijian">
                                    2018年6月2日
                                </div>
                            </div>
                        </div>
                        <div class="xia">
                            <div class="me">
                                <br/>
                                <a href="#">
                                    <p>@小胖鱼</p>
                                </a>
                            </div>
                            <div class="neirong">
                                <div class="innercontent">
                                    <a href="#">
                                        <!--当条博客中的纯文字-->
                                        <p><span>土豆小姐：</span>你已经是个大人了 别再因为一点感情问题就失魂落魄 你可以有一段糟糕的爱情  但不能放纵自己过一个烂透的人生 ​​​​</p>
                                    </a>
                                </div>
                            </div>
                        </div>

                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="shang row">
                            <div class="touxiang col-md-2">
                                <a href="#">
                                    <img src="../../images/chat-images/images/co.png" />
                                </a>
                            </div>
                            <div class="qita col-md-10">
                                <div class="wangming">
                                    <a href="#">
                                        <p>土豆小姐</p>
                                    </a>
                                </div>
                                <div class="shijian">
                                    2018年6月2日
                                </div>
                            </div>
                        </div>
                        <div class="xia">
                            <div class="me">
                                <br/>
                                <a href="#">
                                    <p>@小胖鱼</p>
                                </a>
                            </div>
                            <div class="neirong">
                                <div class="innercontent">
                                    <a href="#">
                                        <!--当条博客中的纯文字-->
                                        <p><span>土豆小姐：</span>你已经是个大人了 别再因为一点感情问题就失魂落魄 你可以有一段糟糕的爱情  但不能放纵自己过一个烂透的人生 ​​​​</p>
                                    </a>
                                </div>
                            </div>
                        </div>

                    </td>
                </tr>

                <tr>
                    <td>
                        <div class="shang row">
                            <div class="touxiang col-md-2">
                                <a href="#">
                                    <img src="../../images/chat-images/images/co.png" />
                                </a>
                            </div>
                            <div class="qita col-md-10">
                                <div class="wangming">
                                    <a href="#">
                                        <p>土豆小姐</p>
                                    </a>
                                </div>
                                <div class="shijian">
                                    2018年6月2日
                                </div>
                            </div>
                        </div>
                        <div class="xia">
                            <div class="me">
                                <br/>
                                <a href="#">
                                    <p>@小胖鱼</p>
                                </a>
                            </div>
                            <div class="neirong">
                                <div class="innercontent">
                                    <a href="#">
                                        <!--当条博客中的纯文字-->
                                        <p><span>土豆小姐：</span>你已经是个大人了 别再因为一点感情问题就失魂落魄 你可以有一段糟糕的爱情  但不能放纵自己过一个烂透的人生 ​​​​</p>
                                    </a>
                                </div>
                            </div>
                        </div>

                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="shang row">
                            <div class="touxiang col-md-2">
                                <a href="#">
                                    <img src="../../images/chat-images/images/co.png" />
                                </a>
                            </div>
                            <div class="qita col-md-10">
                                <div class="wangming">
                                    <a href="#">
                                        <p>土豆小姐</p>
                                    </a>
                                </div>
                                <div class="shijian">
                                    2018年6月2日
                                </div>
                            </div>
                        </div>
                        <div class="xia">
                            <div class="me">
                                <br/>
                                <a href="#">
                                    <p>@小胖鱼</p>
                                </a>
                            </div>
                            <div class="neirong">
                                <div class="innercontent">
                                    <a href="#">
                                        <!--当条博客中的纯文字-->
                                        <p><span>土豆小姐：</span>你已经是个大人了 别再因为一点感情问题就失魂落魄 你可以有一段糟糕的爱情  但不能放纵自己过一个烂透的人生 ​​​​</p>
                                    </a>
                                </div>
                            </div>
                        </div>

                    </td>
                </tr>





        </tbody>

        </table>


    </div>

    <div class="right col-md-3">
        <br/>

        <h3>联系人</h3>
        <div class="latest-news">

            <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">

                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingOne">
                        <h4 class="panel-title">
                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                特别关心
                            </a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                        <div class="panel-body">
                            <div class="zan">
                                <div class="zan-people row">



                                </div>
                                <br/>

                            </div>
                        </div>
                    </div>
                </div>


                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingTwo">
                        <h4 class="panel-title">
                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                DIY
                            </a>
                        </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                        <div class="panel-body">
                            <div class="zan">
                                <div class="zan-people row">
                                    <div class="col-md-4">
                                        <img src="../../images/chat-images/images/co.png" style="height:35px; width:35px">
                                    </div>
                                    <div class="col-md-8">
                                        <p>网名</p>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <div class="panel-body">
                            <div class="zan">
                                <div class="zan-people row">
                                    <div class="col-md-4">
                                        <img src="../../images/chat-images/images/co.png" style="height:35px; width:35px">
                                    </div>
                                    <div class="col-md-8">
                                        <p>网名</p>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>


                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingTwo">
                        <h4 class="panel-title">
                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                摄影
                            </a>
                        </h4>
                    </div>
                    <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                        <div class="panel-body">
                            <div class="zan">
                                <div class="zan-people row">
                                    <div class="col-md-4">
                                        <img src="../../images/chat-images/images/co.png" style="height:35px; width:35px">
                                    </div>
                                    <div class="col-md-8">
                                        <p>网名</p>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <div class="panel-body">
                            <div class="zan">
                                <div class="zan-people row">
                                    <div class="col-md-4">
                                        <img src="../../images/chat-images/images/co.png" style="height:35px; width:35px">
                                    </div>
                                    <div class="col-md-8">
                                        <p>网名</p>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>



                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingTwo">
                        <h4 class="panel-title">
                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                                音乐
                            </a>
                        </h4>
                    </div>
                    <div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
                        <div class="panel-body">
                            <div class="zan">
                                <div class="zan-people row">
                                    <div class="col-md-4">
                                        <img src="../../images/chat-images/images/co.png" style="height:35px; width:35px">
                                    </div>
                                    <div class="col-md-8">
                                        <p>网名</p>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <div class="panel-body">
                            <div class="zan">
                                <div class="zan-people row">
                                    <div class="col-md-4">
                                        <img src="../../images/chat-images/images/co.png" style="height:35px; width:35px">
                                    </div>
                                    <div class="col-md-8">
                                        <p>网名</p>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>




                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingTwo">
                        <h4 class="panel-title">
                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
                                影视
                            </a>
                        </h4>
                    </div>
                    <div id="collapseSix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSix">
                        <div class="panel-body">
                            <div class="zan">
                                <div class="zan-people row">
                                    <div class="col-md-4">
                                        <img src="../../images/chat-images/images/co.png" style="height:35px; width:35px">
                                    </div>
                                    <div class="col-md-8">
                                        <p>网名</p>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <div class="panel-body">
                            <div class="zan">
                                <div class="zan-people row">
                                    <div class="col-md-4">
                                        <img src="../../images/chat-images/images/co.png" style="height:35px; width:35px">
                                    </div>
                                    <div class="col-md-8">
                                        <p>网名</p>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>




                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingTwo">
                        <h4 class="panel-title">
                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
                                设计
                            </a>
                        </h4>
                    </div>
                    <div id="collapseSeven" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSeven">
                        <div class="panel-body">
                            <div class="zan">
                                <div class="zan-people row">
                                    <div class="col-md-4">
                                        <img src="../../images/chat-images/images/co.png" style="height:35px; width:35px">
                                    </div>
                                    <div class="col-md-8">
                                        <p>网名</p>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <div class="panel-body">
                            <div class="zan">
                                <div class="zan-people row">
                                    <div class="col-md-4">
                                        <img src="../../images/chat-images/images/co.png" style="height:35px; width:35px">
                                    </div>
                                    <div class="col-md-8">
                                        <p>网名</p>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>



                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingThree">
                        <h4 class="panel-title">
                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                美妆
                            </a>
                        </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                        <div class="panel-body">
                            <div class="pic">


                            </div>
                        </div>
                    </div>

                </div>

            </div>

        </div>
    </div>


    <div class="over col-md-12" style="margin-top:80px">
        <hr/>
        <ul>
            <li><a href="#">Privacy Policy</a>|</li>
            <li><a href="#">Terms of Use</a>|</li>
            <li><a href="mail.html">Contact Us</a></li>
        </ul>
    </div>

</div>



</div>

</body>
</html>


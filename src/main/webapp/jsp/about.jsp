<%--
  Created by IntelliJ IDEA.
  User: ion
  Date: 2018/5/28
  Time: 20:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>关于我们</title>
    <link rel="stylesheet"
          href="../css/index-css/content_font.css">
    <!-- Google web font "Open Sans" -->
    <link rel="stylesheet" href="../css/index-css/font-awesome.min.css">
    <link rel="stylesheet" href="../css/index-css/bootstrap.min.css">

    <link rel="stylesheet" href="../css/index-css/main.css">
    <link href='../css/index-css/nav_font.css' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" href="../css/index-css/demo.css" />
    <link rel="stylesheet" href="../css/index-css/templatemo-style.css">

    <script type="text/javascript" src="../js/index-js/modernizr.custom.86080.js"></script>

</head>

<body>


<header id="header" style="position:absolute;z-index:1001;">

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
                    <li><a href="treehole.jsp">树洞</a></li>
                    <li class="current-menu-item"><a href="about.jsp">关于我们</a></li>
                    <li><a href="contactUs.jsp">联系我们</a></li>

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
                    <form method="get" action="">
                        <input type="text" name="s" placeholder="Search and hit enter" />
                    </form>
                    <span class="header-search-icon"><span class="fa fa-search"></span></span>
                </div><!-- .search-form-wrapper -->
            </div><!-- #header-search -->

        </div><!-- .wrapper -->
    </div><!-- #header-top -->
</header>



<div id="particles-js"></div>

<ul class="cb-slideshow">
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
</ul>

<div class="container-fluid">
    <div class="row cb-slideshow-text-container ">
        <div class="tm-content col-xl-6 col-sm-8 col-xs-8 ml-auto section">
            <header class="mb-5">
                <h1>ABOUT US</h1>
            </header>
            <P class="mb-5">A sign-up letter template with three background
                images shuffling by fade in out movements. Thank you for visiting
                our site!</P>
                <p>关于我们  你想知道什么?</p>
           <%-- <form class="form-horizontal">
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">Username</label>
                    <div class=" col-md-7 col-sm-7 col-xs-7">
                        <input type="email" class="form-control" id="inputEmail3" style="height: 40px"
                               placeholder="Username">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
                    <div class="col-md-7 col-sm-7 col-xs-7">
                        <input type="password" class="form-control" id="inputPassword3" style="height: 40px"
                               placeholder="Password">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-5 col-sm-10">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" style="width: 20px"> Remember me
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-5">
                        <button type="submit" class="btn btn-default">Sign in</button>
                    </div>
                </div>
            </form>--%>

            <!-- 					<div class="tm-social-icons-container text-xs-center">
                    <a href="#" class="tm-social-link"><i class="fa fa-facebook"></i></a>
                    <a href="#" class="tm-social-link"><i class="fa fa-google-plus"></i></a>
                    <a href="#" class="tm-social-link"><i class="fa fa-twitter"></i></a>
                    <a href="#" class="tm-social-link"><i class="fa fa-linkedin"></i></a>
                </div> -->

        </div>
    </div>


    <!-- 				<div class="footer-link">
                <p>Copyright © 2018 Your Company

                - Design: <a rel="nofollow" href="#" target="_parent">Templatemo</a></p>
                <p>More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
            </div> -->
</div>
</body>

<script type="text/javascript" src="../js/index-js/particles.js"></script>
<script type="text/javascript" src="../js/index-js/app.js"></script>
</html>

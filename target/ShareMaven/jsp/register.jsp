<%--
  Created by IntelliJ IDEA.
  User: Danmon
  Date: 2018/5/29
  Time: 20:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>注册页面</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

    <link rel="apple-touch-icon" sizes="76x76" href="../images/login-images/apple-icon.png" />
    <link rel="icon" type="image/png" href="../images/login-images/favicon.png" />

    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

    <!-- CSS Files -->
    <link href="../css/login-css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/login-css/material-bootstrap-wizard.css" rel="stylesheet" />

    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="../css/login-css/demo.css" rel="stylesheet" />
    <link rel="stylesheet" href="../css/login-css/jigsaw.css">
</head>
<div class="image-container set-full-height" style="background-image: url('../images/login-images/wizard-city.jpg')">

    <!--   Big container   -->
    <div class="container">
        <div class="row">
            <div class="col-sm-8 col-sm-offset-2">
                <!--      Wizard container        -->
                <div class="wizard-container">
                    <div class="card wizard-card" data-color="orange" id="wizard">
                        <form action="" method="">
                            <!--        You can switch " data-color="rose" "  with one of the next bright colors: "blue", "green", "orange", "purple"        -->

                            <div class="wizard-header">
                                <h3 class="wizard-title">
                                    Share
                                </h3>
                                <h5>欢迎来到Share</h5>
                            </div>
                            <div class="wizard-navigation">
                                <ul>
                                    <li><a href="#location" data-toggle="tab">注册</a></li>
                                    <li><a href="#type" data-toggle="tab">话题</a></li>
                                    <li><a href="#facilities" data-toggle="tab">登录</a></li>

                                </ul>
                            </div>

                            <div class="tab-content">
                                <div class="tab-pane" id="location">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <h4 class="info-text"> 注册即代表同意《Share协议》《隐私政策》
                                                注册机构号</h4>
                                        </div>

                                        <div class="col-sm-3 col-sm-offset-2">
                                            <div class="form-group label-floating">
                                                <label class="control-label">国际区号</label>
                                                <select name="country" class="form-control">
                                                    <option disabled="" selected=""></option>
                                                    <option value="China"> 中国 +86 </option>
                                                    <option value="HongKong"> 中国香港 +852</option>
                                                    <option value="TaiWan"> 中国台湾 +886 </option>
                                                    <option value="American"> 美国 +1 </option>
                                                    <option value="Japan"> 日本 +81 </option>


                                                    <option value="Malaysia"> 马来西亚 +60 </option>
                                                    <option value="Australia"> 澳大利亚 +61 </option>
                                                    <option value="Canada"> 加拿大 +1 </option>
                                                    <option value="Korea"> 韩国 +82 </option>
                                                    <option value="Finland"> 芬兰 +358 </option>
                                                    <option value="...">...</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-sm-5">
                                            <div class="form-group label-floating">
                                                <label class="control-label">手机号</label>
                                                <input type="text" class="form-control" id="exampleInputEmail1">
                                            </div>
                                        </div>

                                        <div class="col-sm-5 col-sm-offset-2">
                                            <div class="form-group label-floating">
                                                <label class="control-label">输入6位短信验证码</label>
                                                <input type="text" class="form-control" id="exampleInputEmail1">
                                            </div>
                                        </div>

                                        <div class="col-sm-3">
                                            <div class="form-group label-floating form-control">
                                                <a style="color:orange" href="#">获取短信验证码</a>

                                            </div>
                                        </div>


                                        <div class="row">
                                            <div class="col-sm-5 col-sm-offset-2">
                                                <a style="color:orange" href="#">接收语音验证码</a>

                                            </div>
                                            <div class="col-sm-3">
                                                <a style="color:orange" href="#">接收语音验证码</a>

                                            </div>
                                        </div>

                                    </div>
                                </div>







                                <div class="tab-pane" id="type">
                                    <h4 class="info-text">你对以下哪些感兴趣呢？ </h4>
                                    <div class="row">
                                        <div class="col-sm-12 col-sm-offset-1">

                                            <div class="col-sm-1">
                                                <div class="choice" data-toggle="wizard-checkbox" rel="tooltip" title="如果你喜欢读书，可以点这个哦">
                                                    <input type="checkbox" name="type" value="Book">
                                                    <div class="icon">
                                                        <i class="material-icons">book</i>
                                                        <h6>书籍</h6>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-sm-1">
                                                <div class="choice" data-toggle="wizard-checkbox" rel="tooltip" title="如果你喜欢音乐，可以点这个哦">
                                                    <input type="checkbox" name="type" value="Music">
                                                    <div class="icon">
                                                        <i class="material-icons">music_note</i>
                                                        <h6>音乐</h6>
                                                    </div>

                                                </div>
                                            </div>

                                            <div class="col-sm-1">
                                                <div class="choice" data-toggle="wizard-checkbox" rel="tooltip" title="如果你喜欢美食，可以点这个哦">
                                                    <input type="checkbox" name="type" value="Cake">
                                                    <div class="icon">
                                                        <i class="material-icons">cake</i>
                                                        <h6>美食</h6>
                                                    </div>

                                                </div>
                                            </div>

                                            <div class="col-sm-1">
                                                <div class="choice" data-toggle="wizard-checkbox" rel="tooltip" title="如果你喜欢摄影，可以点这个哦">
                                                    <input type="checkbox" name="type" value="Monochrome_photos">
                                                    <div class="icon">
                                                        <i class="material-icons">monochrome_photos</i>
                                                        <h6>摄影</h6>
                                                    </div>

                                                </div>
                                            </div>

                                            <div class="col-sm-1">
                                                <div class="choice" data-toggle="wizard-checkbox" rel="tooltip" title="如果你喜欢影视，可以点这个哦">
                                                    <input type="checkbox" name="type" value="Live_tv">
                                                    <div class="icon">
                                                        <i class="material-icons">live_tv</i>
                                                        <h6>影视</h6>
                                                    </div>

                                                </div>
                                            </div>

                                            <div class="col-sm-1">
                                                <div class="choice" data-toggle="wizard-checkbox" rel="tooltip" title="如果你喜欢花艺，可以点这个哦">
                                                    <input type="checkbox" name="type" value="Appartment">
                                                    <div class="icon">
                                                        <i class="material-icons">local_florist</i>
                                                        <h6>花艺</h6>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-sm-1">
                                                <div class="choice" data-toggle="wizard-checkbox" rel="tooltip" title="如果你喜欢读书，可以点这个哦">
                                                    <input type="checkbox" name="type" value="Appartment">
                                                    <div class="icon">
                                                        <i class="material-icons">hotel</i>
                                                        <h6>家居</h6>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-sm-1">
                                                <div class="choice" data-toggle="wizard-checkbox" rel="tooltip" title="如果你喜欢旅行，可以点这个哦">
                                                    <input type="checkbox" name="type" value="Tram">
                                                    <div class="icon">
                                                        <i class="material-icons">tram</i>
                                                        <h6>旅行</h6>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-sm-1">
                                                <div class="choice" data-toggle="wizard-checkbox" rel="tooltip" title="如果你喜欢DIY，可以点这个哦">
                                                    <input type="checkbox" name="type" value="Pan_tool">
                                                    <div class="icon">
                                                        <i class="material-icons">pan_tool</i>
                                                        <h6>DIY</h6>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-sm-1">
                                                <div class="choice" data-toggle="wizard-checkbox" rel="tooltip" title="如果你喜欢美妆，可以点这个哦">
                                                    <input type="checkbox" name="type" value="Face">
                                                    <div class="icon">
                                                        <i class="material-icons">face</i>
                                                        <h6>美妆</h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>



                                    <div class="row">
                                        <div class="col-sm-12 col-sm-offset-1">

                                            <div class="col-sm-1">
                                                <div class="choice" data-toggle="wizard-checkbox" rel="tooltip" title="如果你喜欢读书，可以点这个哦">
                                                    <input type="checkbox" name="type" value="Book">
                                                    <div class="icon">
                                                        <i class="material-icons">book</i>
                                                        <h6>书籍</h6>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-sm-1">
                                                <div class="choice" data-toggle="wizard-checkbox" rel="tooltip" title="如果你喜欢音乐，可以点这个哦">
                                                    <input type="checkbox" name="type" value="Music">
                                                    <div class="icon">
                                                        <i class="material-icons">music_note</i>
                                                        <h6>音乐</h6>
                                                    </div>

                                                </div>
                                            </div>

                                            <div class="col-sm-1">
                                                <div class="choice" data-toggle="wizard-checkbox" rel="tooltip" title="如果你喜欢美食，可以点这个哦">
                                                    <input type="checkbox" name="type" value="Cake">
                                                    <div class="icon">
                                                        <i class="material-icons">cake</i>
                                                        <h6>美食</h6>
                                                    </div>

                                                </div>
                                            </div>

                                            <div class="col-sm-1">
                                                <div class="choice" data-toggle="wizard-checkbox" rel="tooltip" title="如果你喜欢摄影，可以点这个哦">
                                                    <input type="checkbox" name="type" value="Monochrome_photos">
                                                    <div class="icon">
                                                        <i class="material-icons">monochrome_photos</i>
                                                        <h6>摄影</h6>
                                                    </div>

                                                </div>
                                            </div>

                                            <div class="col-sm-1">
                                                <div class="choice" data-toggle="wizard-checkbox" rel="tooltip" title="如果你喜欢影视，可以点这个哦">
                                                    <input type="checkbox" name="type" value="Live_tv">
                                                    <div class="icon">
                                                        <i class="material-icons">live_tv</i>
                                                        <h6>影视</h6>
                                                    </div>

                                                </div>
                                            </div>

                                            <div class="col-sm-1">
                                                <div class="choice" data-toggle="wizard-checkbox" rel="tooltip" title="如果你喜欢花艺，可以点这个哦">
                                                    <input type="checkbox" name="type" value="Appartment">
                                                    <div class="icon">
                                                        <i class="material-icons">local_florist</i>
                                                        <h6>花艺</h6>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-sm-1">
                                                <div class="choice" data-toggle="wizard-checkbox" rel="tooltip" title="如果你喜欢读书，可以点这个哦">
                                                    <input type="checkbox" name="type" value="Appartment">
                                                    <div class="icon">
                                                        <i class="material-icons">hotel</i>
                                                        <h6>家居</h6>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-sm-1">
                                                <div class="choice" data-toggle="wizard-checkbox" rel="tooltip" title="如果你喜欢旅行，可以点这个哦">
                                                    <input type="checkbox" name="type" value="Tram">
                                                    <div class="icon">
                                                        <i class="material-icons">tram</i>
                                                        <h6>旅行</h6>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-sm-1">
                                                <div class="choice" data-toggle="wizard-checkbox" rel="tooltip" title="如果你喜欢DIY，可以点这个哦">
                                                    <input type="checkbox" name="type" value="Pan_tool">
                                                    <div class="icon">
                                                        <i class="material-icons">pan_tool</i>
                                                        <h6>DIY</h6>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-sm-1">
                                                <div class="choice" data-toggle="wizard-checkbox" rel="tooltip" title="如果你喜欢美妆，可以点这个哦">
                                                    <input type="checkbox" name="type" value="Face">
                                                    <div class="icon">
                                                        <i class="material-icons">face</i>
                                                        <h6>美妆</h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>








                                <div class="tab-pane" id="facilities">
                                    <h4 class="info-text">快回到自己的小窝吧</h4>
                                    <div class="row">
                                        <div class="col-sm-3 col-sm-offset-2">
                                            <div class="form-group label-floating">
                                                <label class="control-label">国际区号</label>
                                                <select name="country" class="form-control">
                                                    <option disabled="" selected=""></option>
                                                    <option value="China"> 中国 +86 </option>
                                                    <option value="HongKong"> 中国香港 +852</option>
                                                    <option value="TaiWan"> 中国台湾 +886 </option>
                                                    <option value="American"> 美国 +1 </option>
                                                    <option value="Japan"> 日本 +81 </option>


                                                    <option value="Malaysia"> 马来西亚 +60 </option>
                                                    <option value="Australia"> 澳大利亚 +61 </option>
                                                    <option value="Canada"> 加拿大 +1 </option>
                                                    <option value="Korea"> 韩国 +82 </option>
                                                    <option value="Finland"> 芬兰 +358 </option>
                                                    <option value="...">...</option>
                                                </select>

                                            </div>
                                        </div>

                                        <div class="col-sm-5">
                                            <div class="form-group label-floating">
                                                <label class="control-label">手机号</label>
                                                <input type="text" class="form-control" id="exampleInputEmail1">

                                            </div>
                                        </div>

                                        <div class="col-sm-5 col-sm-offset-2">
                                            <div class="form-group label-floating">
                                                <label class="control-label">输入6位短信验证码</label>
                                                <input type="text" class="form-control" id="exampleInputEmail1">
                                            </div>
                                        </div>

                                        <div class="col-sm-3">
                                            <div class="form-group label-floating form-control">

                                                <a style="color:orange" href="">获取短信验证码</a>

                                            </div>

                                        </div>

                                    </div>

                                    <div class="row">
                                        <div class="col-sm-5 col-sm-offset-2">
                                            <a style="color:orange" href="#">密码登录(手机号或邮箱)</a>
                                        </div>
                                        <div class="col-sm-5">
                                            <a style="color:orange" href="#">接收语音验证码</a>
                                        </div>
                                    </div>

                                    <div class="row" style="margin-top:2em">
                                        <div class="col-sm-5 col-sm-offset-3">
                                            <div id="captcha" style="position: relative"></div>
                                            <div id="msg"></div>
                                        </div>
                                        <div class="col-sm-4"></div>
                                    </div>
                                </div>
                            </div>



                            <div class="wizard-footer">
                                <div class="pull-right">
                                    <input type='button' class='btn btn-next btn-fill btn-primary btn-wd' name='next' style='background-color:#ff9800' value='下一个'/>
                                    <input type='button' class='btn btn-finish btn-fill btn-primary btn-wd' name='finish' style='background-color:#ff9800' value='登录' />
                                </div>
                                <div class="pull-left">
                                    <input type='button' class='btn btn-previous btn-fill btn-default btn-wd' name='previous' value='上一个'
                                           onclick="window.open('index.jsp')"
                                    />
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </form>
                    </div>
                </div> <!-- wizard container -->
            </div>
        </div> <!-- row -->
    </div> <!--  big container -->





    <div class="footer">
        <div class="container text-center">

        </div>
    </div>
</div>

</body>
<!--   Core JS Files   -->
<script src="../js/login-js/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="../js/login-js/bootstrap.min.js" type="text/javascript"></script>
<script src="../js/login-js/jquery.bootstrap.js" type="text/javascript"></script>

<!--  Plugin for the Wizard -->
<script src="../js/login-js/material-bootstrap-wizard.js"></script>

<!--  More information about jquery.validate here: http://jqueryvalidation.org/	 -->
<script src="../js/login-js/jquery.validate.min.js"></script>
<script type="text/javascript" src="../js/login-js/jigsaw.js"></script>
<script type="text/javascript">
    jigsaw.init(document.getElementById('captcha'), function () {
        document.getElementById('msg').innerHTML = '验证成功！'
    })
</script>


</html>

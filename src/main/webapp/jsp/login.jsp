<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录页面</title>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap/css/bootstrap.min.css" /> 
<script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/js/jQuery.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/js/bootstrap.min.js"></script>
</head>
<script type="text/javascript">
    var InterValObj; //timer变量，控制时间
    var count = 30; //间隔函数，1秒执行
    var curCount;//当前剩余秒数
    function sendMessage(){
        curCount = count;
        $("#btn").attr("disabled", "true");
        $("#btn").val(curCount + "秒后可重新发送");
        InterValObj = window.setInterval(SetRemainTime, 1000); //启动计时器，1秒执行一次请求后台发送验证码 TODO
    }
    //timer处理函数
    function SetRemainTime() {
        if (curCount == 0) {
            window.clearInterval(InterValObj);//停止计时器
            $("#btn").removeAttr("disabled");//启用按钮
            $("#btn").val("重新发送验证码");
        }
        else {
            curCount--;
            $("#btn").val(curCount + "秒后可重新发送");
        }
    }
</script>
<body>
       <div class="container">
           <div  id="login">
           <form class="form-horizontal" role="form">
               <div class="form-group">
                   <label class="col-sm-2 control-label">手机号</label>
                   <div class="col-sm-5">
                       <input type="text" class="form-control" id="phone" name="phone" placeholder="请输入您的手机号"  required autofocus>
                       
                   </div>
               </div>
               <div class="form-group">
                   <label class="col-sm-2 control-label">验证码</label>
                   <div class="col-sm-3">
                       <input type="code" class="form-control" id="code" name="code" placeholder="验证码" required>
                       <input class="btn btn-default" id="btn" name="btn" value="发送验证码" onclick="sendMessage()" />
                   </div>
               </div>
               <div class="form-group">
                   <div class="col-sm-offset-2 col-sm-10">
                       <button type="button" class="btn btn-info" id="lo">登陆</button>
                   </div>
               </div>
           </form>
       </div>
       </div>
</body>
<script type="text/javascript">

    var sms="";
    $("#btn").click(function(){

        var phone=$("#phone").val();

        if(phone!="")
        {
            $.ajax({
//                url:"https://api.miaodiyun.com/20150822/industrySMS/sendSMS",
                url:"${pageContext.request.contextPath}/user/sendSMS.action",
                type:"post",
                data:{"phone":phone},
                success:function(result){
                    sms=result;
                    alert(sms);
                }
            });
        }else{
             alert("请输入手机号");
            return false;
        }

    });
    $("#lo").click(function(){
        var code=$("#code").val();
        if(code==""){
            alert("请输入验证码");
        }else{
            if(sms==code){
                window.location.href="success.jsp";
            }else{
                alert("验证码错误");

            };
        };

    });
</script>




</html>
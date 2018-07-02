<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>增加管理员账号</title>
	<!-- Bootstrap Styles-->
	<link href="<%=basePath%>jsp/manage/assets/css/bootstrap.css" rel="stylesheet" />
	<!-- FontAwesome Styles-->
	<link href="<%=basePath%>jsp/manage/assets/css/font-awesome.css" rel="stylesheet" />
	<!-- Custom Styles-->
	<link href="<%=basePath%>jsp/manage/assets/css/custom-styles.css" rel="stylesheet" />
	<script src="assets/js/jquery-1.10.2.js"></script>

<style type="text/css">
	body {background-image: url('<%=basePath%>jsp/manage/assets/img/bg.jpg');}
</style>
</head>
<body>
<div class='container'>
	<div>
		<p style='color: #000;font-size:30px;'>增加管理员账号</p>
	</div>

	<hr />

	<div>

		<form  class="form-horizontal">
			<div class="form-group">
				<label for="account" class="col-sm-2 control-label">账户名:</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" name="account" id="account" placeholder="输入账号名">
				</div>
			</div>

			<div class="form-group">
				<label for="password" class="col-sm-2 control-label">密码:</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" name="password" id="password" placeholder="输入账号密码">
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="button" class="btn btn-default" onclick="addLabel()">保存</button>
					<button type="button" class="btn btn-default" onclick="window.location.href='<%=basePath%>jsp/manage/index.jsp';">取消</button>

				</div>
			</div>
		</form>
		<hr />
		<div>
			<p >添加管理员是系统提供给超级管理员（admin）的一项功能。</p>
				<p>利用此功能，超级管理员（admin）可以手动添加一个普通管理员账户。</p>

			<p>关于账户权限：管理员账户按权限不同分为超级管理员（admin）与普通管理员，两者在系统维护操作（如用户管理、
				标签管理）上没有区别，只在管理员账户管理上有分别（admin可以添加查看、修改、删除任何账户，普通管理员则只
				能操作自身账户）。</p>

			<p>如有使用上的问题，请咨询邮箱ifudoudou@shareDev.com</p>
			<p>提供半年免费系统维护服务</p>




		</div>
	</div>
	<script>
        function checkInput() {
            if($("#account").val() == ""){
                alert("账号名为空");
                return false;
            }else if($("#password").val() == ""){
                alert("密码为空");
                return false;
            }
            return true;
        }

        function addLabel(){
            var bool = checkInput();
            if(bool) {
                var account = $("#account").val();
                var password = $("#password").val();
                $.ajax({
                    type:"post",
                    url:"${pageContext.request.contextPath }/mngAccount/add.action",
                    data:{
                        "account":account,
                        "password":password,
                    },
                    async:false,
                    success:function(){
                        alert("添加成功");
                        window.location.href="index.jsp";
                    },
                    error:function(){
                        alert("后台繁忙");
                    }
                })
            }
        }
	</script>
	<div></div>
</div>
</body>
</html>
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
	<title>添加标签</title>
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
</head>
<body>
	<div class='container'>
		<div>
			<p style='color:black;font-size:30px;text-align: center'>添加标签</p>
		
		</div>

		<hr />

		<div>

			<form class="form-horizontal">
			  <div class="form-group">
			    <label for="labelname" class="col-sm-2 control-label">标签名:</label>
			    <div class="col-sm-4">
			      <input type="text" class="form-control" name="labelname" id="labelname" placeholder="输入标签名">
			    </div>
			  </div>
			  
			  <div class="form-group">
			    <label for="describe" class="col-sm-2 control-label">标签内容:</label>
			    <div class="col-sm-4">
			      <input type="text" class="form-control" name="describe" id="describe" placeholder="输入标签内容">
			    </div>
			  </div>
			  
			  <div class="form-group">
			    <div class="col-sm-offset-2 col-sm-10">
			      <button type="button" class="btn btn-default" onclick="addLabel()">保存</button>
					<button type="button" class="btn btn-default" onclick="window.location.href='<%=basePath%>jsp/manage/LabelManage.jsp';">取消</button>


				</div>
			  </div>
			</form>
		</div>
		<script>
			function checkInput() {
				if($("#labelname").val() == ""){
				    alert("标签名为空");
				    return false;
				}else if($("#describe").val() == ""){
                    alert("标签内容为空");
                    return false;
                }
                return true;
            }

            function addLabel(){
			    var bool = checkInput();
			    if(bool) {
                    var labelname = $("#labelname").val();
                    var describe = $("#describe").val();
                    $.ajax({
						type:"post",
                        url:"${pageContext.request.contextPath }/mngLabel/add.action",
                        data:{
                            "labelname":labelname,
                            "describe":describe,
						},
                    	async:false,
                        success:function(){
                            alert("添加成功");
                            window.location.href="LabelManage.jsp";
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
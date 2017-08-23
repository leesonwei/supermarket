<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<c:set var="path" value="${pageContext.request.contextPath}" scope="session"></c:set>
<script type="text/javascript">
  var contextPath = "${path}";
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="${path}/statics/css/bootstrap.css">
<style type="text/css">
	.v-center{
		margin-top:170px;
	}
</style>

<title>超市管理系统登录</title>
</head>
<body style="background-image: url(${path}/statics/images/login_bg.jpg);background-repeat: repeat-x;">
<div class="container">
	<div class="row v-center">
		<section class="col-md-4 col-sm-4 col-xs-2"></section>
		<div class="col-md-4 col-sm-4 col-xs-8"  style="background-image: url(${path}/statics/images/formBg.png);background-repeat: repeat-x;;background-repeat: no-repeat;height: 280px; width: 387px;padding: 52px 30px 10px 30px;">
			<form action="${path}/user/doLogin.html" modelAttribute="user" method="post" class="loginForm" id="actionForm" name="actionForm">
				<div class="form-group">
					<label for="userCode">用户名</label>
					<div class="input-group">
					<span class="input-group-addon" id="icon-addon"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></span>
					<input autofocus="autofocus" placeholder="请输入用户名..." id="userCode" class="form-control" type="text" name="userCode" aria-describedby="icon-addon" required/>
					</div>
				</div>
				<div class="form-group">
					<label for="userPassword">密码</label>
					<div class="input-group">
					<span class="input-group-addon" id="icon-addon2"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span></span>
					<input id="userPassword" placeholder="请输入密码..." class="form-control" type="password" name="userPassword" aria-describedby="icon-addon2" required/>
					</div>
				</div>
				<div class="checkbox">
        			<label>
          			<input type="checkbox"> Remember me
        			</label>
      			</div>
				<input id="submitButton" class="btn btn-primary" type="button" value="登录"/>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">忘记密码?</a>
			</form>
		</div>
		<!-- 模态框（Modal） -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" 
								aria-hidden="true">×
						</button>
						<h4 class="modal-title" id="myModalLabel">
							模态框（Modal）标题
						</h4>
					</div>
					<div class="modal-body">
					
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
		<section class="col-md-4 col-sm-4 col-xs-2"></section>
	</div>
</div>
<script src="${path}/statics/js/jquery-3.2.0.js"></script>
<script src="${path}/statics/js/bootstrap.js"></script>
<script src="${path}/statics/js/userjs.js"></script>
</body>
</html>
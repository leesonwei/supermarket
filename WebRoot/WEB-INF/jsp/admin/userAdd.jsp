<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
<title>超市管理系统</title>

</head>
<body>
			<!-- 模态框（Modal） 远程调用只需要modal-dontent-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" 
								aria-hidden="true">×
						</button>
						<h4 class="modal-title" id="myModalLabel">
							用户详细信息
						</h4>
					</div>
					<div class="modal-body">
						<form id="modal-form" class="form-horizontal" role="form">
						  <div class="form-group no-add">
						    <label for="userid" class="col-sm-2 control-label">ID</label>
						    <div class="col-sm-10">
						      <input type="text" class="form-control" id="userid" value="${user.id}">
						    </div>
						  </div>
						  <div class="form-group">
						    <label for="userCode" class="col-sm-2 control-label">登录名</label>
						    <div class="col-sm-10">
						      <input type="text" class="form-control" id="userCode" value="${user.userCode}">
						    </div>
						  </div>
						  <div class="form-group">
						    <label for="userName" class="col-sm-2 control-label">用户名</label>
						    <div class="col-sm-10">
						      <input type="text" class="form-control" id="userName" value="${user.userName}">
						    </div>
						  </div>
						  <div class="form-group" >
								<label for="radio"  class="col-sm-2 control-label" style="margin-right:15px">性别</label>
								<label class="radio-inline">
									<input class="gender" type="radio" value="1" name="gender" checked> 男
								</label>
								<label class="radio-inline">
									<input class="gender" type="radio" value="2" name="gender"> 女
								</label>
						</div>
						  <div class="form-group">
						    <label for="phone" class="col-sm-2 control-label">电话</label>
						    <div class="col-sm-10">
						      <input type="text" class="form-control" id="phone" value="${user.phone}">
						    </div>
						  </div>
						  <div class="form-group">
		                <label for="birthday" class="col-sm-2 control-label"  style="margin-right:15px">生日</label>
		                <div class="input-group date form_date col-sm-8" data-date="" data-date-format="dd MM yyyy" data-link-field="birthday" data-link-format="yyyy-mm-dd">
		                    <input id="birthdayShow" class="form-control" size="16" type="text" value="${user.birthday}">
		                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
							<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
		                </div>
						<input id="birthday" name="birthday"  type="hidden" value="" /><br/>
		           		</div>
						  <div class="form-group">
						    <label for="address" class="col-sm-2 control-label">地址</label>
						    <div class="col-sm-10">
						      <input type="text" class="form-control" id="address" value="${user.address}">
						    </div>
						  </div>
						  <div class="form-group">
						    <label for="userRole" class="col-sm-2 control-label">角色</label>
						    <div class="col-sm-10">
						      <input type="text" class="form-control" id="userRole" value="${user.userRole}">
						    </div>
						  </div>
						  <div class="form-group no-add">
						    <label for="createdBy" class="col-sm-2 control-label">创建者</label>
						    <div class="col-sm-10">
						      <input type="text" class="form-control" id="createdBy" placeholder="请输入姓">
						    </div>
						  </div>
						  <div class="form-group no-add">
						    <label for="creationDate" class="col-sm-2 control-label">创建日期</label>
						    <div class="col-sm-10">
						      <input type="text" class="form-control" id="creationDate" placeholder="请输入姓">
						    </div>
						  </div>
						  <div class="form-group no-add">
						    <label for="modifyBy" class="col-sm-2 control-label">更新者</label>
						    <div class="col-sm-10">
						      <input type="text" class="form-control" id="modifyBy" placeholder="请输入姓">
						    </div>
						  </div>
						  <div class="form-group no-add">
						    <label for="modifyDate" class="col-sm-2 control-label">更新日期</label>
						    <div class="col-sm-10">
						      <input type="text" class="form-control" id="modifyDate" placeholder="请输入姓">
						    </div>
						  </div>
						  <div class="form-group" >
								<label for="idPic" class="col-sm-2 control-label">用户头像</label>
								<div class="col-sm-10">
								<input id="idPic" class="form-control" type="file" name="idPicPath"/>
								</div>
							</div>
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="button" class="btn btn-primary save" onclick="">保存</button>
					</div>
				</div><!-- /.modal-content -->
<script src="${path}/statics/js/jquery-3.2.0.js"></script>
<script src="${path}/statics/js/bootstrap.js"></script>
<script src="${path}/statics/js/bootstrap-datetimepicker.js"></script>
<script src="${path}/statics/js/date.js"></script>
</body>
</html>
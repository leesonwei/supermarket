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
<style type="text/css">
	.input-search{
		height:34px;
		box-sizing:border-box;
	}
</style>
</head>
<body>
<div class="container">
    <%@ include file="/WEB-INF/jsp/common/header.jsp" %>
    <!-- 内容部分 -->
    <section class="row">
        <!-- 左边栏部分 -->
        <section class="col-sm-2 col-lg-2 col-md-2 pull-left" style="height: 600px;">
            <%@ include file="/WEB-INF/jsp/common/left.jsp" %>
        </section>
        <!--右边栏部分-->
        <section class="col-sm-10 col-lg-10 col-md-10">
        <div class="pull-right"><a href="javascript:void(0);" onclick="showUserAdd()">添加用户</a></div>
        	<div class="alert alert-info hide">
				<a href="#" class="close" data-dismiss="alert">&times;</a>
				<span></span>
				<div class="pull-right"><a href="admin/reg.jsp">添加用户</a></div>
			</div>
			<table id="userTable" class="table table-hover table-responsive hide">
			<tr><th>登录名</th><th>用户名</th><th>性别</th><th>电话</th><th>地址</th><th>操作</th></tr>
			</table>
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
						<button type="button" class="btn btn-primary save" onclick="">保存</button>
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
			<!-- 模态框2（Modal2） -->
			<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" 
								aria-hidden="true">×
						</button>
						<h4 class="modal-title" id="myModalLabel2">
							模态框（Modal）标题
						</h4>
					</div>
					<div class="modal-body">
						
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="button" class="btn btn-primary save" onclick="">保存</button>
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
        </section>
        <nav id="pagenav" class="hide" aria-label="Page navigation">
			  <ul class="pagination">
			    <li><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
			    <li class="active"><a href="${path}">1 <span class="sr-only">(current)</span></a></li>
			    <li><a href="${path}">2<span class="sr-only"></span></a></li>
			    <li><a href="#" aria-label="next"><span aria-hidden="true">&raquo;</span></a></li>
			    <li><a href="#">共${pageCount}页<span class="sr-only">(current)</span></a></li>
			  </ul>
		</nav>
    </section>
    <footer class="text-center" style="background-color: #0077cc; height: 50px; line-height: 50px; color: white;">
        版权归北大青鸟所有
    </footer>
</div>
<script src="${path}/statics/js/jquery-3.2.0.js"></script>
<script src="${path}/statics/js/bootstrap.js"></script>
<script src="${path}/statics/js/bootstrap-datetimepicker.js"></script>
<script src="${path}/statics/js/manager.js"></script>
<script src="${path}/statics/js/userjs.js"></script>
</body>
</html>
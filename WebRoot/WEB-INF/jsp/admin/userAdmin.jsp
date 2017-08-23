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
			<ol class="breadcrumb"> 
				<li><a href="#">Home</a></li> 
				<li><a href="#" class="active">用户管理</a></li> 
			</ol>
			<!-- 搜索栏 -->
			        <form class="navbar-form navbar-left" role="search">
			            <div class="form-group">
			                <input type="text" class="form-control" placeholder="Search">
			            </div>
			            <button type="submit" class="btn btn-default">提交按钮</button>
			            
			        </form>
			        <button onclick="showUserAdd()" type="button" class="btn btn-default pull-right">添加用户</button>
			<!-- 显示列表 -->
			<table id="userTable" class="table table-hover table-responsive">
			<tr><th>ID</th><th>用户名</th><th>性别</th><th>电话</th><th>地址</th><th>操作</th></tr>
			<c:forEach items="${users}" var="user" begin="${(page.pageIndex-1)*page.pageSize}" end="${page.pageIndex*page.pageSize-1}">
				<tr><td>${user.userCode}</td><td>${user.userName}</td><td>${user.gender==1?"男":"女"}</td><td>${user.phone}</td><td>${user.address}</td>
				<td><button class="btn-link userDetail" onclick="showUserDetail('${user.id}')" userid="${user.id}" userName="${user.userName}">详情</button>&nbsp;&nbsp;<button class="btn-link" onclick="showDelete('${user.userName}')" userid="${user.id}" userName="${user.userCode}">删除</button></td>
				</tr>
			</c:forEach>
			<tr></tr>
			</table>
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
		<c:if test="${page.totalPage>1}">
		<nav id="pagenav" aria-label="Page navigation">
			  <ul class="pagination">
			    <li><a href="${path}/user/userListByPage.html/${(page.currentPage-1)>page.totalPage?page.totalPage:page.currentPage-1}" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
			    <c:forEach var="pageno" begin="1" end="${page.totalPage}" step="1">
			    	<c:if test="${page.currentPage==pageno }">
			    		<li class="active"><a href="${path}/user/userListByPage.html/${pageno}" pageIndex="${pageno}">${pageno}</a></li>
			    	</c:if>
			    	<c:if test="${page.currentPage!=pageno }">
			    		<li><a  href="${path}/user/userListByPage.html/${pageno}" pageIndex="${pageno}">${pageno}</a></li>
			    	</c:if>
			    </c:forEach>
			    <li><a href="${path}/user/userListByPage.html/${(page.currentPage+1)>page.totalPage?page.totalPage:page.currentPage+1}" aria-label="next"><span aria-hidden="true">&raquo;</span></a></li>
			    <li><a href="javascript:void(0);">共${page.totalPage}页</a></li>
			  </ul>
		</nav>
		</c:if>
        </section>
    </section>
    <footer class="text-center" style="background-color: #0077cc; height: 50px; line-height: 50px; color: white;">
        版权归北大青鸟所有
    </footer>
</div>
<script src="${path}/statics/js/jquery-3.2.0.js"></script>
<script src="${path}/statics/js/bootstrap.js"></script>
<script src="${path}/statics/js/bootstrap-datetimepicker.js"></script>
<script src="${path}/statics/js/userAddModel.js"></script>
<script src="${path}/statics/js/manager2.js"></script>
<script src="${path}/statics/js/userjs.js"></script>
</body>
</html>
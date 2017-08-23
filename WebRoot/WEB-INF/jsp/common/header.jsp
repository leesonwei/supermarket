<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<header>
<nav class="navbar navbar-default">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">
                        <img alt="Brand" src="${path}/statics/images/buy.png" height="32" width="40"/>
                    </a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li><a href="#">超市订单管理系统<span class="sr-only">(current)</span></a></li>
                        <li><a href="#"></a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                    <li><a href="#">欢迎 ${loginUser.userCode} 登录</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">管理菜单<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="">订单管理</a></li>
                            <li><a href="">供应商管理</a></li>
                            <li><a href="<">用户管理</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="">修改密码</a></li>
                        </ul>
                    </li>
                        <li><a href="${path}/user/doLogout.html">退出</a></li>
                    </ul>
                    

                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </nav>
</header>

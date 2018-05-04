<%--
  Created by IntelliJ IDEA.
  User: Kerry
  Date: 2018/4/16
  Time: 23:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/top.css">
    <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <a class="navbar-brand" href="${pageContext.request.contextPath}/user/Page_main.action">首页</a>
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link " href="${pageContext.request.contextPath}/stu/Stu_findByPage.action?page.pageNum=1">学生管理界面</a>
        </li>
        <%--<li class="nav-item">--%>
            <%--<a class="nav-link " href="${pageContext.request.contextPath}/user/Page_add.action">添加学生</a>--%>
        <%--</li>--%>
        <li class="nav-item">
            <a class="nav-link " href="#">讲座信息修改</a>
        </li>
        <li class="nav-item">
            <a class="nav-link " href="#">上课信息修改</a>
        </li>
    </ul>
    <ul  class="navbar-nav BarRight " >
        <li class="nav-item">
            <a class="nav-link" href="#">联系大佬</a>
        </li>
        <!-- Dropdown -->
        <li class="nav-item dropdown" >
            <a class="nav-link dropdown-toggle " href="#" id="navbardrop" data-toggle="dropdown">
                ${sessionScope.uid}
            </a>
            <div class="dropdown-menu">
                <a class="dropdown-item" href="#">个人信息</a>
                <a class="dropdown-item" href="#">课程查询</a>
                <a class="dropdown-item" href="#">成绩查询</a>
                <a class="dropdown-item" href="${pageContext.request.contextPath}/user/Page_logout.action">退出登录</a>
            </div>
        </li>
    </ul>
</nav>
</body>
</html>
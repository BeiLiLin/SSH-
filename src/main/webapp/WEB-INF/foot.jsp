<%--
  Created by IntelliJ IDEA.
  User: Kerry
  Date: 2018/4/17
  Time: 16:04
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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/foot.css">
    <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>


    <title>Insert title here</title>
</head>
<body>
<div >
    <nav class="navbar navbar-expand-sm bg-light navbar-light" >
        <ul class="navbar-nav">
            <li class="nav-item footli">
                <a class="nav-link" href="#" >企业合作</a>
            </li>
            <li class="nav-item footli">
                <a class="nav-link" href="#">人才招聘</a>
            </li>
            <li class="nav-item footli">
            <a class="nav-link" href="#">联系我们</a>
            </li>
            <li class="nav-item footli">
            <a class="nav-link" href="#">常见问题</a>
            </li>
            <li class="nav-item footli">
            <a class="nav-link" href="#">意见反馈</a>
            </li>
            <li class="nav-item footli">
                <a class="nav-link " href="https://www.baidu.com/" target="_blank">友情链接</a>
            </li>
        </ul>
    </nav>

</div>
</body>
</html>
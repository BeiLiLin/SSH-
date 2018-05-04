<%@ page import="domain.User" %><%--
  Created by IntelliJ IDEA.
  User: Kerry
  Date: 2018/4/16
  Time: 12:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css">
    <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/login.js"></script>
    <title>Insert title here</title>
</head>
<body>
<div  class="container" >
    <s:form name="loginForm" action="login" namespace="/user" method="POST"  id="loginForm" theme="simple">
       <div class="formDiv">
           <div class="form-group" id="uid">
               <label for="id">用户名:</label>
               <input type="text" name="user.uid" id="id"  value="${cookie.uid.value}" Class="Login" onblur="checkId()"/>
               <p id="nameError"></p>
           </div>
           <div class="pass">
               <label for="pass">密&nbsp&nbsp&nbsp&nbsp码:</label>
               <input type="password" name="user.password" id="pass" value="${cookie.pass.value}" Class="Login" onblur="checkPass()"/>
               <p id="passError"></p>
           </div>
           <s:submit value="登录" cssClass="btn btn-info loginBtm RightInput" />
           <s:reset value="重置" cssClass="btn btn-info loginBtm RightInput"/>
           <div class="form-check " id="cookie">
               <s:label for="c">
                   <s:checkbox cssClass="form-check-input" name="cookie" id="c"/>记住我
               </s:label>
           </div>
       </div>
    </s:form>
</div>

</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: Kerry
  Date: 2018/4/17
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="s" uri="/struts-tags" %>
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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/add.css">
    <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/add.js"></script>
    <title>Insert title here</title>
</head>
<body>
<s:include value="../top.jsp"/>
<div class="container">
    <%--<div class="addForm">--%>
        <%--<s:form action="Stu_add" namespace="/stu" method="POST" theme="simple">--%>
            <%--<div class="form-group">--%>
                <%--<s:label for="sid">学生证号码:</s:label>--%>
                <%--<s:textfield name="student.sid" id="sid" cssClass="form-control" onblur="checkId()"/>--%>
                <%--<p id="IdError"></p>--%>
            <%--</div>--%>
            <%--<div class="form-group">--%>
                <%--<s:label for="SName">姓名：</s:label>--%>
                <%--<s:textfield name="student.SName" id="SName"  cssClass="form-control"/>--%>
                <%--<p id="NameError"></p>--%>
            <%--</div>--%>
            <%--<div class="form-group">--%>
                <%--<s:label for="sex">性别：</s:label>--%>
                <%--<s:radio name="student.sex" id="sex" />--%>
                <%--<p id="SexError"></p>--%>
            <%--</div>--%>
            <%--<div class="form-group">--%>
                <%--<s:label for="address">地址：</s:label>--%>
                <%--<s:textfield name="student.address" id="address" cssClass="form-control" onblur="checkAddress()"/>--%>
                <%--<p id="AddressError"></p>--%>
            <%--</div>--%>
            <%--<div class="form-group">--%>
                <%--<s:label for="tele">电话</s:label>--%>
                <%--<s:textfield name="student.tele" id="tele" cssClass="form-control" onblur="checkTele()"/>--%>
                <%--<p id="TeleError"></p>--%>
            <%--</div>--%>
            <%--<s:submit value="提交" cssClass="btn btn-primary"/>--%>
        <%--</s:form>--%>
    <%--</div>--%>


</div>
<s:include value="../foot.jsp"/>
</body>
</html>
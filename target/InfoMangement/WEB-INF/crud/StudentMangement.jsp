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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/StuMg.css">
    <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/StuMg.js"></script>
    <title>Insert title here</title>
</head>
<body>
<s:include value="../top.jsp"/>
<div class="container">
    <div class="mainLeft">
        <table class="table " >
            <thead>
            <tr>
                <th></th>
                <th>Id</th>
                <th>姓名</th>
                <th>性别</th>
                <th>地址</th>
                <th>电话</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <s:iterator value="#request.studentList">
                <tr id="<s:property value="Sid"/>tr">
                    <td><input type="checkbox" class="custom-checkbox" style="width:20px" id="<s:property value="Sid"/>"> </td>
                    <td>
                        <input type="text" class="myInput" value="<s:property value="Sid"/>" style="width:100px" id="<s:property value="sid"/>id" />
                    </td>
                    <td>
                        <input type="text" class="myInput" value="<s:property value="SName"/>"style="width:50px" id="<s:property value="sid"/>name">
                    </td>
                    <td>
                        <input type="text" class="myInput" value="<s:property value="sex"/>" style="width:50px" id="<s:property value="sid"/>sex">
                    </td>
                    <td><input type="text" class="myInput" value="<s:property value="address"/>" style="width:200px" id="<s:property value="sid"/>address"></td>
                    <td>
                        <input type="text" class="myInput" value="<s:property value="tele"/>" style="width:100px" id="<s:property value="sid"/>tele">
                    </td>
                    <td>
                        <input type="button" class="btn btn-success btn-sm RightInput"  value="更新" onclick="updateOne('<s:property value="Sid"/>')"/>
                        <input type="button" class="btn btn-danger btn-sm RightInput"  value="删除" onclick="deleteOne('<s:property value="Sid"/>')"/>
                    </td>
                </tr>
            </s:iterator>
            </tbody>
        </table>
    </div>
    <div class="mainRight">
        <ul >
            <li ><input value="添加学生" type="button" class="btn btn-info addBtm RightInput" data-toggle="modal" data-target="#login" role="button" onclick=""/></li>
            <li ><input value="批量删除" type="button" class="btn btn-danger addBtm RightInput" role="button" onclick="deleteAll()"/></li>
            <li ><input value="全部选择" type="button" class="btn btn-warning addBtm RightInput" role="button" onclick="selectAll()"/></li>
            <li ><input value="取消选择" type="button" class="btn btn-success addBtm RightInput" role="button" onclick="cancleAll()"/></li>
        </ul>
    </div>
    <div class="page">
        <ul class="pagination">
            <li class="page-item"><a class="page-link" href="
                        <s:url namespace="/stu" action="Stu_findByPage">
                            <s:param name="page.pageNum" value="#request['PrePageNo']" />
                        </s:url>
                       ">Previous</a></li>
         <%
             int count = (int)request.getAttribute("pageCount");
             int pageNo = (int)request.getAttribute("NextPageNo")-1;
             int i;
             for (i=1;i<=count;i++){
                if(i == pageNo) {
                    %>
                    <li class="page-item active">
                        <a class="page-link" href="${pageContext.request.contextPath}/stu/Stu_findByPage.action?page.pageNum=<%=i%>"><%=i%></a>
                    </li>
                    <%
                }else{
                     %>
                    <li class="page-item ">
                        <a class="page-link" href="${pageContext.request.contextPath}/stu/Stu_findByPage.action?page.pageNum=<%=i%>"><%=i%></a>
                    </li>
                     <%
                 }
             }
         %>
            <li class="page-item"><a class="page-link" href="
                        <s:url action="Stu_findByPage" namespace="/stu">
                            <s:param name="page.pageNum" value="#request['NextPageNo']"/>
                        </s:url>">
                Next
            </a></li>
        </ul>
    </div>
</div>
<s:include value="../foot.jsp"/>

<!-- 保存弹窗 start-->
<div class="modal fade" id="login">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title">添加学生</h4>
            </div>
            <div class="modal-body">
                <!-- 保存框 -->
                <div id="form">
                    <form id="addStudent" class="addform">
                        <div class="form-group">
                            <label for="sid">I&nbsp&nbsp&nbsp&nbspD：</label><input type="text" id="sid"/>
                        </div>
                        <div class="form-group">
                            <label for="name"/>姓名：</label><input type="text" id="name"></div>
                        <div class="form-group">
                                <label for="sex"/>性别：</label><input type="text" id="sex"/>
                        </div>
                        <div class="form-group">
                            <label for="address"/>地址：</label><input type="text" id="address">
                         </div>
                         <div class="form-group">
                             <label for="tele"/>电话：</label><input type="text" id="tele"/>
                         </div>
                        <input onclick="add()" class="btn btn-success btn-lg" value="添加"/>
                    </form>
                </div>
            </div>
            <div class="modal-footer"></div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<!-- 登录弹窗 end-->
</body>
</html>
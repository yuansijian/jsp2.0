<%--
  Created by IntelliJ IDEA.
  User: protecting
  Date: 19-4-12
  Time: 下午2:31
  To change this template use File | Settings | File Templates.
--%>
<%--test使用--%>
<%@ page language="java" contentType="text/html" pageEncoding="gbk" %>
<html>
<head>
    <title>web开发</title>
</head>
<body>
<%   request.setCharacterEncoding("gbk");%>
<jsp:useBean id="simple" scope="page" class="javaBean01.SimpleBean"/>
<jsp:setProperty name="simple" property="*"/>    操作javaBean中的属性
<h3>姓名：<%=simple.getName() %></h3>
<h3>年龄：<%=simple.getAge() %></h3>
</body>
</html>

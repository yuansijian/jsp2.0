<%--
  Created by IntelliJ IDEA.
  User: protecting
  Date: 19-4-12
  Time: ����2:31
  To change this template use File | Settings | File Templates.
--%>
<%--testʹ��--%>
<%@ page language="java" contentType="text/html" pageEncoding="gbk" %>
<html>
<head>
    <title>web����</title>
</head>
<body>
<%   request.setCharacterEncoding("gbk");%>
<jsp:useBean id="simple" scope="page" class="javaBean01.SimpleBean"/>
<jsp:setProperty name="simple" property="*"/>    ����javaBean�е�����
<h3>������<%=simple.getName() %></h3>
<h3>���䣺<%=simple.getAge() %></h3>
</body>
</html>

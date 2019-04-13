<%--
  Created by IntelliJ IDEA.
  User: protecting
  Date: 19-3-27
  Time: 下午4:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String name = request.getParameter("name");
    String pwd = request.getParameter("pwd");
    String flag = request.getParameter("isLogin");

    if(!"test".equals(name) && !"0000".equals(pwd))
    {
        response.sendRedirect("login.jsp");
    }
    else
    {
        Cookie nameCookie = new Cookie("username", name);
        nameCookie.setMaxAge(60*60*24*3);
        Cookie pwdCookie = new Cookie("password", pwd);
        pwdCookie.setMaxAge(60*60*24*3);

        response.addCookie(nameCookie);
        response.addCookie(pwdCookie);


        response.sendRedirect("index.jsp");
    }
%>

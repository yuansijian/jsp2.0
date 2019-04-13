<%--
  Created by IntelliJ IDEA.
  User: protecting
  Date: 19-3-26
  Time: 下午5:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.*, java.io.*" %>
<html>
<head>
    <link rel="shortcut icon" href="img/1.ico" />
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="login.css">
    <script rel="script" type="text/javascript" src="login.js"></script>
    <%
        Date lastAccessTime = new Date(session.getLastAccessedTime());
        String username = "test";
        String password = "0000";

    %>
    <script>
        function login() {
            alert("上次登录时间<% out.print(lastAccessTime);%> ");
        }
            // var username = document.getElementById("username");
            // var password = document.getElementById("password");

            <%--if(username.value == "test" && password.value == "0000" )--%>
            <%--{--%>
                // window.location.href = "index.jsp";
            <%--}--%>
            <%--else if(username.value == "")--%>
            <%--{--%>
                <%--alert("请输入用户名");--%>
            <%--}--%>
            <%--else if(password.value == "")--%>
            <%--{--%>
                <%--alert("请输入密码");--%>
            <%--}--%>
            <%--else if(username.value == "test" && password.value != "0000")--%>
            <%--{--%>
                <%--alert("请输入正确的密码");--%>
            <%--}--%>
            <%--else if(password.value == "0000" && username.value != "test")--%>
            <%--{--%>
                <%--alert("请输入正确的用户名");--%>
            <%--}--%>
            <%--else--%>
            <%--{--%>
                <%--alert("请输入正确的用户名和密码");--%>
            <%--}--%>
        <%--}--%>
    </script>
</head>

<body>
<div id="login_frame">
    <p id="image_logo">
        <img src="img/1.ico">
    </p>
    <form method="post" action="LoginServlet">
        <p>
            <label class="label_input">用户名</label><input name="username" type="text" id="username" class="text_field" value="<%=username%>">
        </p>
        <p>
            <label class="label_input">密码</label><input name="password" type="password" id="password" class="text_field" value="<%=password%>">
        </p>
        <div id="login_control">
            <input type="submit" id="btn_login" value="登录" onclick="login()"><a id="forget_pwd" href="forget_pwd.html">忘记密码？</a>
        </div>
    </form>
</div>
</body>
</html>

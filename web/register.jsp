<%--
  Created by IntelliJ IDEA.
  User: protecting
  Date: 19-4-18
  Time: 上午3:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.*, java.util.*" contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="reg" scope="request" class="com.register"/>
<html>
<head>
    <link rel="shortcut icon" href="img/1.ico" />
    <title>Register</title>
    <%
        request.setCharacterEncoding("utf-8");
    %>
    <link href="register.css" rel="stylesheet" />
    <script>
        function x() {
            alert("")
        }
    </script>
</head>
<body>
<body>
<div id="carbonForm">
    <h1>Signup</h1>
    <form action="register_y.jsp" method="post" id="signupForm">
        <div class="fieldContainer">
            <div class="formRow">
                <div class="label">
                    <label for="name">Name:</label>
                </div>
                <div class="field">
                    <input type="text" name="name" id="name" value="<jsp:getProperty name="reg" property="name"/>"/> <%=reg.getErrorMsg("errname")%>
                </div>
            </div>
            <div class="formRow">
                <div class="label">
                    <label for="email">Email:</label>
                </div>
                <div class="field">
                    <input type="text" name="email" id="email" value="<jsp:getProperty name="reg" property="email"/>"/>
                </div>
            </div>
            <div class="formRow">
                <div class="label">
                    <label for="pass">Password:</label>
                </div>
                <div class="field">
                    <input type="password" name="pass" id="pass" value="<jsp:getProperty name="reg" property="pass"/>"/>
                </div>
            </div>
        </div>
        <!-- Closing fieldContainer -->
        <div class="signupButton">
            <input type="submit" name="submit" id="submit"/>
        </div>
    </form>
</div>
</body>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: protecting
  Date: 19-4-18
  Time: 上午4:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.*, java.util.*, java.lang.*" contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="reg" scope="request" class="com.register"/>
<html>
<head>
    <link rel="shortcut icon" href="img/1.ico" />
    <title>success</title>
    <%
        request.setCharacterEncoding("utf-8");
    %>
</head>
<body>
<jsp:setProperty name="reg" property="*"/>
<%
    if(reg.isValidate()){
%>
        <%--延迟三秒跳转登录界面--%>
        <script>
            alert("注册成功");
        </script>
        <meta http-equiv="refresh" content="3, url=login.jsp">
        <p>
            三秒后自动跳转到<a href="login.jsp" style="color: #3BD9FF">登录界面</a>
        </p>

<%
    }
    else{
%>
        <script>
            <%--alert("注册失败<%=reg.getErrorMsg("errname")%>");--%>
            <jsp:forward page="register.jsp"/>
        </script>

<%
    }
//    //获取数据库链接
//    String JDBC_DRIVER = "com.mysql.jdbc.Driver";
//    String DB_URL = "jdbc:mysql://localhost:3306/javaWeb";
//    String DB_user = "root";
//    String DB_pwd = "0611";
//
//    String username = newuser.getName();
//    String password = newuser.getPass();
//    String email = newuser.getEmail();
//    int id = 2;
//
//    try {
//        Class.forName(JDBC_DRIVER);
//        Connection conn = DriverManager.getConnection(DB_URL, DB_user, DB_pwd);
//        if (!conn.isClosed()) {
//            System.out.println("success");
//        }
//
//        Statement statement = conn.createStatement();
//        String sql = "select id, username, password from user";
//        ResultSet rs = statement.executeQuery(sql);
//
//        while (rs.next()){
//            if(rs.getString("username").equals(username)){
//            }
//            id = rs.getInt("id");
//        }
//
//        id += 1;
//        sql = "insert into user(id, username, password, email) values (" + id + ",'" + username + "','" + password +"','" + email + "')";
//        System.out.println(sql);
//        try {
//            int count = statement.executeUpdate(sql);
//            if(count == 1){
//                response.sendRedirect("login.jsp");
//            }
//        } catch (SQLException e){
//            System.out.println(e.getErrorCode());
//        }
//    }
//    catch (SQLException e){
//        System.out.println(e.getErrorCode());
//    }
//    catch (ClassNotFoundException e){
//        e.printStackTrace();
//    }
%>
</body>
</html>

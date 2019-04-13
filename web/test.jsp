<%--
  Created by IntelliJ IDEA.
  User: protecting
  Date: 19-4-12
  Time: 上午9:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.*, java.sql.*, java.lang.*" contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="likes" scope="request" class="com.storage"/>
<%--<%--%>
    <%--sex.setSex("男生");--%>
<%--%>--%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
%>
<%--<%   request.setCharacterEncoding("gbk");%>--%>
<jsp:setProperty name="likes" property="*"/>
<%
    //获取数据库链接
    String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    String DB_URL = "jdbc:mysql://localhost:3306/javaWeb";
    String DB_user = "root";
    String DB_pwd = "0611";

    //获取答案
    String schoolName = likes.getSchoolName();
    String sex = likes.getSex();
    String age = likes.getAge();
    String have = likes.getHave();
    String have1 = likes.getHave1();
    String location = likes.getLocation();
    String reason1s = likes.getReason1s();
    String reasons = likes.getReasons();
    String thinkings = likes.getThinkings();
    String treats = likes.getTreats();
    String dos = likes.getDos();
    String know = likes.getKnow();
    String feeling = likes.getFeeling();
    String evaluations = likes.getEvaluations();

    try {
        Class.forName(JDBC_DRIVER);
        Connection conn = DriverManager.getConnection(DB_URL, DB_user, DB_pwd);
        if (!conn.isClosed()) {
            System.out.println("success");
        }

        Statement stmt = conn.createStatement();
        //添加用户验证，插入答案，
        try {
            Cookie cookies[] = request.getCookies();
            String uerSql = "select * from user";
            String username = "1";
            String password = "2";
            int userId = 1;
            String Id = "";

            System.out.println(username);
            System.out.println(password);

            for (int i = 0; i < cookies.length; i++) {
                Cookie cookie = cookies[i];

                if (cookie.getName().equals("username")) {
                    username = cookie.getValue();
                }

                if (cookie.getName().equals("password")) {
                    password = cookie.getValue();
                }
            }

            ResultSet rs = stmt.executeQuery(uerSql);

            //获取用户编号
            while (rs.next()) {
                if (rs.getString("username").equals(username)
                        && rs.getString("password").equals(password)) {
                    userId = rs.getInt("id");
                }
            }

            Id = String.valueOf(userId);
//            System.out.println(userId);

            String sql = "insert into userInformation(userId1,schoolName, age, sex, city) values (" + Id + ",'" + schoolName + "','" + age + "','" + sex + "','" + location + "')";
            String sql1 = "insert into Radio(userId2, three, four, eleven, twelve) values" +
                    "(" + Id + ",'" + have + "','" + have1 + "','" + know + "','" + feeling + "')";
            String sql2 = "insert into MultipleSelection(userId3, six, seven, eight, nine, ten, thirteen) values " +
                    "(" + Id + ",'" + reasons + "','" + reason1s + "','" + thinkings + "','" + treats + "','" + dos + "" +
                    "','" + evaluations + "')";
            try {
                int count = stmt.executeUpdate(sql);
                int count1 = stmt.executeUpdate(sql1);
                int count2 = stmt.executeUpdate(sql2);
            } catch (SQLException e) {
                System.out.println("fail" + e.getMessage());
            }
            stmt.close();
            conn.close();
        }
        catch (SQLException e){
            System.out.println("Fali");
        }
    }
    catch (ClassNotFoundException var16) {
        System.out.println("数据库驱动没有安装");
    } catch (SQLException var17) {
        System.out.println("数据库连接失败");
    }
        //String sql = "insert into userInformation(userId1,schoolName, age, sex, city) values (1,'" + schoolName + "','" + age + "','" + sex +"','" + location +"')";
        //String sql1 = "insert into Radio(userId2, three, four, eleven, twelve) values" +
        //        "(1,'" + have + "','" + have1 +"','" + know +"','" + feeling +"')";
        //System.out.println(sql1);
//        String sql2 = "insert into MultipleSelection(userId3, six, seven, eight, nine, ten, thirteen) values " +
//                "(1,'" + reasons +"','" + reason1s + "','" + thinkings + "','" + treats + "','" + dos +"" +
//                "','" + evaluations + "')";
//        System.out.println(sql2);
//        try {
//            //int count = stmt.executeUpdate(sql);
//            //int count1 = stmt.executeUpdate(sql1);
//            int count2 = stmt.executeUpdate(sql2);
//        } catch (SQLException var15) {
//            System.out.println("fail" + var15.getMessage());
//        }

    //填写完成，未实现功能，暂时跳转到登录界面
    response.sendRedirect("login.jsp");
%>

</body>
</html>
import java.io.IOException;
import java.net.URLEncoder;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


@WebServlet("/LoginServlet")
public class login_index extends HttpServlet {

    /**
     * Constructor of the object.
     */
    public login_index() {
        super();
    }


    /**
     * Destruction of the servlet. <br>
     */
    public void destroy() {
        super.destroy(); // Just puts "destroy" string in log
        // Put your code here
    }


    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        doPost(request,response);
    }


    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //response.setContentType("text/html;charset=utf-8");
        //此出注解是因为使用CodeFilter类过滤所有Servlet，转换编码
        //request.setCharacterEncoding("utf-8");
        String userName = request.getParameter("username");
        String passWord = request.getParameter("password");
        //String checkBox = request.getParameter("save_password");

        //JDBC链接,数据库检验用户登录
        Connection conn;
        String JDBC_DRIVER = "com.mysql.jdbc.Driver";
        String DB_URL = "jdbc:mysql://localhost:3306/javaWeb";
        String DB_user = "root";
        String DB_pwd = "0611";
        boolean login_test = false;

        try{
            Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection(DB_URL, DB_user, DB_pwd);
            if(!conn.isClosed())
            {
                System.out.println("success");
            }
            Statement stmt = conn.createStatement();

            //String sql = "insert into user(username, password)values('test', '0000')";
            String sql = "select username, password from user";
            try{
                ResultSet rs = stmt.executeQuery(sql);

                while (rs.next())
                {
                    if(rs.getString("username").equals(userName)
                        && rs.getString("password").equals(passWord))
                    {
                        login_test = true;
                        break;
                    }
                }
//                if(result !=0){
//                    System.out.println("操作成功，影响" + result + "行");
//                }
            }catch (SQLException e){
                System.out.println("fail");
            }
            stmt.close();
            conn.close();
        }catch (ClassNotFoundException e){
            System.out.println("数据库驱动没有安装");
        }catch (SQLException e){
            System.out.println("数据库连接失败");
        }

//      System.out.println("userName:"+userName+"\n"+"passWord:"+passWord);
        request.getSession().setAttribute("nameSession", userName);   //将用户名存入session中

        //建立session
        if(login_test)
        {

            //Cookie存取时用URLEncoder.encode进行编码(PS:读取时URLDecoder.decode进行解码)
            String name = URLEncoder.encode(userName,"UTF-8");
            //创建两个Cookie对象
            Cookie nameCookie = new Cookie("username", name);
            //设置Cookie的有效期为3天
            nameCookie.setMaxAge(60 * 60 * 24 * 3);
            String pwd = URLEncoder.encode(passWord,"UTF-8");
            Cookie pwdCookie = new Cookie("password", pwd);
            pwdCookie.setMaxAge(60 * 60 * 24 * 3);
            response.addCookie(nameCookie);
            response.addCookie(pwdCookie);

            response.sendRedirect("index.jsp");
        }
        else
        {
            response.sendRedirect("login_error.jsp");
            // request.getRequestDispatcher("loginFail.jsp").forward(request, response);
        }


    }

    /**
     * Initialization of the servlet. <br>
     *
     * @throws ServletException if an error occurs
     */
    public void init() throws ServletException {
        // Put your code here
    }

}
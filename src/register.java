package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Map;
import java.util.HashMap ;


public class register {
    private String name;
    private String email;
    private String pass;
    private Map<String, String> errors = null;

    public String getErrorMsg(String key){
        String value = this.errors.get(key);
        return value==null?"":value;
    }

    public register(){
        this.name = "" ;
        this.email = "" ;
        this.errors = new HashMap<String,String>() ;
    }

    public void setName(String name){
        this.name = name;
    }
    public String getName(){
        return name;
    }

    public void setEmail(String email){
        this.email = email;
    }
    public String getEmail(){
        return email;
    }

    public void setPass(String pass){
        this.pass = pass;
    }
    public String getPass(){
        return pass;
    }

    private boolean userExist(){
        //获取数据库链接
        String JDBC_DRIVER = "com.mysql.jdbc.Driver";
        String DB_URL = "jdbc:mysql://localhost:3306/javaWeb";
        String DB_user = "root";
        String DB_pwd = "0611";
        String username = getName();
        int id = 0;


        try {
            Class.forName(JDBC_DRIVER);
            Connection connection = DriverManager.getConnection(DB_URL, DB_user, DB_pwd);

            Statement statement = connection.createStatement();
            String sql = "select id, username, password from user";
            ResultSet rs = statement.executeQuery(sql);


            while (rs.next()) {
                if (rs.getString("username").equals(username)) {
                    return false;
                }

                id = rs.getInt("id");
            }

            id += 1;

            name = getName();
            email = getEmail();
            pass = getPass();

            sql = "insert into user(id, username, password, email) values (" + id + ",'" + name + "','" + pass + "','" + email + "')";
            System.out.println(sql);
            int count = statement.executeUpdate(sql);

            if(count == 1){
                System.out.println("success");
            }

            statement.close();
            connection.close();

        } catch (SQLException e){
            System.out.println(e.getSQLState());
        } catch (ClassNotFoundException e){
            e.printStackTrace();
        }

        return true;
    }
    public boolean isValidate(){
        boolean flag = true;

        if(!userExist()){
            this.errors.put("errname", "用户名已被注册");
            flag = false;
        }

        return flag;
    }

    public String user(){
        return "root";
    }
    public String password(){
        return "0611";
    }
}

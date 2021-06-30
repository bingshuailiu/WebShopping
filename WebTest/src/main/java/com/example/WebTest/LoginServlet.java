package com.example.WebTest;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginServlet extends HttpServlet {

    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //post请求处理中文乱码，只能post用
        request.setCharacterEncoding("utf-8");
        String username = request.getParameter("username");
        byte[] bs = username.getBytes("iso-8859-1");//将字符串以指定编码成新的字符数组
        username = new String(bs,"utf-8");//再以指定编码 解码
        String password = request.getParameter("password");
        boolean isManager=false,isUser=false;
        SQL sql;
        ResultSet rs,rs2;
        try {
            sql=new SQL();
            rs= sql.getRs("Manager");
            while(rs.next()){
                if(rs.getString("account").equals(username)){
                    if(rs.getString("password").equals(password)){
                        isManager=true;
                    }
                }
            }
            rs.close();
            rs2=sql.getRs("user");
            while(rs2.next()){
                if(rs2.getString("account").equals(username)){
                    if(rs2.getString("password").equals(password)){
                        isUser=true;
                    }
                }
            }
            rs2.close();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        if (isManager){
            response.sendRedirect("../Manager.jsp");
        }
        else if(isUser){
            /*request.getSession().setAttribute("name",request.getRemoteAddr()+username);

            //登录成功后，保存名称为JSESSIONID的id的cookie，值为session的id
            Cookie c = new Cookie("JSESSIONID",request.getSession().getId());
            c.setMaxAge(60*100);
            c.setPath("/");
            response.addCookie(c);*/
            request.getSession().setAttribute("username",username);
            /*System.out.println("成功设置Session");*/
            response.sendRedirect("../User.jsp");
        }else{
            response.sendRedirect("../welcome.jsp");
        }
    }
}
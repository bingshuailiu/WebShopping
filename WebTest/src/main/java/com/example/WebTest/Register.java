package com.example.WebTest;

import Classes.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/Register")
public class Register extends HttpServlet{
    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String username = request.getParameter("username");
        byte[] bs = username.getBytes("iso-8859-1");
        username = new String(bs,"utf-8");
        String password = request.getParameter("password");
        String email=request.getParameter("email");
        String phone=request.getParameter("phone");
        String sex=request.getParameter("sex");
        User tempUser=new User(sex,email,phone,username,password);
        SQL sql;
        try {
            sql=new SQL();
            if(!sql.existUser(username)){
                sql.insertUser(tempUser);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        response.sendRedirect("../welcome.jsp");

    }
}

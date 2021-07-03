package com.example.WebTest;

import Classes.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/ChangeUserInformation")
public class ChangeUserInformation extends HttpServlet {

    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String username = request.getParameter("account");
        byte[] bs = username.getBytes("iso-8859-1");
        username = new String(bs,"utf-8");
        String password = request.getParameter("password");
        String email=request.getParameter("email");
        String phone=request.getParameter("phone");
        String sex=request.getParameter("sex");
        User tempUser=new User(sex,email,phone,username,password);
        SQL sql;
        boolean updateSuccess=false;
        try {
            sql=new SQL();
            if(sql.existUser(username)){
                updateSuccess=sql.updateUser(tempUser);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        request.setAttribute("Status",updateSuccess?"true":"false");
        if(request.getParameter("isManager")!=null){
            response.sendRedirect("../Manager/Manager.jsp");
            return;
        }
        request.getRequestDispatcher("../User/UserInformation.jsp").forward(request, response);

    }
}

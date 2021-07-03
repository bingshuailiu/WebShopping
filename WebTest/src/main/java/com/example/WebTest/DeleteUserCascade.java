package com.example.WebTest;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/DeleteUserCascade")

public class DeleteUserCascade extends HttpServlet {
    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        SQL sql;
        boolean deleteSuccess=false;
        String account=request.getParameter("username");
        try {
            sql =new SQL();
            if(sql.deleteUserShoppingCart(account)&&sql.deleteUserItems(account)&&
            sql.deleteUser(account))
                deleteSuccess=true;

            request.setAttribute("Status",deleteSuccess?"true":"false");
            response.sendRedirect("../Manager/Manager.jsp");

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}

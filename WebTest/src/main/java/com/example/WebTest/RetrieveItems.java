package com.example.WebTest;

import Classes.Item;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet("/RetrieveItems")
public class RetrieveItems extends HttpServlet {
    public String tranString(String s){
        byte[] bs=s.getBytes(StandardCharsets.ISO_8859_1);
        s=new String(bs, StandardCharsets.UTF_8);
        return s;
    }
    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        SQL sql;
        ArrayList<Item> items =new ArrayList<>();
        try {
            sql=new SQL();
            String account=tranString(request.getParameter("account"));
            String name=tranString(request.getParameter("name"));
            double price=Double.parseDouble(request.getParameter("price"));
            int buyCount=Integer.parseInt(request.getParameter("buyCount"));
            String type=tranString(request.getParameter("type"));
            Item item=new Item(account,name,type,buyCount,price);
            sql.retrieveItem(item);
            sql.checkItemDelete();
            request.getRequestDispatcher("../User/User.jsp").forward(request, response);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}

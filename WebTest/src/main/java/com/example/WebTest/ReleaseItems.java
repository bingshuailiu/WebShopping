package com.example.WebTest;

import Classes.Item;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.sql.SQLException;

@WebServlet("/ReleaseItems")
public class ReleaseItems extends HttpServlet {
    public String tranString(String s){
        byte[] bs=s.getBytes(StandardCharsets.ISO_8859_1);
        s=new String(bs, StandardCharsets.UTF_8);
        return s;
    }
    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        boolean addSuccess=false;
        String username = tranString(request.getParameter("username"));
        String name = tranString(request.getParameter("name"));
        String type = tranString(request.getParameter("type"));
        int count= Integer.parseInt(request.getParameter("count"));
        double price = Double.parseDouble(request.getParameter("price"));
        Item item=new Item(username,name,type,count,price);
        SQL sql;
        try {
            sql=new SQL();
            if(sql.existItem(username,name,price)){
                addSuccess=sql.updateItem(item);
            }else {
                addSuccess=sql.insertItems(item);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        request.setAttribute("ReleaseStatus", addSuccess?"true":"false");
        request.getRequestDispatcher("../User/releaseItems.jsp").forward(request, response);
    }
}

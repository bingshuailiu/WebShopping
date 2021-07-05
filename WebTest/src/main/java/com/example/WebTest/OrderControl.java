package com.example.WebTest;

import Classes.Order;
import Classes.shopping_cart_item;
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


@WebServlet("/OrderControl")
public class OrderControl extends HttpServlet {
    public String tranString(String s){
        byte[] bs=s.getBytes(StandardCharsets.ISO_8859_1);
        s=new String(bs, StandardCharsets.UTF_8);
        return s;
    }

    public ArrayList<Order> getUserOrder(String account){
        SQL sql;
        ArrayList<Order> orders=new ArrayList<>();
        try {
            sql=new SQL();
            ResultSet rs=sql.getOrders(account);
            while (rs.next()){
                Order order =new Order(rs.getString("buyerAccount"),
                        rs.getString("sellerAccount"),
                        rs.getString("date"),
                        rs.getString("name"),
                        rs.getDouble("price"),
                        rs.getInt("buyCount"));
                orders.add(order);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return orders;
    }


    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String[] id = request.getParameterValues("id");
        ArrayList<shopping_cart_item> items=new ArrayList<>();
        for(String str:id){
            String inf=tranString(str);
            String []temp=inf.split(",");
            shopping_cart_item item=new shopping_cart_item(temp[0],temp[1],temp[2],Integer.parseInt(temp[3]),Double.parseDouble(temp[4]));
            items.add(item);
        }
        request.setAttribute("items",items);
        request.getRequestDispatcher("../User/order.jsp").forward(request, response);
    }
}

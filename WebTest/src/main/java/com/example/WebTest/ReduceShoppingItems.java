package com.example.WebTest;

import Classes.Item;
import Classes.shopping_cart_item;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet("/ReduceShoppingItems")
public class ReduceShoppingItems extends HttpServlet {
    public String tranString(String s){
        byte[] bs=s.getBytes(StandardCharsets.ISO_8859_1);
        s=new String(bs, StandardCharsets.UTF_8);
        return s;
    }
    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String buyerAccount=tranString(request.getParameter("buyerAccount"));
        String sellerAccount=tranString(request.getParameter("sellerAccount"));
        String name=tranString(request.getParameter("name"));
        double price=Double.parseDouble(request.getParameter("price"));
        int buyCount= Integer.parseInt(request.getParameter("buyCount"));
        shopping_cart_item item=new shopping_cart_item(buyerAccount,sellerAccount,name,buyCount,price);
        boolean addSuccess=false;
        System.out.println(request.getParameter("changeValue"));
        SQL sql;
        ArrayList<shopping_cart_item> shopping_cart_items =new ArrayList<>();
        try {
            sql=new SQL();
            if(sql.existShoppingCartItem(item)){
                addSuccess=sql.reduceShoppingCart(item);
            }
            sql.checkShoppingCartDelete();
            request.setAttribute("reduceStatus", addSuccess?"true":"false");
            request.getRequestDispatcher("../User/shopping_cart.jsp").forward(request, response);

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}

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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet("/shopping_cart")
public class shopping_cart extends HttpServlet {
    public String tranString(String s){
        byte[] bs=s.getBytes(StandardCharsets.ISO_8859_1);
        s=new String(bs, StandardCharsets.UTF_8);
        return s;
    }

    public ArrayList<Item> getMyReleaseItems(String account){
        SQL sql;
        ArrayList<Item> items =new ArrayList<>();
        try {
            sql=new SQL();
            ResultSet rs=sql.getItems(account);
            while(rs.next()){
                Item temp=new Item(rs.getString("account"),
                        rs.getString("name"),rs.getString("type")
                        ,rs.getInt("count"),rs.getDouble("price"));
                items.add(temp);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return items;
    }

    public ArrayList<shopping_cart_item> getShoppingCart(String account){
        SQL sql;
        ArrayList<shopping_cart_item> shopping_cart_items =new ArrayList<>();
        try {
            sql=new SQL();
            ResultSet rs=sql.getShoppingCart(account);
            while(rs.next()){
                shopping_cart_item temp=new shopping_cart_item(rs.getString("buyerAccount"),
                        rs.getString("sellerAccount"),rs.getString("name"),
                        rs.getInt("buyCount"),rs.getDouble("price"));
                shopping_cart_items.add(temp);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return shopping_cart_items;
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
        SQL sql;
        ArrayList<shopping_cart_item> shopping_cart_items =new ArrayList<>();
        try {
            sql=new SQL();
            if(sql.existShoppingCartItem(item)){
                addSuccess=sql.updateShoppingCart(item);
            }
            else{
                addSuccess=sql.insertShoppingCart(item);
            }
            sql.checkShoppingCartDelete();
            request.setAttribute("addStatus", addSuccess?"true":"false");
            request.getRequestDispatcher("../User/User.jsp").forward(request, response);

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}

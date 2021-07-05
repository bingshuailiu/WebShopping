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

@WebServlet("/AddOrder")
public class AddOrder extends HttpServlet {
    public String tranString(String s){
        byte[] bs=s.getBytes(StandardCharsets.ISO_8859_1);
        s=new String(bs, StandardCharsets.UTF_8);
        return s;
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
         SQL sql;
         boolean insertSuccess=true;
        try {
            sql=new SQL();
            for(shopping_cart_item item:items){
                if(!sql.insertOrder(item)){
                    insertSuccess=false;
                    break;
                }
                sql.deleteUserShoppingCart(item);
                System.out.println("删除购物车物品");
                Item temp=new Item(item.getSellerAccount(),item.getName(),"",item.getBuyCount(),item.getPrice());
                sql.reduceItem(temp);
                System.out.println("删除卖家发布物品");
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        request.setAttribute("Status",insertSuccess?"true":"false");
        request.getRequestDispatcher("../User/shopping_cart.jsp").forward(request, response);

    }
}

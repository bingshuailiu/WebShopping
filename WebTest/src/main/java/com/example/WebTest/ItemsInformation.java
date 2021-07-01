package com.example.WebTest;

import Classes.Item;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet("/ItemsInformation")
public class ItemsInformation extends HttpServlet {

    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        SQL sql;
        ArrayList<Item> items =new ArrayList<>();
        try {
            sql=new SQL();
            ResultSet rs=sql.getRs("items");
            while(rs.next()){
                Item temp=new Item(rs.getString("account"),
                        rs.getString("name"),rs.getString("type")
                ,rs.getInt("count"),rs.getDouble("price"));
                items.add(temp);
            }
            request.setAttribute("items",items);
            for(Item item:items){
                System.out.println(item);
            }
            request.getRequestDispatcher("../User/User.jsp").forward(request, response);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}

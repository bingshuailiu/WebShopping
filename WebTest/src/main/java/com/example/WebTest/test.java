package com.example.WebTest;

import Classes.Item;
import Classes.User;

import java.sql.ResultSet;
import java.sql.SQLException;

public class test {

    public static void main(String [] args) throws SQLException {
        SQL sql =new SQL();
        Item item1=new Item("root","自行车","交通工具",1,1000.0);
        Item item2=new Item("root","火锅底料","食品",2,30.0);
        Item item3=new Item("root","化妆镜","生活用品",1,10.0);
        sql.insertItems(item1);
        sql.insertItems(item2);
        sql.insertItems(item3);
    }
}

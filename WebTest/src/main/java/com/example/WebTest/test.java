package com.example.WebTest;

import Classes.Item;
import Classes.shopping_cart_item;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Random;
public class test {

    public static void main(String [] args) throws SQLException {
        ControlItem controlItem=new ControlItem("111");
        System.out.println(controlItem.getTypeItemCount("数码类"));
        /*for(Item item:items){
            System.out.println(item);
        }*/
    }
}

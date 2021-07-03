package com.example.WebTest;

import Classes.Item;
import Classes.User;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Random;

public class test {

    public static void main(String [] args) throws SQLException {
        Random random=new Random();
        SQL sql =new SQL();
        for(int i=0;i<100;i++){
            String sex=random.nextInt(2)==1?"男":"女";
            String email="123456@qq.com";
            String phone= String.valueOf(random.nextInt(10000)+10000);
            String password= String.valueOf(random.nextInt(100000)+100000);
            String account= "a"+String.valueOf(random.nextInt(10000)+10000);
            User user=new User(sex,email,phone,account,password);
            sql.insertUser(user);
        }
    }
}

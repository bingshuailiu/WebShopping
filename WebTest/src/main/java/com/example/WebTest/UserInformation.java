package com.example.WebTest;

import Classes.User;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserInformation{
    public User getUserInformation(String account){
        SQL sql;
        User user = null;
        try {
            sql=new SQL();
            ResultSet rs=sql.getUser(account);
            while (rs.next()){
                user=new User(rs.getString("sex"),rs.getString("email"),
                        rs.getString("phone"),rs.getString("account"),
                        rs.getString("password"));

            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return user;
    }

}

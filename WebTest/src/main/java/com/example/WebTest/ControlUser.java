package com.example.WebTest;

import Classes.User;
import org.omg.CORBA.PUBLIC_MEMBER;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Queue;

public class ControlUser {
    ArrayList<User> users;
    public ControlUser() throws SQLException {
        users=new ArrayList<>();
        SQL sql=new SQL();
        ResultSet rs=sql.getRs("user");
        while(rs.next()){
            User temp=new User(rs.getString("sex"),
                    rs.getString("email"),rs.getString("phone"),
                    rs.getString("account"),rs.getString("password"));
            users.add(temp);
        }
    }
    public int getUserCount() throws SQLException {
        SQL sql=new SQL();
        return sql.getUserCount();
    }
    public ArrayList<User> getUsers(int pageIndex) throws SQLException {
        ArrayList<User> pageUsers=new ArrayList<>();
        int lIndex=(pageIndex-1)*10;
        int rIndex= Math.min((lIndex + 10), users.size());

        for(int i=lIndex;i<rIndex;i++){
            pageUsers.add(users.get(i));
        }
        return pageUsers;
    }

    public ArrayList<User> getAllUsers(int pageIndex) throws SQLException {
        return users;
    }


}

package com.example.WebTest;


import Classes.Item;
import Classes.User;

import java.sql.*;

public class SQL {
    private Connection connection;
    public SQL() throws SQLException {
        connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/myDB?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC","root","Lbs20010428@");
    }
    public ResultSet getRs(String Table) throws SQLException {
        String s="select * from "+Table;
        Statement stmt=connection.createStatement();
        ResultSet rs;
        rs=stmt.executeQuery(s);
        return rs;
    }

    public boolean existUser(String account) throws SQLException {
        String s="select * from User;";
        Statement stmt=connection.createStatement();
        ResultSet rs;
        rs=stmt.executeQuery(s);
        while(rs.next()){
            if (account.equals(rs.getString("account"))) {
                return true;
            }
        }
        return false;
    }

    public boolean insertUser(User user) throws SQLException {
        String s="insert into user values("+"\""+
                user.getAccount()+"\",\""+user.getPassword()+"\",\""+
                user.getEmail()+"\",\""+user.getPhone()+"\",\""+user.getSex()
                +"\",0);";
        Statement stmt = connection.createStatement();
        stmt.execute(s);
        return true;
    }

    public boolean insertItems(Item item) throws SQLException {
        Statement stmt = connection.createStatement();
        String s="insert into items values(\""+item.getAccount()+"\",\""+
                item.getName()+"\",\""+item.getType()+"\","+item.getCount()+","+item.getPrice()
                +");";
        stmt.execute(s);
        return true;
    }

    public int checkUserDelete() throws SQLException {
        String query= "select * from user;";
        Statement stmt=connection.createStatement();
        ResultSet rs;
        Statement tempStmt=connection.createStatement();
        rs=stmt.executeQuery(query);
        int cnt=0;
        while(rs.next()){
            if(rs.getString("del").equals("1")){
                String s="delete from user" +
                        " where account="+rs.getString("account")+ ";";
                tempStmt.execute(s);
                cnt++;
            }
        }
        return cnt;
    }

}

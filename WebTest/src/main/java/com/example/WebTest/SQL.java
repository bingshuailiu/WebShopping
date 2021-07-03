package com.example.WebTest;


import Classes.Item;
import Classes.User;
import Classes.shopping_cart_item;

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

    public boolean insertShoppingCart(shopping_cart_item item) throws SQLException {
        Statement stmt = connection.createStatement();
        String s="insert into shopping_cart values('"+item.getBuyerAccount()+"','"+
                item.getSellerAccount()+"','"+item.getName()+"',"+item.getBuyCount()+","+item.getPrice()
                +");";
        stmt.execute(s);
        return true;
    }

    public boolean reduceShoppingCart(shopping_cart_item item) throws SQLException {
        String s="update shopping_cart" +
                " set buyCount=" + item.getBuyCount() +
                " where buyerAccount='" + item.getBuyerAccount()+
                "' and sellerAccount='"+ item.getSellerAccount()+
                "' and name='" + item.getName() +
                "' and price="+ item.getPrice()+";";
        Statement stmt=connection.createStatement();
        stmt.execute(s);
        return true;
    }

    public boolean updateShoppingCart(shopping_cart_item item) throws SQLException {
        String s="update shopping_cart" +
                " set buyCount=buyCount+" + item.getBuyCount() +
                " where buyerAccount='" + item.getBuyerAccount()+
                "' and sellerAccount='"+ item.getSellerAccount()+
                "' and name='" + item.getName() +
                "' and price="+ item.getPrice()+";";
        Statement stmt=connection.createStatement();
        stmt.execute(s);
        return true;
    }

    public boolean deleteUserItems(String account) throws SQLException{
        String s="delete from items" +
                " where account='" + account+
                "';";
        Statement stmt=connection.createStatement();
        stmt.execute(s);
        return true;
    }

    public boolean deleteUser(String account) throws SQLException{
        String s="delete from user" +
                " where account='" + account+
                "';";
        Statement stmt=connection.createStatement();
        stmt.execute(s);
        return true;
    }

    public boolean deleteUserShoppingCart(String account) throws SQLException{
        String s="delete from shopping_cart" +
                " where buyerAccount='" + account+
                "' or sellerAccount='"+account+
                "';";
        Statement stmt=connection.createStatement();
        stmt.execute(s);
        return true;
    }

    public boolean deleteShoppingCart(shopping_cart_item item) throws SQLException {
        String s="delete from shopping_cart" +
                " where buyerAccount='" + item.getBuyerAccount()+
                "' and sellerAccount='"+ item.getSellerAccount()+
                "' and name='" + item.getName() +
                "' and price=" + item.getPrice()+";";
        Statement stmt=connection.createStatement();
        stmt.execute(s);
        return true;
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

    public boolean updateUser(User user)throws SQLException {
        String s="update user" +
                " set phone='"+user.getPhone()+
                "', sex='"+user.getSex()+
                "', email='"+user.getEmail()+
                "', password='" + user.getPassword()+
                "' where account='" +user.getAccount()+
                "';";
        Statement stmt = connection.createStatement();
        stmt.execute(s);
        return true;
    }

    public boolean insertUser(User user) throws SQLException {
        String s="insert into user values("+"'"+
                user.getAccount()+"','"+user.getPassword()+"','"+
                user.getEmail()+"','"+user.getPhone()+"','"+user.getSex()
                +"',0);";
        Statement stmt = connection.createStatement();
        stmt.execute(s);
        return true;
    }

    public boolean existShoppingCartItem(shopping_cart_item item) throws SQLException {
        String s="select * from shopping_cart" +
                " where buyerAccount='"+item.getBuyerAccount()+
                "' and sellerAccount='"+item.getSellerAccount() +
                "' and name='"+item.getName()+"'" +
                " and price="+item.getPrice()+";";
        Statement stmt=connection.createStatement();
        ResultSet rs;
        rs=stmt.executeQuery(s);
        rs.last();
        int length=rs.getRow();
        return length != 0;
    }

    public boolean existItem(String account,String name,double price) throws SQLException {
        String s="select * from items" +
                " where account='"+account +
                "' and name='"+name+"'" +
                " and price="+price+";";
        Statement stmt=connection.createStatement();
        ResultSet rs;
        rs=stmt.executeQuery(s);
        rs.last();
        int length=rs.getRow();
        return length != 0;
    }

    public boolean retrieveItem(Item item) throws SQLException{
        Statement stmt = connection.createStatement();
        String s="update items" +
                " set count="+item.getCount()+
                " where account='"+item.getAccount()+"'" +
                " and name='"+item.getName()+"'" +
                " and price="+ item.getPrice()+";";
        stmt.execute(s);
        return true;
    }

    public boolean updateItem(Item item)throws SQLException{
        Statement stmt = connection.createStatement();
        String s="update items" +
                " set count=count+"+item.getCount()+
                " where account='"+item.getAccount()+"'" +
                " and name='"+item.getName()+"'" +
                " and price="+ item.getPrice()+";";
        stmt.execute(s);
        return true;
    }

    public boolean insertItems(Item item) throws SQLException {
        Statement stmt = connection.createStatement();
        String s="insert into items values('"+item.getAccount()+"','"+
                item.getName()+"','"+item.getType()+"',"+item.getCount()+","+item.getPrice()
                +");";
        stmt.execute(s);
        return true;
    }

    public ResultSet getShoppingCart(String account) throws SQLException {
        String s="select * from shopping_cart" +
                " where buyerAccount='"+account+"';";
        Statement stmt=connection.createStatement();
        ResultSet rs;
        rs=stmt.executeQuery(s);
        return rs;
    }

    public int getUserCount()throws SQLException{
        String s="select * from user;";
        Statement stmt=connection.createStatement();
        ResultSet rs;
        rs=stmt.executeQuery(s);
        rs.last();
        return rs.getRow();
    }

    public ResultSet getUser(String account)throws SQLException{
        String s="select * from user" +
                " where account='"+account+"';";
        Statement stmt=connection.createStatement();
        ResultSet rs;
        rs=stmt.executeQuery(s);
        return rs;
    }
    public ResultSet getItems(String account) throws SQLException {
        String s="select * from items" +
                " where account='"+account+"';";
        Statement stmt=connection.createStatement();
        ResultSet rs;
        rs=stmt.executeQuery(s);
        return rs;
    }

    public boolean deleteItem(Item item)throws SQLException{
        Statement stmt = connection.createStatement();
        String s="delete from items" +
                " where account='"+item.getAccount()+
                "' and name='"+item.getName()+
                "' and price="+ item.getPrice()+";";
        stmt.execute(s);
        return true;
    }

    public int checkItemDelete() throws SQLException {
        String query= "select * from items;";
        Statement stmt=connection.createStatement();
        ResultSet rs;
        Statement tempStmt=connection.createStatement();
        rs=stmt.executeQuery(query);
        int cnt=0;
        while(rs.next()){
            if(rs.getString("count").equals("0")){
                String s="delete from items" +
                        " where account='"+rs.getString("account")+
                        "' and name='"+rs.getString("name")+
                        "' and price="+rs.getString("price")+";";
                tempStmt.execute(s);
                cnt++;
            }
        }
        return cnt;
    }

    public int checkShoppingCartDelete() throws SQLException {
        String query= "select * from shopping_cart;";
        Statement stmt=connection.createStatement();
        ResultSet rs;
        Statement tempStmt=connection.createStatement();
        rs=stmt.executeQuery(query);
        int cnt=0;
        while(rs.next()){
            if(rs.getString("buyCount").equals("0")){
                String s="delete from shopping_cart" +
                        " where buyerAccount='"+rs.getString("buyerAccount")+
                        "' and sellerAccount='"+rs.getString("sellerAccount")+
                        "' and name='"+rs.getString("name")+
                        "' and price="+rs.getString("price")+";";
                tempStmt.execute(s);
                cnt++;
            }
        }
        return cnt;
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
                        " where account='"+rs.getString("account")+ "';";
                tempStmt.execute(s);
                cnt++;
            }
        }
        return cnt;
    }

}

package com.example.WebTest;

import Classes.Item;
import Classes.User;

import java.nio.charset.StandardCharsets;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ControlItem {
    public String tranString(String s){
        byte[] bs=s.getBytes(StandardCharsets.ISO_8859_1);
        s=new String(bs, StandardCharsets.UTF_8);
        return s;
    }
    private ArrayList<Item> items;
    private String account;
    public ControlItem(String account) throws SQLException{
        this.account=account;
        /*System.out.println("Username:"+account);*/
        items=new ArrayList<>();
        SQL sql=new SQL();
        ResultSet rs=sql.getRs("items");
        while(rs.next()){
            Item temp=new Item(rs.getString("account"),
                    rs.getString("name"),rs.getString("type"),
                    rs.getInt("count"),rs.getDouble("price"),
                    rs.getString("img"));
            if(temp.getAccount().equals(account)){
                /*System.out.println(rs.getRow()+temp.getAccount());*/
                continue;
            }
            items.add(temp);
        }
    }
    public int getItemCount() throws SQLException {
        return items.size();
    }
    public int getItemCount(String keyword) throws SQLException {
        return getRelevantItems(keyword).size();
    }
    public int getTypeItemCount(String type) throws SQLException{
        return getRelevantTypeItems(type).size();
    }
    public ArrayList<Item> getItems(int pageIndex) throws SQLException {
        ArrayList<Item> pageItems=new ArrayList<>();
        int lIndex=(pageIndex-1)*8;
        int rIndex= Math.min((lIndex + 8), items.size());

        for(int i=lIndex;i<rIndex;i++){
            pageItems.add(items.get(i));
        }
        return pageItems;
    }

    public ArrayList<Item> getTypeItems(int pageIndex,String type) throws SQLException {
        ArrayList<Item> releItems= getRelevantTypeItems(type);
        ArrayList<Item> pageItems= new ArrayList<>();
        int lIndex=(pageIndex-1)*8;
        int rIndex= Math.min((lIndex + 8), releItems.size());

        for(int i=lIndex;i<rIndex;i++){
            pageItems.add(releItems.get(i));
        }
        return pageItems;
    }

    public ArrayList<Item> getItems(int pageIndex,String keyword) throws SQLException {
        ArrayList<Item> releItems= getRelevantItems(keyword);
        ArrayList<Item> pageItems= new ArrayList<>();
        int lIndex=(pageIndex-1)*8;
        int rIndex= Math.min((lIndex + 8), releItems.size());

        for(int i=lIndex;i<rIndex;i++){
            pageItems.add(releItems.get(i));
        }
        return pageItems;
    }
    public ArrayList<Item> getRelevantItems(String keyword){
        keyword=tranString(keyword);
        System.out.println(keyword);
        ArrayList<Item> releItems=new ArrayList<>();
        for(Item item:items){
            if(item.getName().contains(keyword)){
                releItems.add(item);
            }
        }
        return releItems;
    }
    public ArrayList<Item> getRelevantTypeItems(String type){
        type=tranString(type);
        System.out.println(type);
        ArrayList<Item> releItems=new ArrayList<>();
        for(Item item:items){
            if(item.getType().equals(type)){
                releItems.add(item);
            }
        }
        return releItems;
    }

}

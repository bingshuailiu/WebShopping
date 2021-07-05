package Classes;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Order {
    private String buyerAccount;
    private String sellerAccount;
    private String date;
    private String name;
    private double price;
    private int buyCount;

    @Override
    public String toString() {
        return "Order{" +
                "buyerAccount='" + buyerAccount + '\'' +
                ", sellerAccount='" + sellerAccount + '\'' +
                ", date='" + date + '\'' +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", buyCount=" + buyCount +
                '}';
    }

    public Order(String buyerAccount, String sellerAccount, String date, String name, double price, int buyCount) {
        this.buyerAccount = buyerAccount;
        this.sellerAccount = sellerAccount;
        this.date = date;
        this.name = name;
        this.price = price;
        this.buyCount = buyCount;
    }


    public String getBuyerAccount() {
        return buyerAccount;
    }

    public void setBuyerAccount(String buyerAccount) {
        this.buyerAccount = buyerAccount;
    }

    public String getSellerAccount() {
        return sellerAccount;
    }

    public void setSellerAccount(String sellerAccount) {
        this.sellerAccount = sellerAccount;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getBuyCount() {
        return buyCount;
    }

    public void setBuyCount(int buyCount) {
        this.buyCount = buyCount;
    }
}


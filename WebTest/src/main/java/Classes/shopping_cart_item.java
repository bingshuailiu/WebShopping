package Classes;

public class shopping_cart_item {
    private String buyerAccount;
    private String sellerAccount;
    private String name;
    private int buyCount;
    private double price;

    public double getPrice() {
        return price;
    }

    @Override
    public String toString() {
        return "shopping_cart_item{" +
                "buyerAccount='" + buyerAccount + '\'' +
                ", sellerAccount='" + sellerAccount + '\'' +
                ", name='" + name + '\'' +
                ", buyCount=" + buyCount +
                ", price=" + price +
                '}';
    }

    public shopping_cart_item(String buyerAccount, String sellerAccount, String name, int buyCount, double price) {
        this.buyerAccount = buyerAccount;
        this.sellerAccount = sellerAccount;
        this.name = name;
        this.buyCount = buyCount;
        this.price = price;
    }

    public void setPrice(double price) {
        this.price = price;
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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getBuyCount() {
        return buyCount;
    }

    public void setBuyCount(int buyCount) {
        this.buyCount = buyCount;
    }
}

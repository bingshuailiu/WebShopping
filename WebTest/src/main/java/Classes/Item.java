package Classes;

public class Item {
    private String account;
    private String name;
    private String type;
    private int count;
    private double price;
    private String img;

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    @Override
    public String toString() {
        return "Item{" +
                "account='" + account + '\'' +
                ", name='" + name + '\'' +
                ", type='" + type + '\'' +
                ", count=" + count +
                ", price=" + price +
                '}';
    }

    public Item(String account, String name, String type, int count, double price,String img) {
        this.account = account;
        this.name = name;
        this.type = type;
        this.count = count;
        this.price = price;
        this.img=img;
    }

    public Item(String account, String name, String type, int count, double price) {
        this.account = account;
        this.name = name;
        this.type = type;
        this.count = count;
        this.price = price;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}

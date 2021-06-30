package Classes;

public class User {
    private String sex;
    private String email;
    private String phone;
    private String account;
    private String password;

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public User(String sex, String email, String phone, String account, String password) {
        this.sex = sex;
        this.email = email;
        this.phone = phone;
        this.account = account;
        this.password = password;
    }
}

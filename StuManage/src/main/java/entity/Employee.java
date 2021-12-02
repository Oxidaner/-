package entity;

/**
 * @Author: zhangshibin
 * @Date: 2021/12/2 - 12 - 02 - 13:18
 * @Description: entity
 */
public class Employee {
    private String e_id;
    private String name;
    private String password;
    private String account;
    private String department;


    public Employee(String e_id, String name, String password, String account, String department) {
        this.e_id = e_id;
        this.name = name;
        this.password = password;
        this.account = account;
        this.department = department;
    }

    public String getId() {
        return e_id;
    }

    public void setId(String e_id) {
        this.e_id = e_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }
}

package db;

import org.junit.jupiter.api.Test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;




public class DbConnect {

    public Connection conn = null;

    public PreparedStatement ps = null;

    public javax.resource.cci.ResultSet rs = null;


    public static Connection getConnection() {

        Connection con = null;

        PreparedStatement st = null;

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            System.out.println("加载驱动成功！");

            con = DriverManager.getConnection("jdbc:sqlserver://127.0.0.1:1433;databaseName=摩托车销售管理系统", "sa", "123456");
            System.out.println("连接数据库成功！");

        } catch (SQLException | ClassNotFoundException e) {

            e.printStackTrace();

        }
        return con;
    }

    @Test
    public void Test() {
        getConnection();
    }

    public void CloseAll(Connection con, PreparedStatement ps, javax.resource.cci.ResultSet rs) {
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {

                e.printStackTrace();
            }
        }
        if (ps != null) {
            try {
                ps.close();
            } catch (SQLException e) {

                e.printStackTrace();
            }

        }
        if (con != null) {
            try {
                con.close();
            } catch (SQLException e) {

                e.printStackTrace();
            }

        }
    }

}
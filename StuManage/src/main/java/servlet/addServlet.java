package servlet;

import db.DbConnect;
import entity.Employee;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @ClassName: ${NAME}
 * @Author: Leo
 * @Description:
 * @Date: 2019/3/28 20:24
 */
public class addServlet extends javax.servlet.http.HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String e_id = request.getParameter("id");
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String account = request.getParameter("account");
        String department = request.getParameter("department");
        Employee employee = new Employee(e_id ,name, password, account, department);
        Connection connection = DbConnect.getConnection();
        String sql = "INSERT INTO Employee (E_Id, E_name, E_password,E_account,E_department) values(?,?,?,?,?)";
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        HttpSession httpSession = request.getSession();
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, employee.getId());
            preparedStatement.setString(2, employee.getName());
            preparedStatement.setString(3, employee.getPassword());
            preparedStatement.setString(4, employee.getAccount());
            preparedStatement.setString(5, employee.getDepartment());
            int i = preparedStatement.executeUpdate();
            if (i == 1) {
                String selectSql = "SELECT * FROM Employee";
                preparedStatement = connection.prepareStatement(selectSql);
                resultSet = preparedStatement.executeQuery();
                httpSession.setMaxInactiveInterval(7200);
                httpSession.setAttribute("resultSet", resultSet);
                response.sendRedirect("loginAction.jsp");
            } else {
                httpSession.setAttribute("message", "添加失败！");
                response.sendRedirect("error.jsp");
            }

        } catch (SQLException e) {
            e.printStackTrace();
            httpSession.setAttribute("message", "添加失败！");
            response.sendRedirect("error.jsp");
        }
    }
}

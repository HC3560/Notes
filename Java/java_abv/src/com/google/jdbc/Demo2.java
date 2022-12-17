package com.google.jdbc;

import java.sql.*;

// Demo2将Demo1的部分代码整理和规范，下一步Demo3中封装JDBCUtils是必要的
public class Demo2 {
    public static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    public static final String URL = "jdbc:mysql://localhost:3306/student";
    public static final String USER = "root";
    public static final String PASSWORD = "123456";

    // 提前创建需要用到的静态对象
    public static Connection connection;
    public static Statement statement;
    public static ResultSet resultSet;

    public static void main(String[] args) {
        // 用try&catch包裹可能出异常的部分
        // 当出现sql语句写错等导致异常的情况时，及时抛出异常，停止执行程序
        // 如果没有try&catch，一旦出现代码出错，程序还一直往下执行的情况，是非常可怕的
        try {
            // 1.加载驱动程序
            Class.forName(DRIVER);

            // 2.获取数据库的连接
            connection = DriverManager.getConnection(URL, USER, PASSWORD);

            // 3.获取数据库操作对象
            statement = connection.createStatement();

            // 4.对数据库的操作对象进行需要的操作
            resultSet = statement.executeQuery("SELECT * FROM info");
            while (resultSet.next()) {
                int id = resultSet.getInt(1);
                String name = resultSet.getString(2);
                int age = resultSet.getInt(3);

                System.out.println("[" + id + ", " + name + ", " + age + "]");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                // 最后打开的最先关闭
                resultSet.close();
                statement.close();
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}

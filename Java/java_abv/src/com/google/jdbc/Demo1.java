package com.google.jdbc;

import java.sql.*;

/*JDBC的由来以及定义
JDBC是什么？
Java数据库连接(Java Database Connectivity)简称JDBC
JDBC是Java操作各数据库的一种规范
是Java语言中用来规范客户端程序如何来访问数据库的应用程序接口
提供了诸如查询和更新数据库中数据的方法。JDBC是面向关系型数据库的

打个比方？
假设Java公司是布料厂，那么各SQL数据库公司就是服装设计厂
Java公司规定JDBC接口，允许去操作各数据库，相当于提供原材料
各SQL公司去实现接口，相当于拿原材料设计出自己的服装
 */

// Demo1的代码不规范，但初学时候容易理解，Demo2中将规范部分代码
public class Demo1 {
    public static final String URL = "jdbc:mysql://localhost:3306/student";
    public static final String USER = "root";
    public static final String PASSWORD = "123456";

    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        // 1.加载驱动程序 -> 给原料厂商打电话，我是mysql公司的
        // 在mysql-connector-java 5以后的版本中(不包括5) 使用的都是com.mysql.cj.jdbc.Driver
//        Class.forName("com.mysql.jdbc.Driver");
        Class.forName("com.mysql.cj.jdbc.Driver");

        // 2.获得数据库的连接 -> 告诉物流应该把原料送到哪个地方
        Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);

        // 3.获取数据库操作对象 -> 确定原料已经送到，然后卸货，获得货物
        Statement statement = connection.createStatement();

        // 4.对数据库操作对象进行需要的操作 -> 对货物进行需要的操作
        // .executeQuery("sql")方法用来执行查询
        // .executeUpdate("sql")方法用来执行增删改
        ResultSet resultSet = statement.executeQuery("SELECT * FROM info");
        // .next()方法用于判断下一个元素是否存在
        while (resultSet.next()) {
            int id = resultSet.getInt(1);
            String name = resultSet.getString(2);
            int age = resultSet.getInt(3);

            System.out.println("[" + id + ", " + name + ", " + age + "]");
        }

        // 5.完成所有操作后，先关闭仓库，然后关闭数据库连接（后打开的先关闭）
        statement.close();
        connection.close();
    }
}

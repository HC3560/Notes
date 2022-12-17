package com.google.jdbc.demo4;

import com.google.jdbc.demo4.util.JDBCUtils;
import org.junit.Test;

import java.sql.*;
import java.util.Scanner;

// Demo4中加入了PreparedStatement和问号占位符，Demo5做了模块化与封装，更为规范与易用
// 让用户不需要自己编写sql语句，对数据库的CRUD更为方便
// PreparedStatement是预编译的，可以简化执行查询或者更新数据表数据
// 对于批量处理可以大大提高效率，也叫JDBC存储过程

// 可以防注入

// 使用PreparedStatement是Statement的子接口，可以传入带占位符的SQL语句
// 提供了补充占位符变量的方法，preparedStatement()要求写入sql语句
public class Demo4Test {
    // 创建对象，方便后面使用
    public static Connection connection;
    public static PreparedStatement preparedStatement;
    public static ResultSet resultSet;
    // 注意scanner对象的创建方法，提前创建scanner对象，方便finally中关闭
    public static Scanner scanner = new Scanner(System.in);

    // 插入数据
    @Test
    public void insert() {
        try {
            // 1.获取数据库连接
            connection = JDBCUtils.getConnection();

            // 2.用户输入信息，使用带占位符的sql语句
            String sql = "INSERT INTO info(name,age) values(?,?)";
            System.out.println("先输入姓名，再输入年龄，用回车隔开：");
            String name = scanner.next();
            int age = scanner.nextInt();

            // 3.preparedStatement传入带占位符的sql语句，set方法设置每一个位置的值
            preparedStatement = connection.prepareStatement(sql);
            // parameterIndex是指传入问号的下标
            preparedStatement.setString(1, name);
            preparedStatement.setInt(2, age);

            // 4.并执行更新操作，此时.executeUpdate()方法中空参即可
            int res = preparedStatement.executeUpdate();

            // 5.判断数据是否插入成功
            if (res > 0) {
                System.out.println("insert success!");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                // 5.调用重载方法，关闭操作对象与数据库连接
                JDBCUtils.close(connection, preparedStatement);
                // 6.关闭scanner
                scanner.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    // 通过id删除数据
    @Test
    public void deleteById() {
        try {
            connection = JDBCUtils.getConnection();

            String sql = "DELETE FROM info WHERE id=?";
            System.out.println("输入想要删除数据的id：");
            int id = scanner.nextInt();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);

            int res = preparedStatement.executeUpdate();
            if (res > 0) {
                System.out.println("delete success!");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                JDBCUtils.close(connection, preparedStatement);
                scanner.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    // 通过id修改数据
    @Test
    public void updateById() {
        try {
            connection = JDBCUtils.getConnection();

            String sql = "UPDATE info SET name=?,age=? WHERE id=?";
            System.out.println("先后输入想要修改为的姓名，年龄，和要修改数据的id，用回车隔开：");
            String name = scanner.next();
            int age = scanner.nextInt();
            int id = scanner.nextInt();

            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, name);
            preparedStatement.setInt(2, age);
            preparedStatement.setInt(3, id);

            int res = preparedStatement.executeUpdate();
            if (res > 0) {
                System.out.println("update success");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                JDBCUtils.close(connection, preparedStatement);
                scanner.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    // 通过id查找数据
    @Test
    public void selectById() {
        try {
            connection = JDBCUtils.getConnection();

            String sql = "SELECT * FROM info WHERE id=?";
            System.out.println("输入想要查询数据的id：");
            int id = scanner.nextInt();

            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);

            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                System.out.println("[" + resultSet.getInt(1)
                        + "," + resultSet.getString(2)
                        + "," + resultSet.getInt(3)
                        + "]");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                JDBCUtils.close(connection, preparedStatement, resultSet);
                scanner.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

}

package com.google.jdbc.demo3;

import com.google.jdbc.demo3.util.JDBCUtils;
import org.junit.Test;

import java.sql.*;

// Demo3封装了JDBCUtils，Demo4中将加入PreparedStatement和问号占位符
// 让用户不需要自己编写sql语句，对数据库的CRUD更为方便
public class Demo3Test {
    // 创建对象，方便后面使用
    public static Connection connection;
    public static Statement statement;
    public static ResultSet resultSet;

    // .executeUpdate()，实现对数据的增删改
    // 插入数据
    @Test
    public void insert() {
        try {
            // 1.获得数据库连接与操作对象
            connection = JDBCUtils.getConnection();
            statement = connection.createStatement();

            // 2.插入一条数据
            String sql = "INSERT INTO info(name,age) values('Mike',31)";
            // .executeUpdate()返回一个int值，为受影响的行数（即更新计数）
            // 对于不操作行的语句，executeUpdate的返回值总为零
            // 则当此操作行的语句执行成功时，返回的int值大于0
            int res = statement.executeUpdate(sql);

            // 3.判断是否插入成功
            if (res > 0) {
                System.out.println("insert success!");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // 4.调用重载方法，关闭操作对象与数据库连接
            try {
                JDBCUtils.close(connection, statement);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    // 删除数据
    @Test
    public void delete() {
        try {
            // 1.获得数据库连接与操作对象
            connection = JDBCUtils.getConnection();
            statement = connection.createStatement();

            // 2.删除一条数据
            String sql = "DELETE FROM info WHERE id=6";
            int res = statement.executeUpdate(sql);

            // 3.判断是否删除成功
            if (res > 0) {
                System.out.println("delete success!");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // 4.调用重载方法，关闭操作对象与数据库连接
            try {
                JDBCUtils.close(connection, statement);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    }

    // 更新数据
    @Test
    public void update() {
        try {
            // 1.获得数据库连接与操作对象
            connection = JDBCUtils.getConnection();
            statement = connection.createStatement();

            // 2.更新一条数据
            String sql = "UPDATE info SET name='Niko' WHERE id=5";
            int res = statement.executeUpdate(sql);

            // 3.判断是否更新成功
            if (res > 0) {
                System.out.println("update success!");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // 4.调用重载方法，关闭操作对象与数据库连接
            try {
                JDBCUtils.close(connection, statement);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    // .executeQuery()查询数据
    @Test
    public void select() {
        try {
            connection = JDBCUtils.getConnection();
            statement = connection.createStatement();
            String sql = "SELECT * FROM info";
            resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int id = resultSet.getInt(1);
                String name = resultSet.getString(2);
                int age = resultSet.getInt(3);
                System.out.println("[" + id + ", " + name + ", " + age + "]");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                JDBCUtils.close(connection, statement, resultSet);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}

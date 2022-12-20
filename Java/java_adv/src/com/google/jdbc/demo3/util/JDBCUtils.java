package com.google.jdbc.demo3.util;

import java.io.InputStream;
import java.sql.*;
import java.util.Properties;

// 封装JDBCUtils
public class JDBCUtils {
    // 驱动程序通过SPI自动注册，通常不需要手动加载驱动程序类，可以略去driver
//    private static String driver;
    private static String url;
    private static String user;
    private static String password;


    // 通过静态代码块，来预先读取配置文件的配置项，做预处理
    static {
        try {
//            // 以当前类出发，获取类加载器，这个方法比较难，后面讲反射等的高级部分会学到
//            JDBCUtils.class.getClassLoader();
            // 1.用输入流来读取配置文件
            // 注意此处的配置文件路径，当不在src目录下的时候不能只写文件名，会出现异常
            // 不在src目录下时，需要写出配置文件的路径
            InputStream inputStream = ClassLoader.getSystemResourceAsStream("com/google/jdbc/demo3/db.properties");

            // 2.将输入流对象加载入new出来的配置项对象
            Properties properties = new Properties();
            properties.load(inputStream);

            // 3.读取配置项
            // 驱动程序通过SPI自动注册，通常不需要手动加载驱动程序类，可以略去driver
//            driver = properties.getProperty("driver");
            url = properties.getProperty("url");
            user = properties.getProperty("user");
            password = properties.getProperty("password");

//            System.out.println("test");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // 4.测试配置项是否加载成功
    // 测试原理是当main程序调用一个类的方法之前，
    // 会默认先调用这个类当中的静态代码块进行预处理，
    // 当加载配置项出现异常时，调用此类当中的方法也会报异常
    public static void init() {
        System.out.println("配置项加载成功！");
    }

    // 5.创建单例，获取配置项
    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(url, user, password);
    }

    // 6.释放，关闭结果集，关闭仓库，关闭数据库连接
    public static void close(Connection connection, Statement statement, ResultSet resultSet) throws SQLException {
        if (resultSet != null) {
            resultSet.close();
        }
        if (statement != null) {
            statement.close();
        }
        if (connection != null) {
            connection.close();
        }
    }

    // 方法的重载，有时候不用到查询就不会有结果集，也就不需要关闭
    public static void close(Connection connection, Statement statement) throws SQLException {
        if (statement != null) {
            statement.close();
        }
        if (connection != null) {
            connection.close();
        }
    }

//    // 为driver写一个Getter
//    // 但驱动程序通过SPI自动注册，通常不需要手动加载驱动程序类，可以略去
//    public static String getDriver() {
//        return driver;
//    }
}

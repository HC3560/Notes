package com.google.jdbc.demo5.service;


import com.google.jdbc.demo5.modle.Student;
import com.google.jdbc.demo5.util.JDBCUtils;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.Scanner;

public class StudentService {
    public static Connection connection;
    public static PreparedStatement preparedStatement;
    public static ResultSet resultSet;
    public static Scanner scanner = new Scanner(System.in);

    public static void init() {
        System.out.println("欢迎使用学生管理系统！");
        try {
            functionService();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void functionService() throws IOException {
        System.out.println("请选择一种模式：\n" +
                "1.增加数据\n" +
                "2.删除数据\n" +
                "3.修改数据\n" +
                "4.查询数据\n" +
                "5.退出系统");
        switch (scanner.nextInt()) {
            case 1:
                System.out.println("先后输入姓名与年龄，用回车隔开：");
                if (insert(scanner.next(), scanner.nextInt())) {
                    System.out.println("插入数据成功！");
                }
                System.out.println("输入回车继续，或输入其他任意内容并回车后退出......");
                if (System.in.read()==10){
                    functionService();
                }
                break;
            case 2:
                System.out.println("输入想要删除数据的id：");
                if (deleteById(scanner.nextInt())) {
                    System.out.println("删除数据成功！");
                }
                System.out.println("输入回车继续，或输入其他任意内容并回车后退出......");
                if (System.in.read()==10){
                    functionService();
                }
                break;
            case 3:
                update();
                break;
            case 4:
                select();
                break;
            case 5:
                scanner.close();
                System.exit(0);
                break;
            default:
                System.out.println("此模式不存在！");
                functionService();
                break;
        }
    }

    public static void update() throws IOException {
        System.out.println("请选择一种模式：\n" +
                "1.同时修改数据的姓名与年龄\n" +
                "2.单独修改数据的姓名\n" +
                "3.单独修改数据的年龄\n" +
                "4.退回到上一级\n" +
                "5.退出系统");
        switch (scanner.nextInt()) {
            case 1:
                System.out.println("先后输入想要修改数据的id，想要修改为的姓名，年龄，用回车隔开：");
                if (updateAllById(scanner.nextInt(), scanner.next(), scanner.nextInt())) {
                    System.out.println("修改数据成功！");
                }
                System.out.println("输入回车继续，或输入其他任意内容并回车后退出......");
                if (System.in.read()==10){
                    update();
                }
                break;
            case 2:
                System.out.println("先后输入想要修改数据的id，想要修改为的姓名，用回车隔开：");
                if (updateNameById(scanner.nextInt(), scanner.next())) {
                    System.out.println("修改数据成功！");
                }
                System.out.println("输入回车继续，或输入其他任意内容并回车后退出......");
                if (System.in.read()==10){
                    update();
                }
                break;
            case 3:
                System.out.println("先后输入想要修改数据的id，想要修改为的年龄，用回车隔开：");
                if (updateAgeById(scanner.nextInt(), scanner.nextInt())) {
                    System.out.println("修改数据成功！");
                }
                System.out.println("输入回车继续，或输入其他任意内容并回车后退出......");
                if (System.in.read()==10){
                    update();
                }
                break;
            case 4:
                functionService();
                break;
            case 5:
                scanner.close();
                System.exit(0);
                break;
            default:
                System.out.println("此模式不存在！");
                update();
                break;
        }
    }

    public static void select() throws IOException {
        System.out.println("请选择一种模式：\n" +
                "1.查询所有数据\n" +
                "2.按id查询数据\n" +
                "3.返回上一级\n" +
                "4.退出系统");
        switch (scanner.nextInt()) {
            case 1:
                System.out.println(selectAll());
                System.out.println("输入回车继续，或输入其他任意内容并回车后退出......");
                if (System.in.read()==10){
                    select();
                }
                break;
            case 2:
                System.out.println("输入想要查询数据的id：");
                System.out.println(selectById(scanner.nextInt()));
                System.out.println("输入回车继续，或输入其他任意内容并回车后退出......");
                if (System.in.read()==10){
                    select();
                }
                break;
            case 3:
                functionService();
                break;
            case 4:
                scanner.close();
                System.exit(0);
                break;
            default:
                System.out.println("此模式不存在！");
                select();
                break;
        }
    }


    public static boolean insert(String name, int age) {
        try {
            connection = JDBCUtils.getConnection();
            String sql = "INSERT INTO info(name,age) values(?,?)";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, name);
            preparedStatement.setInt(2, age);
            int res = preparedStatement.executeUpdate();
            if (res > 0) {
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                JDBCUtils.close(connection, preparedStatement);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    public static boolean deleteById(int id) {
        try {
            connection = JDBCUtils.getConnection();
            String sql = "DELETE FROM info WHERE id=?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            int res = preparedStatement.executeUpdate();
            if (res > 0) {
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                JDBCUtils.close(connection, preparedStatement);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    public static boolean updateAllById(int id, String name, int age) {
        try {
            connection = JDBCUtils.getConnection();
            String sql = "UPDATE info SET name=?,age=? WHERE id=?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, name);
            preparedStatement.setInt(2, age);
            preparedStatement.setInt(3, id);
            int res = preparedStatement.executeUpdate();
            if (res > 0) {
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                JDBCUtils.close(connection, preparedStatement);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    public static boolean updateNameById(int id, String name) {
        try {
            connection = JDBCUtils.getConnection();
            String sql = "UPDATE info SET name=? WHERE id=?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, name);
            preparedStatement.setInt(2, id);
            int res = preparedStatement.executeUpdate();
            if (res > 0) {
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                JDBCUtils.close(connection, preparedStatement);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    public static boolean updateAgeById(int id, int age) {
        try {
            connection = JDBCUtils.getConnection();
            String sql = "UPDATE info SET age=? WHERE id=?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, age);
            preparedStatement.setInt(2, id);
            int res = preparedStatement.executeUpdate();
            if (res > 0) {
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                JDBCUtils.close(connection, preparedStatement);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    public static ArrayList<Student> selectAll() {
        // 创建一个类型为Student的arrayList，实现更方便的输出
        ArrayList<Student> arrayList = new ArrayList<>();
        try {
            connection = JDBCUtils.getConnection();
            String sql = "SELECT * FROM info";
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                arrayList.add(new Student(resultSet.getInt(1), resultSet.getString(2), resultSet.getInt(3)));
            }
            return arrayList;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                JDBCUtils.close(connection, preparedStatement, resultSet);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return arrayList;
    }

    public static ArrayList<Student> selectById(int id) {
        ArrayList<Student> arrayList = new ArrayList<>();
        try {
            connection = JDBCUtils.getConnection();
            String sql = "SELECT * FROM info WHERE id=?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                arrayList.add(new Student(resultSet.getInt(1), resultSet.getString(2), resultSet.getInt(3)));
            }
            return arrayList;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                JDBCUtils.close(connection, preparedStatement, resultSet);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return arrayList;
    }

}

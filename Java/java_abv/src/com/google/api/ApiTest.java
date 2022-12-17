package com.google.api;

import org.junit.Test;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Random;
import java.util.Scanner;
import java.util.concurrent.ThreadLocalRandom;

import static java.lang.Math.PI;

// 一些基础API使用的练习
public class ApiTest {

    // Scanner 接收键盘中输入的数据
    @Test
    public void scanNext() {
        Scanner scan = new Scanner(System.in);
        // next方式接收字符串
        System.out.println("next方式接收：");
        // 判断是否还有输入
        if (scan.hasNext()) {
            String str = scan.next();
            System.out.println("输入的数据为：" + str);
        }
        scan.close();
    }

    // 以上用next方式接收数据不能接收带空格的整行字符串
    // 如输入“good boy”时，输出只有“good”
    // 一整行的数据可以使用nextLine方式读入，nextLine方式读入时会自动输入回车
    @Test
    public void scanNextLine() {
        Scanner scan = new Scanner(System.in);
        // next方式接收字符串
        System.out.println("nextLine方式接收：");
        // 判断是否还有输入
        if (scan.hasNext()) {
            String str = scan.nextLine();
            System.out.println("输入的数据为：" + str);
        }
        scan.close();
    }

    // Number包装类，使用面向对象的思想重新定义了数据类型，将数据转化为一个对象
    @Test
    public void number() {
        // 这些对象全部继承Number类，可以通过“.”来使用方法，这种方式称为“装箱”
        // 当把变量当作普通的变量来使用的时候，编译器也会进行“拆箱”操作
        // 所有的包装类都是抽象类Number的子类
        Integer x = 5;  // 将x进行装箱，此时x为一个对象，可以通过“.”的方式来使用方法
        x = x + 5;  // x拆箱，拿出来当作内置类型来用
        System.out.println(x);
    }

    // Math类是一个工具类，包含了用于执行基本数学运算的属性和方法
    @Test
    public void math() {
        // 在使用时不需要new一个对象，只要Math.方法，就可以使用
        // Math方法都为static类型，通过Math类可以在主函数中直接调用

        // 例如求90°的正弦值：
        System.out.println(Math.sin(PI / 2));
        // 求两个数的较大值
        System.out.println(Math.max(12.5, 18.6));
        // 得到一个随机数，本质上使用了Random类
        System.out.println(Math.random());
    }

    // Random类是随机数类，使用时间戳来控制生成随机数的过程
    @Test
    public void random() {
        // 使用之前需要先new一个对象
        Random random = new Random();

        int random1 = random.nextInt();
        System.out.println(random1);

        // 设定界限的随机数，返回一个伪随机、均匀分布的 int 值
        // 介于 0（包括）和指定值（不包括）之间，取自该随机数生成器的序列
        int random2 = random.nextInt(10);
        System.out.println(random2);

        // ThreadLocalRandom是Random的子类，相对于Random的功能更全面和高效
        // 同时线程安全，在使用的过程中也与时间戳有关，用于并发操作
        // current表示当前线程
        // 此方法可以指定随机数的取值范围
        // 返回的值可以包括起点，但不包括终点，即左闭右开，[origin, bound)
        double i = ThreadLocalRandom.current().nextDouble(0.6, 1.5);
        System.out.println(i);
    }

    // Date是一个非常简单、基础、底层的的类，已经过时(Deprecated)
    // 但有很多用法是根据这个基础类来进行衍生，是一个对于时间非常重要的类
    @Test
    public void date() {
        Date date = new Date();
        // 调出系统时间
        System.out.println(date);
        // 使用getTime()方法可以获取当前时间戳
        System.out.println(date.getTime());
        // 常见的是字符串转换为时间，自动调用toString
        // 以毫秒计算，因此当使用时如果结果为1970年，则需要乘以1000
        System.out.println(new Date(1664899649283L));
    }

    // DateFormat和SimpleDateFormat是Date的衍生类
    // DateFormat用于对时间的格式化，使用过程中需要使用它的子类SimpleDateFormat
    @Test
    public void dateFormat() {
        Date date = new Date();
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        System.out.println(dateFormat.format(date));
    }

    // Calendar类是对日期和时间进行控制的
    @Test
    public void calendar() {
        // 在这个类中有许多的字段，可以直接当作工具类进行使用
        // 在社交软件中我们可以用这个来计算年龄
        // Calendar类是一个抽象类，因此不能new
        // 使用时可以使用getInstance()这样一个静态方法来创建对象
        Calendar calendar = Calendar.getInstance();
        // 可以使用get来获取对象里面的特定数据，并对其进行如数学运算的操作
        int year = calendar.get(Calendar.YEAR);
        System.out.println(year);
        // 可以使用set来设置时间，或使用add来对对象中的时间数据进行操作
    }

    // System类代表系统，系统级的很多属性和控制方法都放置在该类的内部
    @Test
    public void system() {
        // 获取时间戳
        System.out.println(System.currentTimeMillis());
    }
}

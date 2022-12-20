package com.google.string;

import org.junit.Test;

public class StringTest {
    /*
    字符串广泛应用在编程中，在 Java 中字符串属于对象，
    Java 提供了String类来创建和操作字符串
    String创建的字符串存储在公共池中，而new创建的字符串对象在堆上
    String类是不可改变的，所以你一旦创建了String对象，那它的值就无法改变了
     */
    /*
    假设有两个String，str1和str2
    在创建这两个`String`类的时候计算机会给他们各自一块内存
    当执行str1 = str1 + str2时，按逻辑是str1的内存内容被修改，内存只占了两块
    但实际情况是创建了第三块内存str1(str1+str2)
     */
    @Test
    public void test1() {
        // StringBuilder和StringBuffer类可以解决对字符串进行修改
        // 但StringBuffer涉及不是线程安全的，使用情况较少

        // 创建单个String类是创建单个对象，创建多个就是创建多个对象
        // StringBuilder是对对象进行操作，一直操作的都是一个对象
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Hello");
        stringBuilder.append("world");
        System.out.println(stringBuilder);
        stringBuilder.reverse();
        System.out.println(stringBuilder);
    }

    @Test
    public void test2() {
        // trimToSize()方法用于最小化用于字符的存储，也就是去空
        StringBuilder stringBuilder = new StringBuilder();
        // 可以使用对象.方法.方法的方式添加字符串
        stringBuilder.append("Hello").append(" String").append("builder");
        System.out.println(stringBuilder);

        // 对操作字符串时候索要的多余的空间进行消灭
        stringBuilder.trimToSize();
        System.out.println(stringBuilder);
    }
}

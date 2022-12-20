package com.google.file;

import org.junit.Test;

import java.io.File;


public class FileTest {

    // 绝对路径与相对路径
    // Win中是从盘符开始，使用"/"一层一层向下
    // 在编译器中表示路径要有两个斜杠，如："D:\\DevTools\\Git\\bin"
    // 在编译语言中"\"是转译符号，要让编译器识别"\"必须要写两个斜杠
    // Linux中是从根目录"/"开始，使用"/"一层一层向下

    @Test
    public void test1() {
        // 使用File类new一个对象时一定要使用绝对路径
        // 这个类中不仅包含了对文件的操作，还有对文件夹的操作
        // 文件流中最重要的是对文件路径的了解，调用文件流中的类
        File dir = new File("D:\\IDEA\\Projects\\java_abv\\src\\com\\google\\file\\material");

        // 得到上一层文件夹
        System.out.println(dir.getParent());
        // 判断是否为文件
        System.out.println(dir.isFile());
        // 得到字节长度
        System.out.println(dir.length());
        // 输出文件夹下所有文件与文件夹的名字
        String[] list = dir.list();
        // foreach语句
        for (String name :
                list) {
            System.out.println(name);
        }
    }

    @Test
    public void test2() {

        File file = new File("D:\\IDEA\\Projects\\java_abv\\src\\com\\google\\file\\material\\1.txt");

        // 得到上一层文件夹
        System.out.println(file.getParent());
        // 判断是否为文件
        System.out.println(file.isFile());
        // 得到字节长度
        System.out.println(file.length());
    }
}

package com.google.io;

import org.junit.Test;

import java.io.*;

public class IoStreamTest {

    // 读数据，数据源数据流到了程序中，对于程序是input，对于数据源是output
    // 是程序在读取数据源中的数据
    // 写数据，程序数据流到了数据源中，对于程序是output，对于数据源是input
    // 是程序在往数据源中写数据
    // 上面两种方式都是站在程序的角度上对数据源的操作，参照物是程序，因为我们操纵的就是程序

    // 俩亲爹：InputStream和OutPutStream
    // I/O流就是用来管理各种数据的输入和输出
    // 在这个包中有两个终极静态父类，InputStream和OutputStream
    // 这两个类提供和数据操作相关的方法，后有其他不同类型的数据控制子类来继承这两个类
    // InputStream专门管理数据的读相关操作
    // OutputStream专门管理数据的写相关操作
    // 使用IO流时必须抛出IOException异常，以防出错

    // FileInputStream字节流读取文件
    @Test
    public void fileInputStream() throws IOException {
        FileInputStream fileInputStream = new FileInputStream("src/com/google/io/source/1.txt");

        int by = 0;
        // 当读出的值为-1时候，则已经读到最大了，此时停止循环
        // .read()方法是按照字节的二进制形式一个一个读取的
        // 尽量在判断语句中就给by赋值，如果在循环语句中再赋值，会多循环一次，多读一位乱码
        while ((by = fileInputStream.read()) != -1) {
            // 如果不想看到ASCII码，就需要将它转换成(char)类型
            // 读取时候每读一个字符就输出一次，则应该把println的ln去掉
            // 去掉ln之后换行也是会被读取到的
            System.out.print((char)by);
        }

        // 加上.close()关闭程序，防止过多占用内存
        fileInputStream.close();
    }

    // FileOutputStream字节流写入文件
    @Test
    public void fileOutputStream() throws IOException {
        // 文件输出流会自动创建不存在的文件用于写入
        FileOutputStream fileOutputStream = new FileOutputStream("src/com/google/io/source/2.txt");

        // .getBytes()方法将字符串转换为字节数组，方便读入
        byte[] bytes = "HelloWorld".getBytes();
        // 输出看看效果（可以省略）
        for (int i = 0; i < bytes.length; i++) {
            // 此处删去ln，取消每读一个字节自动换行
            System.out.print((char)bytes[i]);
        }

        // .write()方法读取整个字节数组，不需要使用for循环也能全部写入文件
        fileOutputStream.write(bytes);

        // 加上.close()关闭程序，防止过多占用内存
        fileOutputStream.close();
    }

    // buff缓冲复制文件
    @Test
    public void buff() throws IOException {
        // buff就相当于缓冲，搬箱输入与输出，复制文件就不需要一个字节一个字节传了
        FileInputStream fileInputStream = new FileInputStream("src/com/google/io/source/1.png");
        FileOutputStream fileOutputStream = new FileOutputStream("src/com/google/io/source/2.png");

        // 控制每次读写文件的字节，类似搬箱，设置为一次1024KB
        byte[] buff = new byte[1024];

        // 读取与复制
        int by;

        while ((by = fileInputStream.read(buff)) != -1) {
            fileOutputStream.write(buff);
        }

        // 加上.close()关闭程序，防止过多占用内存
        fileInputStream.close();
        fileOutputStream.close();
    }

    // buffered字节缓冲流、装饰设计模式
    @Test
    public void buffered() throws IOException {
        // Buffer类是java.nio的构造基础，一个Buffer对象是固定数量的数据的容器
        // 其作用是一个存储器或者分段运输区，数据可被存储并在之后用于检索
        // BufferInputStream源码中这是缓冲输入流一次性读取8192个字节

        // 装饰设计模式，又名包装(Wrapper)模式
        // 装饰者模式以对客户端透明的方式扩展对象的功能，是继承关系的一个替代方案
        // 以复制文件函数为例，在这里不能直接将path路径传入到BufferedInputStream
        // 而是使用了文件输入输出流创建的对象。
        // BufferedInputStream中接收的是对象而不是字符串，这就叫装饰设计模式
        FileInputStream fileInputStream = new FileInputStream("src/com/google/io/source/1.png");
        FileOutputStream fileOutputStream = new FileOutputStream("src/com/google/io/source/2.png");
        BufferedInputStream bufferedInputStream = new BufferedInputStream(fileInputStream);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream);

        int by;
        while ((by = bufferedInputStream.read()) != -1) {
            bufferedOutputStream.write(by);
        }

        bufferedInputStream.close();
        bufferedOutputStream.close();
    }

    // FileReader和FileWriter，俩专门来搞定txt文件
    // 这两种流非常适合用来读取文本文件一类的文件，不需要再设置字节数组来进行读取
    // 在写文件的时候也不需要获取字符串的字节流
    // FileReader类从InputStreamReader类继承而来，该类按字符读取流中数据
    @Test
    public void fileReader() throws IOException {
        FileReader fileReader = new FileReader("src/com/google/io/source/1.txt");

        // 使用时不需要设置缓冲
        int by;
        while ((by = fileReader.read()) != -1) {
            System.out.print((char)by);
        }

        fileReader.close();
    }

    // FileWriter类从OutputStreamWriter类继承而来，该类按字符向流中写入数据
    @Test
    public void fileWriter() throws IOException {
        FileWriter fileWriter = new FileWriter("src/com/google/io/source/3.txt");

        // 使用时不需要设置缓冲
        fileWriter.write("HelloFileWriter");

        fileWriter.close();
    }

    // BufferedReader、BufferedWriter
    // BufferedReader可以直接读取一行的信息
    @Test
    public void bufferedReader() throws IOException {
        // 装饰设计模式
        BufferedReader bufferedReader = new BufferedReader(new FileReader("src/com/google/io/source/1.txt"));

        String str;
        // Buffer可以使用.readLine()方法读，而且在输出的时候是一行一行输出
        while ((str = bufferedReader.readLine()) != null) {
            // 因为是一行一行读，所以此处不用删去ln
            System.out.println(str);
        }

        bufferedReader.close();
    }

    // BufferedWriter写入文件
    @Test
    public void bufferedWriter() throws IOException {
        BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter("src/com/google/io/source/4.txt"));

        bufferedWriter.write("Hello");
        // 使用.newLine()方法实现换行，系统之间的换行符可能不同，因此为了兼容性，不能使用\n来换行
        bufferedWriter.newLine();
        bufferedWriter.write("BufferedWriter");

        // 要注意把流关闭，特别是写文件的时候，如果没关，写出来的文件中不会有内容显示
        bufferedWriter.close();
    }

}

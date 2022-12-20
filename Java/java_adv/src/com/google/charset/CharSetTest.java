package com.google.charset;

import org.junit.Test;

import java.io.IOException;
import java.util.Arrays;

public class CharSetTest {
    /*Java NIO - File
    Java NIO中的Files类（java.nio.file.Files）提供了多种操作文件系统中文件的方法
    Java Files类是Java 1.7中引入的，是java.nio.file包的一部分
     */
    /*
     任何数据都存在两种状态：
     Encode编码、Decode解码
     想要读取数据的模式，需要进行解码，即二进制通过解码变成明文
     */
    // 使用getBytes方法可以获得字符串编码，使用Charset类能够创建编码器和解码器
    @Test
    public void charSet() {
        byte[] bytes = "HelloCharSet".getBytes();
        System.out.println(Arrays.toString(bytes));
    }
}

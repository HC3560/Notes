package com.google.charset;

import org.apache.commons.io.FileUtils;

import java.io.File;
import java.io.IOException;
import java.util.Collection;

public class GbkToUtf8 {
    private static String sourcePath = "C:/Users/lenovo/Desktop/src";// 文件夹源路径
    private static String destPath = sourcePath + "_copy";

    public static void main(String[] args) throws IOException {
        File sourceDirectory = new File(sourcePath);
        File destDirectory = new File(destPath);
        if (!sourceDirectory.isDirectory()) {
            return;
        }
        // 获取文件夹中的所有.java文件，包括所有子级文件夹中的文件
        Collection<File> files = FileUtils.listFiles(sourceDirectory, new String[]{"java", "JAVA"}, true);
        for (File file : files) {
            String absolutePath = file.getAbsolutePath();
            String newDir = absolutePath.replace(sourceDirectory.getName(), destDirectory.getName());
            // 把单个文件从gbk编码转化到utf-8编码，生成新文件，可以自动创建父级目录
            FileUtils.writeLines(new File(newDir), "UTF-8", FileUtils.readLines(file, "GBK"));
        }
        // 删除源目录,子文件都删除
        FileUtils.deleteQuietly(sourceDirectory);
        // 把生成文件目录重命名成源目录名
        destDirectory.renameTo(new File(sourceDirectory.getAbsolutePath()));
        System.out.println("success");
    }
}

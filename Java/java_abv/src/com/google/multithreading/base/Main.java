package com.google.multithreading.base;

public class Main {
    public static void main(String[] args) {
        DemoThread demoThread = new DemoThread();
//        // 如果用.run()的话会出现问题，死循环一直在跑
//        demoThread.run();
        // 用.start()可以多开启一个线程，然后去自动调用.run()，再继续进行当前线程
        demoThread.start();
        while (true) {
            System.out.println("MainThread");
        }
        // 显示的结果是两个死循环的内容在交替执行
    }
}

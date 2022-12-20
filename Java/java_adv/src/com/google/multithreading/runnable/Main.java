package com.google.multithreading.runnable;

public class Main {
    public static void main(String[] args) {
        //使用Runnable接口来创建线程，要使用其方法，必须创建Thread对象实现
        // 此时，demoThread没有继承Thread
        DemoThread demoThread = new DemoThread();
//        Thread thread = new Thread(demoThread);
//        thread.start();
        // 可以使用以下方式简化代码
        new Thread(demoThread, "demoThread").start();

//        // 用匿名内部类的方式创建多线程
//        new Thread(new Runnable() {
//            @Override
//            public void run() {
//                while (true) {
//                    System.out.println(Thread.currentThread().getName());
//                }
//            }
//        }).start();

        // 匿名内部类方式可以替换为lambda表达式创建多线程
        // lambda表达式在JDK7之后的版本得到支持
        new Thread(() -> {
            while (true) {
                System.out.println(Thread.currentThread().getName());
            }
        }).start();

        while (true) {
            System.out.println("MainThread");
        }
    }
}

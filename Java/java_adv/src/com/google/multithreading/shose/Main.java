package com.google.multithreading.shose;

public class Main {
    public static void main(String[] args) {
        DemoThread demoThread = new DemoThread();
        Thread daemonThread = new Thread(new DaemonThread());
        // 将daemonThread设置为守护线程
        daemonThread.setDaemon(true);
        // 开启守护线程
        daemonThread.start();
        // 判断是否为守护线程，并输出
        System.out.println(daemonThread.isDaemon());

        // 有三个人来抢，一个线程就是一个用户，所以这就有三个名称不一样的线程名
        new Thread(demoThread, "Tom").start();
        new Thread(demoThread, "Jerry").start();
        new Thread(demoThread, "HC").start();
    }
}

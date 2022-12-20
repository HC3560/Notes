package com.google.multithreading.runnable;

//前面我们创建线程单继承了Thread，无法继承别的类，因为Java不支持多继承
//使用Runnable接口来创建线程
public class DemoThread implements Runnable{
    @Override
    public void run() {
        while (true) {
            // 可以使用以下方法来获取线程的名字
            // .currentThread()是指当前线程，.getName()是指获取名字
            System.out.println("DemoThread..." + Thread.currentThread().getName());
        }
    }
}

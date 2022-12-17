package com.google.multithreading.runnable;

// yield线程让步
public class Yield {
    public static void main(String[] args) {
        Thread thread_1 = new Thread(new MaxPriorityThread(), "1");
        Thread thread_2 = new Thread(new MinPriorityThread(), "2");

        // .start()的语句先后会影响第一时间开始运行的线程次序
        // 有时程序运行的太快了，以至于还没打印出让步输出，thread_1已经输出完毕了
        thread_2.start();
        thread_1.start();
    }
}

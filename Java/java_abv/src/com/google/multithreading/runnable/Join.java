package com.google.multithreading.runnable;

// join线程插队
public class Join {
    public static void main(String[] args) throws InterruptedException {
        // .join()方法可以抢占优先级，实现插队
        Thread thread = new Thread(new MaxPriorityThread(), "1");

        thread.start();

        // main线程
        for (int i = 1; i < 8; i++) {
            System.out.println(Thread.currentThread().getName());
            // 线程插队
            if (i == 3) {
                thread.join();
            }
        }
    }
}

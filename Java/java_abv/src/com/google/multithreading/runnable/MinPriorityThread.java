package com.google.multithreading.runnable;

public class MinPriorityThread implements Runnable {
    @Override
    public void run() {
        for (int i = 0; i < 3; i++) {

            // 线程让步
            if (i == 1) {
                System.out.println("Thread_"
                        + Thread.currentThread().getName()
                        + "...线程开始让步");
                Thread.yield();
            }

            System.out.println(Thread.currentThread().getName());
        }
    }
}

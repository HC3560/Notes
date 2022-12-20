package com.google.multithreading.runnable;

public class MaxPriorityThread implements Runnable {
    @Override
    public void run() {
        for (int i = 0; i < 3; i++) {
//            // 使用.sleep()方法休眠后，thread线程插队时，会等待1000毫秒再打印出结果
//            try {
//                Thread.sleep(1000);
//            } catch (InterruptedException e) {
//                e.printStackTrace();
//            }
            System.out.println(Thread.currentThread().getName());
        }
    }
}

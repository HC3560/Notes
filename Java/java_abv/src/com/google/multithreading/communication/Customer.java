package com.google.multithreading.communication;

public class Customer extends Thread {
    private Commodity commodity;

    // 构造方法
    public Customer(Commodity commodity) {
        this.commodity = commodity;
    }

    @Override
    public void run() {
        while (true) {
            // 创建一个同步锁对象，确保线程同步且安全
            synchronized (commodity) {
                // 当商品售卖光，消费者等待，并通知生产者生产
                if (commodity.isStatus == false) {
                    // .wait()实现消费者等待
                    try {
                        commodity.wait();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }

                // 模拟卖光了（实际应该有计数的过程）
                commodity.isStatus = false;
                System.out.println(Thread.currentThread().getName() + "买光了，等待生产者生产...");
                // .notify()实现唤醒生产者生产，此方法用于唤醒一个在此对象监视器上等待的线程
                commodity.notify();

                // .notifyAll()方法用于唤醒在该对象上等待的所有线程
            }
        }
    }
}

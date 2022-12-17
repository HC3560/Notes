package com.google.multithreading.communication;

public class Producer extends Thread {
    Commodity commodity;

    public Producer(Commodity commodity) {
        this.commodity = commodity;
    }

    @Override
    public void run() {
        while (true) {
            synchronized (commodity) {
                // 当商品没有售卖光，生产者等待，并通知消费者继续买
                if (commodity.isStatus == true) {
                    // .wait()实现生产者等待，此方法可以使一个线程在对象监视器上等待
                    try {
                        commodity.wait();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }

                // 模拟生产好了（实际应该有计数的过程）
                commodity.isStatus = true;
                System.out.println(Thread.currentThread().getName() + "生产完了，等待消费者购买...");
                // .notify()实现唤醒消费者购买，此方法用于唤醒一个在此对象监视器上等待的线程
                commodity.notify();
            }
        }
    }
}

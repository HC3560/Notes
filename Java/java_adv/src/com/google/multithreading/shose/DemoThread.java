package com.google.multithreading.shose;

import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class DemoThread implements Runnable {
    // 总共有十双鞋
    private int nike = 10;
//    Object lock = new Object();

    @Override
    public void run() {
        while (true) {
            // 解决线程不同步导致的不安全问题要用到线程同步，及时更新数据
            // 即创建一个synchronized锁对象，同步数据
            // 如何理解锁呢？当用户一抢到第一双鞋时，锁住第一双鞋，其它用户就无法抢了
            /*
            synchronized (lock) {
                if (nike > 0) {

                    // 现实情况中，抢鞋肯定是有延时操作的
                    // 如果我们用.sleep()设置每次抢鞋之间的间隙，会产生了一个问题
                    // 就是线程不同步导致线程不安全，两个人同时抢了某双鞋

                    try {
                        Thread.sleep(500);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    System.out.println(Thread.currentThread().getName()
                            + "抢到了第"
                            + (nike--)
                            + "双鞋");
                }
            }
            */
            shoeCatch();
        }
    }

    // synchronized可以创建成一个同步方法，将同步代码块抽离出来
    // 同步方法
    public synchronized void shoeCatch() {
        // 同步代码块
        if (nike > 0) {
            try {
                Thread.sleep(500);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            System.out.println(Thread.currentThread().getName()
                    + "抢到了第"
                    + (nike--)
                    + "双鞋");
        }
    }

    // Lock与ReentrantLock同步锁
    /*
    // synchronized不需要用户去手动释放锁，代码执行完后系统会自动让线程释放对锁的占用
    // reentrantLock则需要用户去手动释放锁，如果没有手动释放锁，就可能导致死锁现象
    Lock reentrantLock = new ReentrantLock();

    @Override
    public void run() {
        while (true) {
            reentrantLock.lock();
            // 释放reentrantLock锁，try&catch要放在if外面
            // 最后finally调用reentrantLock.unlock()方法
            try {
                if (nike > 0) {
                    Thread.sleep(500);
                    System.out.println(Thread.currentThread().getName()
                            + "抢到了第"
                            + (nike--)
                            + "双鞋");
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                reentrantLock.unlock();
            }
        }
    }
    */

    // 浅谈synchronized和Lock的区别
    /*
    JDK1.5中，synchronized是重量级操作，性能低效，Lock性能高，更稳定
    JDK1.6中，synchronized加入很多优化，更加稳定了
    锁的释放：
    synchronized以获取锁的线程执行完同步代码，如果线程执行发生异常，jvm会让线程释放锁
    Lock在finally中必须释放锁，不然容易造成线程死锁
    死锁产生：
    synchronized在发生异常时候会自动释放占有的锁，不会出现死锁
    Lock发生异常时候，不会主动释放，必须手动unlock来释放锁，可能引起死锁的发生
    用法：
    synchronized在需要同步的对象中加入，可以加在方法上，也可以加在特定代码块中，括号中表示需要锁的对象
    Lock一般使用ReentrantLock类做为锁，通过lock()加锁和unlock()解锁，在finally中写unlock()防止死锁
     */

}

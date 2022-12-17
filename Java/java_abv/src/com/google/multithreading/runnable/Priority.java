package com.google.multithreading.runnable;

// 每一个线程的优先使用权都是系统随机分配的，人人平等，谁先分配到谁先用
// 可以设置优先级赋予某一个线程拥有至高适用权，最高为10，最低为1，默认为5，Java可以抢占CPU
// 线程1-10中，main()主线程的value =  5
// 创建MaxPriorityThread类和MinPriorityThread来查看线程执行顺序
public class Priority {
    public static void main(String[] args) {
        for (int i = 0; i < 3; i++) {
            System.out.println(Thread.currentThread().getName());
        }
        Thread maxThread = new Thread(new MaxPriorityThread(), "maxThread");
        Thread minThread = new Thread(new MinPriorityThread(), "minThread");

        // 在.start()前面加优先级.setPriority()方法即可越权
        // 但有时会发现优先级没有调换过来，是操作系统的原因，程序执行太快了没有反应过来，还没调度程序就结束了
        // .MAX_PRIORITY为线程优先级常量，定义在Java内部
        maxThread.setPriority(Thread.MAX_PRIORITY);

        maxThread.start();
        minThread.start();
    }
}

package com.google.multithreading.shose;

// 后台、守护进程
// 与进程同理，前台线程为用户提供服务，也有后台线程为前台线程提供的服务进行保护或者守护
public class DaemonThread implements Runnable{
    @Override
    public void run() {
        System.out.println("守护线程...");
    }
}

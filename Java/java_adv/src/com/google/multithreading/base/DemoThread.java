package com.google.multithreading.base;

public class DemoThread extends Thread{
    @Override
    public void run() {
       while (true) {
           System.out.println("DemoThread");
       }
    }
}

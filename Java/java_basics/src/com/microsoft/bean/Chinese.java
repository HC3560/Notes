package com.microsoft.bean;

// 实现
// 类中使用抽象的方法需要重写
// 接口：实现
public class Chinese implements Human {
    @Override
    public void eat() {
        System.out.println("吃中餐");
    }

    @Override
    public void run() {
        System.out.println("小跑");
    }
}

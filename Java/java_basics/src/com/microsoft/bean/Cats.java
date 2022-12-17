package com.microsoft.bean;

import lombok.ToString;

public class Cats extends Animal {
    @Override
    public void barking() {
        // 方法进行抽象后，子类中的方法必须重写，不能再使用super进行啃老
//        // 超级（父类的东西）
//        super.barking();
        System.out.println("喵喵喵~~~");
    }
}

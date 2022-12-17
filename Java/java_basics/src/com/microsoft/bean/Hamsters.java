package com.microsoft.bean;

// 当一个类继承一个抽象类的时候，此时，该子类必须重写父类中所有的抽象方法
public class Hamsters extends Animal {
    // 方法进行抽象后，此方法必须在所有继承Animal的子类中进行重写，否则就会报错
    @Override
    public void barking() {
        System.out.println("叽叽叽");
    }
}

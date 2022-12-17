package com.microsoft.bean;

public class Earth {
    // 单例设计模式
    private static final Earth earthInstance = new Earth();

    // Earth只有一个，因此将Earth设置为私有
    // 此时在Application中，不能再重新new一个Earth
    // 必须使用getEarthInstance
    private Earth() {

    }

    public static Earth getEarthInstance() {
        return earthInstance;
    }

    public void hello() {
        System.out.println("hello!");
    }

    // 内部类，可以使用上一层类中创建的变量（很少用，不好维护，一个类一般是一个单独文件）
    // 后面会学到匿名内部类，那个很常用
    // 还有方法内部类，在方法当中class一个类，这个类只能在此方法里用，意义不大
    class Sun{

    }
}
